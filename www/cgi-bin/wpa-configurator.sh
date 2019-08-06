#!/bin/bash
cat << EOF
Content-Type: text/html

<html>  
<head>  

<title>wpa configurator</title>  
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="/styles/wpa_base.css">

</head>  
<body>


<h1>Wi-Fi networks</h1>
<div id="success_msg" class="success">Данные успешно занесены!</div>
<div id="error_msg" class="error"></div>
EOF
echo "<div id='related_links'>"
echo "<ul>"
bash wlan-scanner.sh
echo "</ul>"
echo "</div>"
cat << EOF 

<script src="/js/wpa-configurator.js"></script>

</body>  
</html>  
EOF

