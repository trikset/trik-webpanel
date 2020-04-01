#!/bin/bash
#   Copyright 2020 Andrei Khodko and Cybertech Labs Co Ltd
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

model_config=model-config.xml
current_params=current-params

read -r params

./notifyThenKill.sh "$(basename -- "$0")" $$ "$params"

sed -i "4c${params}" "$current_params"

sed -i "/<photo /c <photo src=\"/dev/video${params}\"/>" "$model_config"

cp "$model_config" "$(realpath /home/root/trik/model-config.xml)"

echo "HTTP/1.1 201 Modified"

killall trikGui
