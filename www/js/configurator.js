/* Copyright 2018 - 2019 Alexander Savelev, Andrei Khodko 

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License */

const app = new Vue({
    el: "#app",
    data: {
        // Top menu
        texts: window.translations,
        lang: "en",
        buttonChangeState: "false",
        buttonChangeLanguage: "",
        // Network
        essid: "",
        password: "",
        hostName: "",
        hullNumber: "",
        leaderIP: "",
        // Ports
        s1: "angularServomotor",
        s2: "angularServomotor",
        s3: "angularServomotor",
        s4: "angularServomotor",
        s5: "angularServomotor",
        s6: "manipulatorServomotor",
        a1: "sharpGP2Sensor",
        a2: "sharpGP2Sensor",
        a3: "touchSensor",
        a4: "touchSensor",
        a5: "lightSensor",
        a6: "lightSensor",
        d1: "sonarSensor",
        d2: "sonarSensor",
        d3: "volumeSensor",
        e1: "encoder95",
        e2: "encoder95",
        e3: "encoder95",
        e4: "encoder95",
        m1: "motor100",
        m2: "motor100",
        m3: "motor100",
        m4: "motor100",
        video1: "lineSensor",
        video2: "photo",
        getPhotoPort: "0",
        e1State: "false",
        e2State: "true",
        e3State: "false",
        e4State: "true",
        // Gyroscope and accelerometer
        gyroscope: "ON",
        accelerometer: "ON",
        gyroFreq: "95",
        gyroRange: "2000",
        accelFreq: "50",
        accelRange: "2G",
        // Console UART
        ttyS1: "ppp",
        // Video stream
        isStreamActive: false,
        // Success(Error) message
        dialogFlag: "waiting", // waiting ; fail ; success ; wrongInput
        xhrStatusPorts: "",
        xhrStatusPortsText: "",
        // Other (not front usage)
        downloadFilePath: "",
        scriptPath: "/cgi-bin/",
    },
    created: function () {
        var isRuLanguage = window.navigator.language.slice(0, 2).includes("ru");
        if (isRuLanguage) {
            this.changeLang("ru");
        }
        document.getElementById("streamImage").setAttribute('src',
            'http://' + window.location.hostname + ':8080/?action=stream');
        var logsFrame = document.getElementById("logsFrame");
        logsFrame.setAttribute("src", "http://" + window.location.hostname + "/logs/");

        var scriptsFrame = document.getElementById("scriptsFrame");
        scriptsFrame.setAttribute("src", "http://" + window.location.hostname + "/scripts/");

        var imagesFrame = document.getElementById("imagesFrame");
        imagesFrame.setAttribute("src", "http://" + window.location.hostname + "/trikimages/");

        var xhr = new XMLHttpRequest();
        xhr.open("GET", this.scriptPath + "get-current.sh", false);
        xhr.setRequestHeader("Content-Type", "text-plain");
        xhr.send();
        var ports;
        var ag;
        var ttyS1;
        if (!(xhr.status >= 200 && xhr.status < 300)) {
        } else {
            var text = xhr.responseText;
            text = text.split('\n');
            ports = text[0].split(' ');
            ag = text[1].split(' ');
            ttyS1 = text[2].split(' ');
        }
        this.s1 = ports[0];
        this.s2 = ports[1];
        this.s3 = ports[2];
        this.s4 = ports[3];
        this.s5 = ports[4];
        this.s6 = ports[5];
        this.a1 = ports[6];
        this.a2 = ports[7];
        this.a3 = ports[8];
        this.a4 = ports[9];
        this.a5 = ports[10];
        this.a6 = ports[11];
        this.d1 = ports[12];
        this.d2 = ports[13];
        this.d3 = ports[14];
        this.e1 = ports[15];
        this.e1State = ports[16];
        this.e2 = ports[17];
        this.e2State = ports[18];
        this.e3 = ports[19];
        this.e3State = ports[20];
        this.e4 = ports[21];
        this.e4State = ports[22];
        this.m1 = ports[23];
        this.m2 = ports[24];
        this.m3 = ports[25];
        this.m4 = ports[26];
        this.video1 = ports[27];
        this.video2 = ports[28];
        this.getPhotoPort = ports[29];
        this.gyroscope = ag[3];
        this.accelerometer = ag[0];
        this.gyroFreq = ag[4];
        this.gyroRange = ag[5];
        this.accelFreq = ag[1];
        this.accelRange = ag[2];
        this.ttyS1 = ttyS1[0];
    },
    methods: {
        refreshDialogFlag() {
            this.dialogFlag = "waiting";
        },

        defaultPostXHR(script, params, onSuccessFunction = Function
                       , onFailFunction= Function, onWaitFunction= Function) {
            const xhr = new XMLHttpRequest();
            xhr.open("POST", app.scriptPath + script);
            xhr.setRequestHeader('Content-Type', 'text-plain');
            onWaitFunction();
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    if ((xhr.status >= 200 && xhr.status < 300)) {
                        app.dialogFlag = "success";
                        onSuccessFunction();
                    } else {
                        app.xhrStatusPorts = xhr.status;
                        app.xhrStatusPortsText = xhr.statusText;
                        app.dialogFlag = "fail";
                        onFailFunction();
                    }
                }
            };

            xhr.send(params);
        },

        getPorts() {
            let params = `S1=${this.s1} S2=${this.s2} S3=${this.s3} S4=${this.s4} S5=${this.s5} S6=${this.s6} A1=${this.a1} A2=${this.a2} A3=${this.a3} A4=${this.a4} A5=${this.a5} A6=${this.a6} D1=${this.d1} D2=${this.d2} D3=${this.d3} E1=${this.e1}?${this.e1State} E2=${this.e2}?${this.e2State} E3=${this.e3}?${this.e3State} E4=${this.e4}?${this.e4State} M1=${this.m1} M2=${this.m2} M3=${this.m3} M4=${this.m4} video1=${this.video1} video2=${this.video2} getPhoto=${this.getPhotoPort} ttyS1=${this.ttyS1}\n`;

            app.defaultPostXHR("config-writer.sh", params);
        },

        changeLang(lang) {
            this.lang = lang;
        },

        getGA() {
            let params = `${this.accelerometer} ${this.accelFreq} ${this.accelRange} ${this.gyroscope} ${this.gyroFreq} ${this.gyroRange} \n`;
            app.defaultPostXHR("ag-config.sh", params);
        },

        defaultPorts() {
            this.s1 = "angularServomotor";
            this.s2 = "angularServomotor";
            this.s3 = "angularServomotor";
            this.s4 = "angularServomotor";
            this.s5 = "angularServomotor";
            this.s6 = "manipulatorServomotor";
            this.a1 = "sharpGP2Sensor";
            this.a2 = "sharpGP2Sensor";
            this.a3 = "touchSensor";
            this.a4 = "touchSensor";
            this.a5 = "lightSensor";
            this.a6 = "lightSensor";
            this.d1 = "sonarSensor";
            this.d2 = "sonarSensor";
            this.d3 = "volumeSensor";
            this.e1 = "encoder95";
            this.e2 = "encoder95";
            this.e3 = "encoder95";
            this.e4 = "encoder95";
            this.m1 = "motor100";
            this.m2 = "motor100";
            this.m3 = "motor100";
            this.m4 = "motor100";
            this.video1 = "lineSensor";
            this.video2 = "photo";
            this.getPhotoPort = "0";
            this.e1State = "false";
            this.e2State = "true";
            this.e3State = "false";
            this.e4State = "true";
        },

        defaultGA() {
            this.gyroscope = "ON";
            this.accelerometer = "ON";
            this.gyroFreq = "95";
            this.gyroRange = "2000";
            this.accelFreq = "50";
            this.accelRange = "2G";
        },

        editHostname() {
            let params = `${this.hostName} \n`;
            app.defaultPostXHR("rename.sh", params);
        },

        submitNewWiFi() {
            if (this.essid === "" || this.password.length < 8 || this.password.length > 63) {
                app.dialogFlag = "wrongInput";
                return;
            }

            var paramString = "essid=" + this.essid;
            paramString += "&password=" + this.password;

            var xhr = new XMLHttpRequest();
            xhr.open("post", "/cgi-bin/wpa-writer.sh");
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    if ((xhr.status >= 200 && xhr.status < 300)) {
                        app.dialogFlag = "success";
                    } else {
                        app.xhrStatusPorts = xhr.status;
                        app.xhrStatusPortsText = xhr.statusText;
                        app.dialogFlag = "fail";
                    }
                }
            };

            xhr.send(paramString);
            //this.essid = "";
            //this.password = "";
        },

        regShowLanguage() {
            if (window.innerWidth > 993) return "true";
            else if (this.buttonChangeState === "true") return "true";
            else return "false";
        },
	
        hullConfig() {
            if (this.hullNumber.search(/[\D]/) !== -1 ||
                this.leaderIP.search(/^([0-9]{1,3}[\.]){3}[0-9]{1,3}$/) === -1 )
                this.dialogFlag = "wrongInput";
            else {
                app.defaultPostXHR("hull-config.sh", `${this.hullNumber} ${this.leaderIP}\n`);
            }
        },

		clearInput() {
			this.essid = "";
			this.password = "";
			this.hostName = "";
			this.hullNumber = "";
			this.leaderIP = "";
		},

        downloadLogs: function () {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", this.scriptPath + "create-log.sh");
            xhr.setRequestHeader('Content-Type', 'text-plain');

            var link = document.getElementById('logsLink');
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    if ((xhr.status >= 200 && xhr.status < 300)) {
                        //If that was notify-sender
                        if (xhr.status == 204)
                            return;

                        app.downloadFilePath = xhr.responseText;
                        var filename =`${app.downloadFilePath}`.substr(`${app.downloadFilePath}`.lastIndexOf("/") + 1);

                        link.setAttribute('href', 'logs/' + filename);
                        link.setAttribute('download', filename);
                        link.removeAttribute('data-toggle');
                        link.click();
                    } else {
                        app.xhrStatusPorts = xhr.status;
                        app.xhrStatusPortsText = xhr.statusText;
                        link.setAttribute('data-toggle', 'modal');
                        link.click();
                    }
                }
            };

            xhr.send();
        },

        getSnapshot() {
            window.open('http://' + window.location.hostname + ':8080/?action=snapshot', '_blank');
        },

        downloadAllImages() {
            app.refreshDialogFlag();
            const xhr = new XMLHttpRequest();
            xhr.open("GET", this.scriptPath + "archive-images.sh");
            xhr.setRequestHeader("Content-Type", "text-plain");

            var link = document.getElementById("imagesLink");
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4) {
                    if ((xhr.status >= 200 && xhr.status < 300)) {
                        //If that was notify-sender
                        if (xhr.status == 204)
                            return;

                        app.downloadFilePath = xhr.responseText;
                        var filename =`${app.downloadFilePath}`.substr(`${app.downloadFilePath}`.lastIndexOf("/") + 1);

                        link.setAttribute("href", "trikimages/" + filename);
                        link.setAttribute("download", filename);
                        link.removeAttribute("data-toggle");
                        link.click();
                    } else {
                        app.xhrStatusPorts = xhr.status;
                        app.xhrStatusPortsText = xhr.statusText;
                        link.setAttribute("data-toggle", "modal");
                        link.click();
                    }
                }
            };

            xhr.send();
        },

        deleteAllImages() {
            app.defaultPostXHR("delete-images.sh", "");
        },

        createScreenshot() {
            app.defaultPostXHR("do-screenshot.sh", ""
                , () => {
                    var button = document.getElementById("makeScreenshotButton");
                    button.removeAttribute("disabled");
                }
                , () => {
                    var button = document.getElementById("makeScreenshotButton");
                    button.removeAttribute("disabled");
                }
                , () => {
                    var button = document.getElementById("makeScreenshotButton");
                    button.setAttribute("disabled", "disabled");
                }
                );
        },
    }
});

