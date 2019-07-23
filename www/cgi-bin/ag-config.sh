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

ACCELEROMETER_PATH=/sys/class/misc/mma845x/
GYROSCOPE_PATH=/sys/class/misc/l3g42xxd/
INIT_SCRIPT=/etc/default/trik/smth.sh # Nota bene there is no any script

# Set device parameters in $INIT_SCRIPT
# $1: device
# $2: state value; $3: frequency value; $4: range value;
set_params() {
    sed -i "/${1}_state=/c ${1}_state=${2}" $INIT_SCRIPT
    sed -i "/${1}_frequency=/c ${1}_frequency=${3}" $INIT_SCRIPT
    sed -i "/${1}_range=/c ${1}_range=${4}" $INIT_SCRIPT
}

read params

./notifyThenKill.sh $(basename -- "$0") $$ $params

set $params

# a_state a_freq a_range g_state g_freq g_range
sed -i "2c${1} ${2} ${3} ${4} ${5} ${6}" current-params

if [[ $1 = "ON" ]]; then
	modprobe mma845x
	frequency=0
	range=0
	case $2 in 
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

	case $3 in 
		2G)	range=0
			;;
		4G)	range=1
			;;
		8G)	range=2
			;;
		*)
			;;
	esac

    set_params "accelerometer" true $frequency $range
	echo $frequency > ${ACCELEROMETER_PATH}odr_selection
	echo $range > ${ACCELEROMETER_PATH}fs_selection
else
    set_params "accelerometer" false 0 0
	rmmod mma845x
fi



if [[ $4 = "ON" ]]; then
	modprobe l3g42xxd
	modprobe l3g42xxd_spi
	frequency=0
	range=0
	case $5 in 
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

	case $6 in 
		250)	range=0
			;;
		500)	range=1
			;;
		2000)	range=2
			;;
		*)
			;;
	esac

    set_params "gyroscope" true $frequency $range
	echo $frequency > ${GYROSCOPE_PATH}odr_selection
	echo $range > ${GYROSCOPE_PATH}fs_selection
else
    set_params "gyroscope" false 0 0
	rmmod l3g42xxd_spi
	rmmod l3g42xxd
fi

echo "HTTP/1.1 200 Modified"
