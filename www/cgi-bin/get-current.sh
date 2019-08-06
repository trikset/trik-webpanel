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

cat << EOF
HTTP/1.1 200 OK
Connection: close
Content-Type: text/plain, charset=us-ascii
Content-lenght: 10

EOF

if [ ! -e ./current-params ]; then
    echo "angularServomotor angularServomotor angularServomotor angularServomotor angularServomotor manipulatorServomotor sharpGP2Sensor sharpGP2Sensor touchSensor touchSensor lightSensor lightSensor sonarSensor sonarSensor volumeSensor encoder95 true encoder95 true encoder95 true encoder95 true motor350 motor350 motor350 motor350 lineSensor photo" > current-params
    echo "ON 50 2G ON 95 2000" >> current-params
    echo "true" >> current-params
fi

response=$(cat current-params)
echo  "$response"
