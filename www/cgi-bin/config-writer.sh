#!/bin/bash
#Copyright 2018 - 2019 Andrei Khodko
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License 

read -r params

./notifyThenKill.sh "$(basename -- "$0")" $$ "$params"

# shellcheck disable=SC2086
set $params

Args="$*"

model_config=model-config.xml
rm $model_config

current_params=current-params

cat > $model_config << EOF
<config>
	<initScript>
	</initScript>

EOF


ports_config=""

for i in $Args
do
	port=${i%=*}
	device=${i#*=}

	echo "	<$port>" >> $model_config
	
	case $port in
		"E"[0-9]) #E1 E2 E3 E4
			encoder=${device%\?*}
			invert=${device#*\?}
			device="$encoder $invert"
			echo "		<$encoder invert=\"$invert\" />" >> $model_config
			;;
		"video"[0-9]) #video1 video2
			if [[ "$device" = "edgeLineSensor" ]]
			then
				echo "		<lineSensor script=\"/etc/init.d/edge-line-sensor-ov7670\" />" >> $model_config
			else
				echo "		<$device />" >> $model_config
			fi
			;;
	  "D3")
	    echo "		<!-- <$device /> -->" >> $model_config
	    ;;
		*)
			echo "		<$device />" >> $model_config
			;;
	esac

  ports_config=$ports_config" "$device
	echo "	</$port>" >> $model_config
done


sed -i "1c${ports_config}" $current_params

# $1: is_active; $2: name;
add_mems() {
	if [[ "$1" = "0" ]]; then
	  echo "	<!-- $2 -->" >> $model_config
	else
	  echo "	$2" >> $model_config
  fi
}

add_mems "$(lsmod | grep -c mma845x)" "<accelerometer />"
add_mems "$(lsmod | grep -c l3g42xxd)" "<gyroscope />"


cat >> $model_config << EOF
	<!-- Optional modules -->
	<gamepad />
	<mailbox />

	<!-- Example of custom FIFO sensor -->
	<!--
	<soundSensor>
		<fifo />
	</soundSensor>
	-->
</config>
EOF

cp $model_config /home/root/trik/

echo "HTTP/1.1 201 Modified"

killall trikGui
