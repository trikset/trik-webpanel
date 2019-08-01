#!/bin/bash

# This is the special code so we need to strange quoting
# shellcheck disable=SC1078 disable=SC1079 disable=SC2026
iwlist wlan0 scan | awk '
BEGIN { FS=":"; OFS=""; ORS="";}
/Encryption key/ { encrypted=$2; }
/ESSID/ { 
    essid=substr($2, 2, length($2) - 2);
    if (encrypted == "off") {
        if (index(essid, "\\x00") == 0 && length(essid) > 0) {
            print "<li><a href='javascript:void\(0\)\;'>", essid, "</a></li>";
        }
    }
}
/WPA2 Version 1/ { 
    if (index(essid, "\\x00") == 0 && length(essid) > 0) {
        print "<li><a class='encrypted' href='javascript:void\(0\)\;'>", essid;
        print "<img class='lock' width='20px' src='/images/lock.png'/>";
        print "</a></li>"; 
    }
}
'
