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

#!/bin/sh

read params

./notifyThenKill.sh $(basename -- "$0") $$ $params

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

	if [ $port = "E1" ] || [ $port = "E2" ] || [ $port = "E3" ] || [ $port = "E4" ]
	then
		encoder=${device%\?*}
		invert=${device#*\?}
		ports_config=$ports_config" "$encoder" "$invert
		echo "		<$encoder invert=\"$invert\" />" >> $model_config
	else
		ports_config=$ports_config" "$device
		echo "		<$device />" >> $model_config
	fi

	echo "	</$port>" >> $model_config
done


sed -i "1c${ports_config}" $current_params


cat >> $model_config << EOF
<!-- On-board sensors. -->
	<!-- If model is not using those, they can be turned off to save system resources, by deleting them or
		 commenting them out. -->
	<accelerometer />
	<gyroscope />

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

