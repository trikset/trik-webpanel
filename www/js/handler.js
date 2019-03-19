function sendNetworkData(paramString) {
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/cgi-bin/wpa-writer.sh");
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                successMessage.style.display = 'block';
            } else if (xhr.status == 422) {
                errorMessage.innerHTML = 'Passphrase must be 8..63 characters!';
                errorMessage.style.display = 'block';
            } else if (xhr.status == 500) {
                errorMessage.innerHTML = 'Internal server error. Please try again.';
                errorMessage.style.display = 'block';
            }
        }
    };

    xhr.send(paramString);
}

function handle() {
    successMessage.style.display = 'none';
    errorMessage.style.display = 'none';
    var essid = document.getElementById("essid").value;
    if (!essid) {
        errorMessage.innerHTML = 'Please enter wi-fi name';
        errorMessage.style.display = 'block';
        return;
    }
    var password = document.getElementById("password").value;
    var paramString = "essid=" + essid;
    if (password) {
        paramString += "&password=" + password;
    }
    sendNetworkData(paramString);
}

var successMessage = document.getElementById('success_msg');
var errorMessage = document.getElementById('error_msg');
