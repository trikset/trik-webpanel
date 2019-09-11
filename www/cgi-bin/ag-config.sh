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

ACCELEROMETER_PATH=/sys/class/misc/mma845x/
GYROSCOPE_PATH=/sys/class/misc/l3g42xxd/
OPTIONS=/etc/default/trik/mems_options.sh
MODEL_CONFIG=/home/root/trik/model-config.xml

# Set device parameters in $OPTIONS
# $1: device
# $2: state value; $3: frequency value; $4: range value;
set_params() {
    sed -i "/${1}_state=/c ${1}_state=${2}" $OPTIONS
    sed -i "/${1}_freq=/c ${1}_freq=${3}" $OPTIONS
    sed -i "/${1}_range=/c ${1}_range=${4}" $OPTIONS
}

comment_mems() {
  sed -i "s/<$1 \/>/<\!-- <$1 \/> -->/" $MODEL_CONFIG
}

uncomment_mems() {
  sed -i "s/<\!-- <$1 \/> -->/<$1 \/>/" $MODEL_CONFIG
}
gyro_name="gyroscope"
accel_name="accelerometer"

# shellcheck disable=SC2086
set $params

# a_state a_freq a_range g_state g_freq g_range
sed -i "2c${1} ${2} ${3} ${4} ${5} ${6}" current-params

if [[ "$1" = "ON" ]]; then
	modprobe mma845x
	frequency=0
	range=0
	case "$2" in
		800) frequency=0
			;;
		400) frequency=1
			;;
		200) frequency=2
			;;
		100) frequency=3
			;;
		50) frequency=4
			;;
		12_5) frequency=5
			;;
		6_25) frequency=6
			;;
		1_56) frequency=7
			;;
		*)
			;;
	esac

	case "$3" in
		2G)	range=0
			;;
		4G)	range=1
			;;
		8G)	range=2
			;;
		*)
			;;
	esac

  uncomment_mems "$accel_name"
  set_params "accel" true $frequency $range
	echo $frequency > ${ACCELEROMETER_PATH}odr_selection
	echo $range > ${ACCELEROMETER_PATH}fs_selection
else
  comment_mems "$accel_name"
  set_params "accel" false 0 0
	rmmod mma845x
fi



if [[ "$4" = "ON" ]]; then
	modprobe l3g42xxd
	modprobe l3g42xxd_spi
	frequency=0
	range=0
	case "$5" in
		95) frequency=0
			;;
		190) frequency=1
			;;
		380) frequency=2
			;;
		760) frequency=3
			;;
		*)
			;;
	esac

	case "$6" in
		250)	range=0
			;;
		500)	range=1
			;;
		2000)	range=2
			;;
		*)
			;;
	esac

  uncomment_mems "$gyro_name"
  set_params "gyro" true $frequency $range
	echo $frequency > ${GYROSCOPE_PATH}odr_selection
	echo $range > ${GYROSCOPE_PATH}fs_selection
else
  comment_mems "$gyro_name"
  set_params "gyro" false 0 0
	rmmod l3g42xxd_spi
	rmmod l3g42xxd
fi

echo "HTTP/1.1 200 Modified"
