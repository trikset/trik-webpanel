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

set "$params"

settings=/home/root/trik/localSettings.ini

if ! grep -q hullNumber $settings ; then
    echo "hullNumber=" >> $settings
    echo "localIp=$(hostname -i)"
    echo "server=" >> $settings
    echo "serverPort=8889" >> $settings
fi

sed -i "/hullNumber=/c hullNumber=$1" $settings
sed -i "/server=/c server=$2" $settings

echo "HTTP/1.1 200 Modified"

killall trikGui
