<!-- Copyright 2018 - 2019 Alexander Savelev, Andrei Khodko

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License -->

<!DOCTYPE html>
<html xmlns:v-bind="http://www.w3.org/1999/xhtml" xmlns:v-on="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>Configurator</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" text="text/css" href="styles/bootstrap.css">
    <link rel="icon" href="images/favicon.ico">

    <style>
        .main-color-green {
            background-color: #009933;
        }

        .main-color-blue {
            background-color: #001A42;
        }

        .navBlue {
            background-color: #009933;
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -ms-flex-align: center;
            align-items: center;
            -ms-flex-pack: justify;
            justify-content: space-between;
            padding: 0.5rem 1rem;
        }

        .logo {
            width: 50px;
        }

        .logoF {
            width: 25px;
        }

        .nav-pills .nav-link.active,
        .nav-pills .show > .nav-link {
            color: #fff;
            background-color: #009933;
            outline: none;
        }

        .layer2 {
            position: relative; /* Абсолютное позиционирование */
            bottom: 15%; /* Положение от нижнего края */
            line-height: 100%;
        }

        @font-face {
            font-family: Montserrat-BlackItalic;
            src: url('fonts/Montserrat-Bold.ttf');

            font-weight: normal;

            font-style: normal;
        }

        @font-face {
            font-family: Cera Pro;
            src: url('fonts/TypeMates - Cera Round Pro Bold.otf');

            font-weight: normal;

            font-style: normal;
        }

        .main-navigation {
            font-family: 'Montserrat-BlackItalic';
        }

        .nav-cera-style {
            font-family: "Cera Pro";
        }

    </style>
</head>
<body>

<script src="js/vue.min.js"></script>

<div id="app" style="position:absolute; top:0; left:0; right:0; bottom: 0; overflow-y: scroll;">
    <nav class="navbar navbar-expand-lg navbar-dark nav-cera-style" style="background-color: #001A42">

        <!--Top menu panel -->
        <a href="#home" class="navbar-left mr-3"><img src="images/logo-eng-lightgreen-purple-1000x1000.png"
                                                      width="80"></a>


        <button class="navbar-toggler" @click="buttonSUP()" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                style="background-color: #009933">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="nav nav-pills navbar-nav mr-auto pull-left">
                <li class="nav-item">
                    <a class="nav-link active text-white" v-text="texts[lang]['network']" data-toggle="pill" href="#wifi" >Network</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" v-text="texts[lang]['port']" data-toggle="pill" href="#port">Ports</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" id="3" v-text="texts[lang]['mems']" data-toggle="pill" href="#ga">
                        MEMS
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" id="4" v-text="texts[lang]['videoStream']" data-toggle="pill" href="#video">
                        Video stream
                    </a>
                </li>
				<li class="nav-item">
					<a class="nav-link text-white" id="5" v-text="texts[lang]['logsTab']" data-toggle="pill" href="#logsTab">
						Logs tab
					</a>
				</li>
            </ul>



        </div>
	    <a id="logsLink" data-target="#logsErrorDialog"></a>
        <a href="#" class="mr-3" @click="downloadLogs()" id="logsPopover" data-toggle="popover" data-trigger="hover"
            :data-content="texts[lang]['logs']">
            <img  src="images/logs2.png" height="40">
        </a>

        <div class="btn-group btn-group-toggle" v-if="regShowLanguage() === 'true'" role="buttons"
             aria-label="Basic example">
            <button type="button" class="btn btn-success" @click="changeLang('en')"
                    v-text="texts[lang]['en']" v-bind:class="{ active: lang=='en' }">En
            </button>
            <button type="button" class="btn btn-success" @click="changeLang('ru')"
                    v-text="texts[lang]['ru']" v-bind:class="{ active: lang=='ru' }">Ru
            </button>
        </div>
    </nav>

    <div class="modal fade main-navigation" id="logsErrorDialog" tabindex="-1" role="dialog" aria-labelledby="logsErrorDialog"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{{ texts[lang]['logsUnreachableMessage'] }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
                    {{ texts[lang]['tryNextTime'] }}
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">
                            {{ texts[lang]['ok'] }}
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tab-content main-navigation" style="padding: 20px;">
        <!--<div class="tab-pane fade show active active" id="home">
            <input type="button" onclick="this.style.display='none';" value="Hide It!"/>
        </div>-->
        <div class="tab-pane fade fade show active active" id="wifi">


            <div class="row">
                <div class="form-group col-md-6">

                    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 10px">
                        <a class="navbar-brand" v-text="'Wi-Fi ' + texts[lang]['client']" href="#" >Wi-Fi client</a>
                    </nav>
                    <br>

                    <form id="submit-form" action="javascript:void(0);">
                        <div id="success_msg" class="success"></div>
                        <div id="error_msg" class="error"></div>
                        <div class="form-group">
                            <input type="text" class="form-control" v-model="essid" aria-describedby="emailHelp"
                                   placeholder="Wi-Fi name (SSID)" :placeholder="'Wi-Fi ' + texts[lang]['name'] + ' (SSID)'">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" v-model="password" placeholder='Password' :placeholder="texts[lang]['password']">
                        </div>
                        <button type="submit" class="btn  btn-success" style="background-color: #009933"
                                data-toggle="modal" data-target="#AddNewWifiDialog" v-text="texts[lang]['save']" @click="refreshDialogFlag()">
                            Save
                        </button>
                    </form>

                    <div v-if="essid != '' && password != ''">
                        <div class="modal fade" id="AddNewWifiDialog" tabindex="-1" role="dialog" aria-labelledby="AddNewWifiDialog"
                             aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" v-if="dialogFlag === 'waiting'">{{ texts[lang]['confirm'] }}</h5>
                                        <h5 class="modal-title" v-else-if="dialogFlag === 'fail'">{{ texts[lang]['fail'] }}</h5>
                                        <h5 class="modal-title" v-else-if="dialogFlag === 'success'">{{ texts[lang]['saved'] }}</h5>
                                        <h5 class="modal-title" v-else-if="dialogFlag === 'wrongInput'">{{ texts[lang]['wrongInput'] }}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div v-if="dialogFlag === 'waiting'">
                                            {{ texts[lang]['confirmOffer'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                                    texts[lang]['no']
                                                    }}
                                                </button>
                                                <button type="button" class="btn btn-success" @click="submitNewWiFi()">
                                                    {{
                                                    texts[lang]['yes'] }}
                                                </button>
                                            </div>
                                        </div>
                                        <div v-else-if="dialogFlag === 'fail'">
                                            {{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
                                            {{ texts[lang]['tryNextTime'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal" @click="clearInput()">
                                                    {{
                                                    texts[lang]['ok'] }}
                                                </button>
                                            </div>
                                        </div>
                                        <div v-else-if="dialogFlag === 'success'">
                                            {{ texts[lang]['savedSettings'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal" @click="clearInput()">
                                                    {{
                                                    texts[lang]['ok'] }}
                                                </button>
                                            </div>
                                        </div>
                                        <div v-else-if="dialogFlag === 'wrongInput'">
                                            {{ texts[lang]['wifiError'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal" @click="clearInput()">
                                                    {{
                                                    texts[lang]['ok'] }}
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="form-group col-md-6">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 10px">
                        <a class="navbar-brand" v-text="texts[lang]['accessPoint']" href="#">Access point</a>
                    </nav>
                    <br>
                    <div class="input-group mb-3">
                        <input type="text" v-model="hostName" class="form-control" placeholder="New hostname" :placeholder="texts[lang]['newHostname']"
                               aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn  btn-success" type="button" @click="refreshDialogFlag()"
                                    data-toggle="modal" v-text="texts[lang]['save']" data-target="#SaveHostnameDialog">
                                Save
                            </button>

                            <div v-if="hostName != ''">
                                <div class="modal fade" id="SaveHostnameDialog" tabindex="-1" role="dialog"
                                     aria-labelledby="SaveHostnameDialog" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" v-if="dialogFlag === 'waiting'">{{ texts[lang]['confirm'] }}</h5>
                                                <h5 class="modal-title" v-else-if="dialogFlag === 'fail'">{{ texts[lang]['fail'] }}</h5>
                                                <h5 class="modal-title" v-else-if="dialogFlag === 'success'">{{ texts[lang]['saved'] }}</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div v-if="dialogFlag === 'waiting'">
                                                    {{ texts[lang]['confirmOffer'] }}
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                                            texts[lang]['no']
                                                            }}
                                                        </button>
                                                        <button type="button" class="btn btn-success" @click="editHostname()">
                                                            {{
                                                            texts[lang]['yes'] }}
                                                        </button>
                                                    </div>
                                                </div>
                                                <div v-else-if="dialogFlag === 'fail'">
													{{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
													{{ texts[lang]['tryNextTime'] }}
													<div class="modal-footer">
														<button type="button" class="btn btn-success" data-dismiss="modal">
															{{
															texts[lang]['ok'] }}
														</button>
													</div>
												</div>
                                                <div v-else-if="dialogFlag === 'success'">
                                                    {{ texts[lang]['savedSettings'] }}
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-success" data-dismiss="modal">
                                                            {{
                                                            texts[lang]['ok'] }}
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="form-group col-md-6">
                    <!-- Form Name -->
                    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 10px">
                        <a class="navbar-brand" v-text="texts[lang]['robotsInteraction']" href="#">Robots interaction</a>
                    </nav>
                    <br>
                    <!-- <legend>Взаимодействие роботов</legend> -->

                    <!-- <form id="subm111it-form"> -->
                    <!-- Text input-->
                    <div class="form-group">
                        <input id="hullNumber" v-model="hullNumber" name="hullNumber" type="text" placeholder="Hull number" :placeholder="texts[lang]['hullNumber']" class="form-control input-md">
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <input id="leaderIP" v-model="leaderIP" name="leaderIP" type="text" placeholder="Leader IP" :placeholder="texts[lang]['leaderIP']" class="form-control input-md">
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <button class="btn btn-success" v-text="texts[lang]['save']" @click="refreshDialogFlag()"
                                data-toggle="modal" data-target="#SaveHullNumberDialog">Save</button>
                    </div>

                    <div v-if="hullNumber != ''">
                        <div class="modal fade" id="SaveHullNumberDialog" tabindex="-1" role="dialog" aria-labelledby="SaveHullNumberDialog"
                             aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" v-if="dialogFlag === 'waiting'">{{ texts[lang]['confirm'] }}</h5>
                                        <h5 class="modal-title" v-else-if="dialogFlag === 'fail'">{{ texts[lang]['fail'] }}</h5>
                                        <h5 class="modal-title" v-else-if="dialogFlag === 'success'">{{ texts[lang]['saved'] }}</h5>
                                        <h5 class="modal-title" v-else-if="dialogFlag === 'wrongInput'">{{ texts[lang]['wrongInput'] }}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div v-if="dialogFlag === 'waiting'">
                                            {{ texts[lang]['confirmReboot'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                                    texts[lang]['no']
                                                    }}
                                                </button>
                                                <button type="button" class="btn btn-success" @click="hullConfig()">
                                                    {{
                                                    texts[lang]['yes'] }}
                                                </button>
                                            </div>
                                        </div>
                                        <div v-else-if="dialogFlag === 'fail'">
                                            {{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
                                            {{ texts[lang]['tryNextTime'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal" >
                                                    {{
                                                    texts[lang]['ok'] }}
                                                </button>
                                            </div>
                                        </div>
                                        <div v-else-if="dialogFlag === 'success'">
                                            {{ texts[lang]['savedSettings'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal" @click="clearInput()">
                                                    {{
                                                    texts[lang]['ok'] }}
                                                </button>
                                            </div>
                                        </div>
                                        <div v-else-if="dialogFlag === 'wrongInput'">
                                            {{ texts[lang]['inputShouldBe'] }}: <br>
                                            {{ texts[lang]['hullNumber'] }} - 00 <br>
                                            {{ texts[lang]['leaderIP'] }} - 000.000.000.000 <br>
                                            {{ texts[lang]['tryNextTime'] }}
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-dismiss="modal" @click="clearInput()">
                                                    {{
                                                    texts[lang]['ok'] }}
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- </form> -->
                </div>

                <div class="form-group col-md-6">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 10px">
                        <div class="navbar-brand">
                            <a v-text="texts[lang]['pppd']">PPP daemon</a>
                            <small><small>
                                <template v-if="pppdEnabled"><mark class="bg-warning text-dark rounded">{{texts[lang]['enabled']}}</mark></template>
                                <template v-else ><mark class="bg-warning text-dark rounded">{{texts[lang]['disabled']}}</mark></template>
                            </small></small>
                        </div>
                    </nav>
                    <br>
                    <div class="mb-3">
                        <button v-show="!pppdEnabled" class="btn  btn-success" type="button" @click="refreshDialogFlag()"
                                data-toggle="modal" v-text="texts[lang]['enable']" data-target="#SwitchPPPDDialog">
                            Enable
                        </button>
                        <template>
                            <button v-show="pppdEnabled" class="btn  btn-success" type="button" @click="refreshDialogFlag()"
                                    data-toggle="modal" v-text="texts[lang]['disable']" data-target="#SwitchPPPDDialog">
                                Disable
                            </button>
                        </template>
                    </div>
                    <div class="modal fade" id="SwitchPPPDDialog" tabindex="-1" role="dialog" aria-labelledby="SwitchPPPDDialog"
                         aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" v-if="dialogFlag === 'waiting'">{{ texts[lang]['confirm'] }}</h5>
                                    <h5 class="modal-title" v-else-if="dialogFlag === 'fail'">{{ texts[lang]['fail'] }}</h5>
                                    <h5 class="modal-title" v-else-if="dialogFlag === 'success'">{{ texts[lang]['saved'] }}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div v-if="dialogFlag === 'waiting'">
                                        {{ texts[lang]['confirmReboot'] }}
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                                texts[lang]['no']
                                                }}
                                            </button>
                                            <button type="button" class="btn btn-success" @click="switchPPPD()">
                                                {{
                                                texts[lang]['yes'] }}
                                            </button>
                                        </div>
                                    </div>
                                    <div v-else-if="dialogFlag === 'fail'">
                                        {{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
                                        {{ texts[lang]['tryNextTime'] }}
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success" data-dismiss="modal" >
                                                {{
                                                texts[lang]['ok'] }}
                                            </button>
                                        </div>
                                    </div>
                                    <div v-else-if="dialogFlag === 'success'">
                                        {{ texts[lang]['savedSettings'] }}
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success" data-dismiss="modal">
                                                {{
                                                texts[lang]['ok'] }}
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <div class="tab-pane fade" id="port">


            <button type="button" class="btn btn-secondary layer2 main-color-green"
                    data-toggle="modal" data-target="#DefaultPortsDialog">{{
                texts[lang]['default'] }}
            </button>


            <div class="modal fade" id="DefaultPortsDialog" tabindex="-1" role="dialog"
                 aria-labelledby="DefaultPortsDialog"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalTitle">{{ texts[lang]['confirm'] }}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            {{ texts[lang]['toDefaultSettings'] }}
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                texts[lang]['no']
                                }}
                            </button>
                            <button type="button" class="btn btn-success" data-dismiss="modal" @click="defaultPorts()">
                                {{
                                texts[lang]['yes'] }}
                            </button>
                        </div>
                    </div>
                </div>
            </div>


            <!--ServoMotor-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 10px">
                <a class="navbar-brand" href="#">{{ texts[lang]['servoMotors'] }}</a>
            </nav>
            <div class="row">
                <div class="form-group col-md-4">
                    <label>S1</label>
                    <select class="form-control form-control-sm" name="S1" v-model="s1">
                        <option value="angularServomotor">angularServomotor</option>
                        <option value="continuousRotationServomotor">continuousRotationServomotor</option>
                        <option value="quadroMotor">quadroMotor</option>
                        <option value="manipulatorServomotor">manipulatorServomotor</option>
                        <option value="quadroEsc">quadroEsc</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label>S2</label>
                    <select class="form-control form-control-sm" name="S2" v-model="s2">
                        <option value="angularServomotor">angularServomotor</option>
                        <option value="continuousRotationServomotor">continuousRotationServomotor</option>
                        <option value="quadroMotor">quadroMotor</option>
                        <option value="manipulatorServomotor">manipulatorServomotor</option>
                        <option value="quadroEsc">quadroEsc</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label>S3</label>
                    <select class="form-control form-control-sm" name="S3" v-model="s3">
                        <option value="angularServomotor">angularServomotor</option>
                        <option value="continuousRotationServomotor">continuousRotationServomotor</option>
                        <option value="quadroMotor">quadroMotor</option>
                        <option value="manipulatorServomotor">manipulatorServomotor</option>
                        <option value="quadroEsc">quadroEsc</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label>S4</label>
                    <select class="form-control form-control-sm" name="S4" v-model="s4">
                        <option value="angularServomotor">angularServomotor</option>
                        <option value="continuousRotationServomotor">continuousRotationServomotor</option>
                        <option value="quadroMotor">quadroMotor</option>
                        <option value="manipulatorServomotor">manipulatorServomotor</option>
                        <option value="quadroEsc">quadroEsc</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label>S5</label>
                    <select class="form-control form-control-sm" name="S5" v-model="s5">
                        <option value="angularServomotor">angularServomotor</option>
                        <option value="continuousRotationServomotor">continuousRotationServomotor</option>
                        <option value="quadroMotor">quadroMotor</option>
                        <option value="manipulatorServomotor">manipulatorServomotor</option>
                        <option value="quadroEsc">quadroEsc</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label>S6</label>
                    <select class="form-control form-control-sm" name="S6" v-model="s6">
                        <option value="angularServomotor">angularServomotor</option>
                        <option value="continuousRotationServomotor">continuousRotationServomotor</option>
                        <option value="quadroMotor">quadroMotor</option>
                        <option value="manipulatorServomotor">manipulatorServomotor</option>
                        <option value="quadroEsc">quadroEsc</option>
                    </select>
                </div>
            </div>


            <!--PowerMotor-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">{{ texts[lang]['powerMotors'] }}</a>
            </nav>
            <div class="row">
                <div class="form-group col-md-3">
                    <label>M1</label>
                    <select class="form-control form-control-sm" name="M1" v-model="m1">
                        <option value="motor350">motor350</option>
                        <option value="jga25-371">jga25-371</option>
                    </select>
                </div>

                <div class="form-group col-md-3">
                    <label>M2</label>
                    <select class="form-control form-control-sm" name="M2" v-model="m2">
                        <option value="motor350">motor350</option>
                        <option value="jga25-371">jga25-371</option>
                    </select>
                </div>

                <div class="form-group col-md-3">
                    <label>M3</label>
                    <select class="form-control form-control-sm" name="M3" v-model="m3">
                        <option value="motor350">motor350</option>
                        <option value="jga25-371">jga25-371</option>
                    </select>
                </div>

                <div class="form-group col-md-3">
                    <label>M4</label>
                    <select class="form-control form-control-sm" name="M4" v-model="m4">
                        <option value="motor350">motor350</option>
                        <option value="jga25-371">jga25-371</option>
                    </select>
                </div>

            </div>

            <!--analogSensor-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">{{ texts[lang]['analogSensors'] }}</a>
            </nav>
            <div class="row">
                <div class="form-group col-md-4">
                    <label>A1</label>
                    <select class="form-control form-control-sm" name="A1" v-model="a1">
                        <option value="sharpGP2Sensor">sharpGP2Sensor</option>
                        <option value="touchSensor">touchSensor</option>
                        <option value="lightSensor">lightSensor</option>
                        <option value="analogSensor">simpleAnalogSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label>A2</label>
                    <select class="form-control form-control-sm" name="A2" v-model="a2">

                        <option value="sharpGP2Sensor">sharpGP2Sensor</option>
                        <option value="touchSensor">touchSensor</option>
                        <option value="lightSensor">lightSensor</option>
                        <option value="analogSensor">simpleAnalogSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label>A3</label>
                    <select class="form-control form-control-sm" name="A3" v-model="a3">

                        <option value="sharpGP2Sensor">sharpGP2Sensor</option>
                        <option value="touchSensor">touchSensor</option>
                        <option value="lightSensor">lightSensor</option>
                        <option value="analogSensor">simpleAnalogSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label>A4</label>
                    <select class="form-control form-control-sm" name="A4" v-model="a4">

                        <option value="sharpGP2Sensor">sharpGP2Sensor</option>
                        <option value="touchSensor">touchSensor</option>
                        <option value="lightSensor">lightSensor</option>
                        <option value="analogSensor">simpleAnalogSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label>A5</label>
                    <select class="form-control form-control-sm" name="A5" v-model="a5">

                        <option value="sharpGP2Sensor">sharpGP2Sensor</option>
                        <option value="touchSensor">touchSensor</option>
                        <option value="lightSensor">lightSensor</option>
                        <option value="analogSensor">simpleAnalogSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-4">
                    <label>A6</label>
                    <select class="form-control form-control-sm" name="A6" v-model="a6">
                        <option value="sharpGP2Sensor">sharpGP2Sensor</option>
                        <option value="touchSensor">touchSensor</option>
                        <option value="lightSensor">lightSensor</option>
                        <option value="analogSensor">simpleAnalogSensor</option>
                    </select>
                </div>

            </div>


            <!--encoder-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">{{ texts[lang]['encoders'] }}</a>
            </nav>
            <div class="row">
                <div class="form-group col-md-9">
                    <label>E1</label>
                    <select class="form-control form-control-sm" name="E1" v-model="e1">
                        <option value="encoder95">encoder95</option>
                        <option value="encoder126">encoder126</option>
                    </select>
                </div>
                <div class="form-group col-md-3">
                    <br>
                    <input type="checkbox" id="e1" v-model="e1State" true-value="true" false-value="false">
                    <label for="e1" v-if="e1State == 'true'">
                        Invert
                    </label>
                    <label for="e1" v-else>
                        Not Invert
                    </label>
                </div>

                <div class="form-group col-md-9">
                    <label>E2</label>
                    <select class="form-control form-control-sm" name="E2" v-model="e2">
                        <option value="encoder95">encoder95</option>
                        <option value="encoder126">encoder126</option>
                    </select>
                </div>

                <div class="form-group col-md-3">
                    <br>
                    <input type="checkbox" id="e2" v-model="e2State" true-value="true" false-value="false">
                    <label for="e2" v-if="e2State == 'true'">
                        Invert
                    </label>
                    <label for="e2" v-else>
                        Not Invert
                    </label>
                </div>

                <div class="form-group col-md-9">
                    <label>E3</label>
                    <select class="form-control form-control-sm" name="E3" v-model="e3">
                        <option value="encoder95">encoder95</option>
                        <option value="encoder126">encoder126</option>
                    </select>
                </div>

                <div class="form-group col-md-3">
                    <br>
                    <input type="checkbox" id="e3" v-model="e3State" true-value="true" false-value="false">
                    <label for="e3" v-if="e3State == 'true'">
                        Invert
                    </label>
                    <label for="e3" v-else>
                        Not Invert
                    </label>
                </div>

                <div class="form-group col-md-9">
                    <label>E4</label>
                    <select class="form-control form-control-sm" name="E4" v-model="e4">
                        <option value="encoder95">encoder95</option>
                        <option value="encoder126">encoder126</option>
                    </select>
                </div>

                <div class="form-group col-md-3">
                    <br>
                    <input type="checkbox" id="e4" v-model="e4State" true-value="true" false-value="false">
                    <label for="e4" v-if="e4State == 'true'">
                        Invert
                    </label>
                    <label for="e4" v-else>
                        Not Invert
                    </label>
                </div>

            </div>

            <!--RangeSensor-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">{{ texts[lang]['rangeSensors'] }}</a>
            </nav>
            <div class="row">
                <div class="form-group col-md-6">
                    <label>D1</label>
                    <select class="form-control form-control-sm" name="D1" v-model="d1">
                        <option value="sonarSensor">sonarSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-6">
                    <label>D2</label>
                    <select class="form-control form-control-sm" name="D2" v-model="d2">
                        <option value="sonarSensor">sonarSensor</option>
                    </select>
                </div>
            </div>


            <!--video1/video2-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">video1/video2</a>
            </nav>
            <div class="row">
                <div class="form-group col-md-6">
                    <label>video1</label>
                    <select class="form-control form-control-sm" name="video1" v-model="video1">
                        <option value="colorSensor3x3">colorSensor3x3</option>
                        <option value="lineSensor">lineSensor</option>
                        <option value="photo">photo</option>
                        <option value="edgeLineSensor">edgeLineSensor</option>
                    </select>
                </div>

                <div class="form-group col-md-6">
                    <label>video2</label>
                    <select class="form-control form-control-sm" name="video2" v-model="video2">
                        <option value="colorSensor3x3">colorSensor3x3</option>
                        <option value="lineSensor">lineSensor</option>
                        <option value="photo">photo</option>
                        <option value="edgeLineSensor">edgeLineSensor</option>
                    </select>
                </div>
            </div>


            <button type="button" class=" btn btn-success btn-md btn-block fixed-bottom " data-toggle="modal"
                    data-target="#SavePortsDialog" @click="refreshDialogFlag()">
                <i class="glyphicon glyphicon-ok"></i>
                {{ texts[lang]['save'] }}
            </button>


            <!-- Modal -->
            <div class="modal fade" id="SavePortsDialog" tabindex="-1" role="dialog" aria-labelledby="SavePortsDialog"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" v-if="dialogFlag === 'waiting'">{{ texts[lang]['confirm'] }}</h5>
                            <h5 class="modal-title" v-else-if="dialogFlag === 'fail'">{{ texts[lang]['fail'] }}</h5>
                            <h5 class="modal-title" v-else-if="dialogFlag === 'success'">{{ texts[lang]['saved'] }}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div v-if="dialogFlag === 'waiting'">
                                {{ texts[lang]['confirmReboot'] }}
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                        texts[lang]['no']
                                        }}
                                    </button>
                                    <button type="button" class="btn btn-success" @click="getPorts()">
                                        {{
                                        texts[lang]['yes'] }}
                                    </button>
                                </div>
                            </div>
                            <div v-else-if="dialogFlag === 'fail'">
                                {{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
                                {{ texts[lang]['tryNextTime'] }}
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">
                                        {{
                                        texts[lang]['ok'] }}
                                    </button>
                                </div>
                            </div>
                            <div v-else-if="dialogFlag === 'success'">
                                {{ texts[lang]['savedSettings'] }}
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">
                                        {{
                                        texts[lang]['ok'] }}
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="tab-pane fade" id="ga">

            <button type="button" class="btn btn-secondary layer2 main-color-green"
                    data-toggle="modal"
                    data-target="#DefaultGADialog">{{
                texts[lang]['default'] }}
            </button>

            <div class="modal fade" id="DefaultGADialog" tabindex="-1" role="dialog"
                 aria-labelledby="DefaultGADialog" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalDefaultTitle">{{ texts[lang]['confirm'] }}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            {{ texts[lang]['toDefaultSettings'] }}
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                texts[lang]['no'] }}
                            </button>
                            <button type="button" class="btn btn-success" v-on:click="defaultGA" data-dismiss="modal">
                                {{ texts[lang]['yes'] }}
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-6">

                    <nav class="navbar navbar-light bg-light " style="margin-top: 10px">
                        <a class="navbar-brand" href="#">{{ texts[lang]['gyroscope'] }}</a>
                    </nav>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label>{{ texts[lang]['state'] }}</label>
                            <select class="form-control form-control-sm" name="gyroscope" v-model="gyroscope">
                                <option value="ON">ON</option>
                                <option value="OFF">OFF</option>
                            </select>
                        </div>

                        <a class="btn btn-secondary form-group col-md-6" style="margin-left: 15px"
                           v-if="gyroscope === 'ON'" data-toggle="collapse"
                           href="#gDopSet" role="button" aria-expanded="false" aria-controls="collapseExample">
                            {{ texts[lang]['advancedSet'] }}
                        </a>

                        <div class="collapse form-group" v-if="gyroscope === 'ON'" id="gDopSet">
                            <div class="card card-body" style="margin-left: 15px">
                                {{ texts[lang]['infoSet'] }}
                                <br>
                                <br>

                                <label>{{ texts[lang]['frequency'] }}</label>
                                <select class="form-control form-control-sm" name="gyroFreq" v-model="gyroFreq">
                                    <option value="95">95</option>
                                    <option value="190">190</option>
                                    <option value="380">380</option>
                                    <option value="760">760</option>
                                </select>

                                <br>

                                <label>{{ texts[lang]['range'] }}</label>
                                <select class="form-control form-control-sm" name="gyroRange" v-model="gyroRange">
                                    <option value="250">250</option>
                                    <option value="500">500</option>
                                    <option value="2000">2000</option>
                                </select>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="form-group col-md-6">

                    <nav class="navbar navbar-light bg-light" style="margin-top: 10px">
                        <a class="navbar-brand" href="#">{{ texts[lang]['accelerometer'] }}</a>
                    </nav>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label>{{ texts[lang]['state'] }}</label>
                            <select class="form-control form-control-sm" name="accelerometer"
                                    v-model="accelerometer">
                                <option value="ON">ON</option>
                                <option value="OFF">OFF</option>
                            </select>
                        </div>

                        <a class="btn btn-secondary form-group col-md-6" style="margin-left: 15px"
                           v-if="accelerometer === 'ON'" data-toggle="collapse"
                           href="#aDopSet" role="button" aria-expanded="false" aria-controls="collapseExample">
                            {{ texts[lang]['advancedSet'] }}
                        </a>

                        <div class="collapse form-group" v-if="accelerometer === 'ON'" id="aDopSet">
                            <div class="card card-body" style="margin-left: 15px">
                                {{ texts[lang]['infoSet'] }}
                                <br>
                                <br>

                                <label>{{ texts[lang]['frequency'] }}</label>
                                <select class="form-control form-control-sm" name="accelFreq" v-model="accelFreq">
                                    <option value="800">800</option>
                                    <option value="400">400</option>
                                    <option value="200">200</option>
                                    <option value="100">100</option>
                                    <option value="50">50</option>
                                    <option value="12_5">12_5</option>
                                    <option value="6_25">6_25</option>
                                    <option value="1_56">1_56</option>
                                </select>

                                <br>

                                <label>{{ texts[lang]['range'] }}</label>
                                <select class="form-control form-control-sm" name="accelRange" v-model="accelRange">
                                    <option value="2G">2G</option>
                                    <option value="4G">4G</option>
                                    <option value="8G">8G</option>
                                </select>

                            </div>
                        </div>


                    </div>

                </div>

                <button type="button" class="btn btn-success btn-md btn-block fixed-bottom" data-toggle="modal"
                        data-target="#GAConfirmDialog" @click="refreshDialogFlag()">
                    <i class="glyphicon glyphicon-ok"></i>
                    {{ texts[lang]['save'] }}
                </button>

                <div class="modal fade" id="GAConfirmDialog" tabindex="-1" role="dialog" aria-labelledby="GAConfirmDialog"
                     aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" v-if="dialogFlag === 'waiting'">{{ texts[lang]['confirm'] }}</h5>
                                <h5 class="modal-title" v-else-if="dialogFlag === 'fail'">{{ texts[lang]['fail'] }}</h5>
                                <h5 class="modal-title" v-else-if="dialogFlag === 'success'">{{ texts[lang]['saved'] }}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div v-if="dialogFlag === 'waiting'">
                                    {{ texts[lang]['confirmOffer'] }}
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{
                                            texts[lang]['no']
                                            }}
                                        </button>
                                        <button type="button" class="btn btn-success" @click="getGA()">
                                            {{
                                            texts[lang]['yes'] }}
                                        </button>
                                    </div>
                                </div>
                                <div v-else-if="dialogFlag === 'fail'">
                                    {{ texts[lang]['codeError'] }} {{xhrStatusPorts}} {{xhrStatusPortsText}} <br>
                                    {{ texts[lang]['tryNextTime'] }}
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">
                                            {{
                                            texts[lang]['ok'] }}
                                        </button>
                                    </div>
                                </div>
                                <div v-else-if="dialogFlag === 'success'">
                                    {{ texts[lang]['savedSettings'] }}
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">
                                            {{
                                            texts[lang]['ok'] }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>
        <div class="tab-pane fade" id="video">
            <div class="row">
                <div class="mx-auto" style="width: 640px; height: 480px;">
                <img id="streamImage" style="width: 640px; height: 480px;" class="img-thumbnail" src="http://1.1.1.1"
                     v-bind:alt="texts[lang]['streamUnavailable']" @click="getSnapshot()" onerror="this.src='images/plugStreamImage.png'">
                </div>
            </div>
        </div>

		<div class="tab-pane fade" id="logsTab">
			<div class="embed-responsive embed-responsive-1by1 nav-cera-style">
				<iframe id="logsFrame" class="embed-responsive-item" src="https://dl.trikset.com" align="left"></iframe>
			</div>
		</div>
    </div>
</div>

<script src="js/popper.min.js"></script>
<script src="js/jQueryCompressed.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/locale.js"></script>
<script src="js/configurator.js"></script>


<script>
    $(
        $('[data-toggle="popover"]').popover()
    )
</script>
<script>
    $('.popover-dismiss').popover({
        trigger: 'focus'
    })
</script>

</body>
</html>
