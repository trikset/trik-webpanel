#!/bin/bash
#Copyright 2020 Andrei Khodko and Cybertech Labs Co Ltd
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

./notifyThenKill.sh "$(basename -- "$0")" $$

IMAGES_PATH=/home/root/trik/images
FILE_NAME=all_images

rm -f $IMAGES_PATH/$FILE_NAME.tar.gz
tar -zcf $IMAGES_PATH/$FILE_NAME.tar.gz -C $IMAGES_PATH/ .
FILE_PATH=$IMAGES_PATH/$FILE_NAME.tar.gz
SIZE=${#FILE_PATH}

cat << EOF
HTTP/1.1 201 Modified
Connection: close
Content-Type: text/plain, charset=us-ascii
Content-length: ${SIZE}

EOF

echo "$FILE_PATH"
