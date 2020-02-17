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

settings=$(realpath /home/root/trik/localSettings.ini)

[ -r "$settings" ] || touch "$settings"

function setNew() {
   if ! grep -q "$1 *=" "$settings" ; then
     echo "$1=$2" >> "$settings"
   else
     sed -i "/$1 *=/c $1=$2" "$settings"
   fi
}
setNew hullNumber "$1"
setNew localIp "$(hostname -i)"
setNew server "$2"
setNew serverPort 8889

echo "HTTP/1.1 200 Modified"

killall trikGui
