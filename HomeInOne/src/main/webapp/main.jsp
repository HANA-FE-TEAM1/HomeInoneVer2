<%--
  Created by IntelliJ IDEA.
  User: DA
  Date: 2024-05-17
  Time: PM 6:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/routine.css" />
    <link rel="stylesheet" href="css/carousel.css" />
    <link rel="stylesheet" href="css/addDevice.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/profileInfo.css" />
    <link rel="stylesheet" href="css/switch.css" />
    <link rel="icon" href="images/logo.svg" />
    <title>HomeInOne</title>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <header>
            <div class="row">
                <div class="header-inner">
                    <img id="logo-image" src="images/logo.svg" alt="" />
                    <img
                            id="hovered-logo-image"
                            src="images/hoveredLogo.svg"
                            alt="" />
                </div>
            </div>
        </header>
        <section>
            <div class="row">
                <div class="col-8">
                    <!-- 나의 홈인원 섹션 시작 -->
                    <div class="white-card">
                        <div class="white-card-slider">
                            <div class="white-card-header">
                                <div class="main-title-slider">
                                    <p>My Home</p>
                                </div>
                            </div>
                            <div class="white-card-body">
                                <!-- 슬라이더 시작 -->
                                <div id="slider">
                                    <input type="radio" name="slider" id="s1" checked />
                                    <input type="radio" name="slider" id="s2" />
                                    <input type="radio" name="slider" id="s3" />
                                    <input type="radio" name="slider" id="s4" />
                                    <input type="radio" name="slider" id="s5" />
                                    <label for="s1" id="slide1"
                                    ><img
                                            id="imgModalAircon"
                                            src="./images/air-conditioner.png"
                                            alt="" />
                                        <div class="switch-container">
                                            <div class="switch demo4">
                                                <input id="power1" type="checkbox" />
                                                <label><i class="icon-off"></i></label>
                                            </div>
                                        </div>
                                    </label>
                                    <label for="s2" id="slide2"
                                    ><img
                                            id="imgModalHumidity"
                                            src="./images/humidifier.png"
                                            alt="" />
                                        <div class="switch-container">
                                            <div class="switch demo4">
                                                <input id="power2" type="checkbox" />
                                                <label><i class="icon-off"></i></label>
                                            </div>
                                        </div>
                                    </label>
                                    <label for="s3" id="slide3">
                                        <img
                                                id="imgModalRefridgerator"
                                                src="./images/refridgerator.png"
                                                alt="" />
                                        <div class="switch-container">
                                            <div class="switch demo4">
                                                <input id="power3" type="checkbox" />
                                                <label><i class="icon-off"></i></label>
                                            </div>
                                        </div>
                                    </label>
                                    <label for="s4" id="slide4"
                                    ><img
                                            class="plus-button"
                                            id="plus-button"
                                            src="./images/blueplus.webp"
                                            alt="" />
                                    </label>
                                    <label for="s5" id="slide5">
                                        <img
                                                id="imgModalWashingMachine"
                                                src="./images/washing-machine.png"
                                                alt="" />
                                        <div class="switch-container">
                                            <div class="switch demo4">
                                                <input id="power4" type="checkbox" />
                                                <label><i class="icon-off"></i></label>
                                            </div>
                                        </div>
                                    </label>
                                </div>
                                <!--모달-->
                                <div id="modalAircon">
                                    <div id="modalAirconBody">
                                        <span id="closeBtn"></span>
                                        <embed id="aircon-frame"
                                               style="width: 100%; height: 100%"
                                               src="air_conditioner.html" />
                                    </div>
                                </div>
                                <div id="modalHumidity">
                                    <div id="modalHumidityBody">
                                        <span id="closeBtn"></span>
                                        <embed
                                                style="width: 100%; height: 100%"
                                                src="humidifier.html" />
                                    </div>
                                </div>
                                <div id="modalRefridgerator">
                                    <div id="modalRefridgeratorBody">
                                        <span id="closeBtn"></span>
                                        <embed
                                                style="width: 100%; height: 100%"
                                                src="refrigerator.html" />
                                    </div>
                                </div>
                                <div id="modalWashingMachine">
                                    <div id="modalWashingMachineBody">
                                        <span id="closeBtn"></span>
                                        <embed
                                                style="width: 100%; height: 100%"
                                                src="washing_machine.html" />
                                    </div>
                                </div>
                                <!--모달 끝-->
                            </div>
                            <!-- 슬라이더 끝 -->
                        </div>
                    </div>
                    <!-- 나의 홈인원 섹션 끝 -->
                </div>

                <!-- 디바이스 추가 모달 -->
                <div id="addDevice-modalWrap">
                    <!-- 디바이스 추가 확인 모달  -->
                    <div id="addDevice-modalBody">
                        <div id="addDevice-modalTitle">
                            <div id="addDevice-modalWrap-closeBtn" style="float: right">
                                &times;
                            </div>
                        </div>
                        <div id="addDevice-modalName">가전제품 추가</div>
                        <div id="addDevice-myModal" class="modal">
                            <div id="img01-container">
                                <img class="addDevice-modal-content" id="img01"/>
                                <div id="addDevice-addAlert">
                                    <span id="addDevice-deviceName"></span>를(을)
                                    추가하시겠습니까?
                                </div>
                            </div>

                            <div class="addDevice-button-container">
                                <button
                                        onclick="confirmYes()"
                                        style="background-color: #82d8c9">
                                    예
                                </button>
                                <button onclick="confirmNo()">아니오</button>
                            </div>
                        </div>
                        <!-- /디바이스 추가 확인 모달 -->
                        <div>
                            <div id="addDevice-container">
                                <div class="addDevice-subContainer">
                                    <div
                                            class="addDevice"
                                            onclick="openModal('images/air-conditioner.png')">
                                        <span>에어컨</span>
                                        <img src="images/air-conditioner.png" alt="Image 1" />
                                    </div>
                                    <div
                                            class="addDevice"
                                            onclick="openModal('images/humidifier.png')">
                                        <span>가습기</span>
                                        <img src="images/humidifier.png" alt="Image 2" />
                                    </div>
                                </div>
                                <div class="addDevice-subContainer">
                                    <div
                                            class="addDevice"
                                            onclick="openModal('images/washing-machine.png')">
                                        <span>세탁기</span>
                                        <img src="images/washing-machine.png" alt="Image 3" />
                                    </div>
                                    <div
                                            class="addDevice"
                                            onclick="openModal('images/refridgerator.png')">
                                        <span>냉장고</span>
                                        <img src="images/refridgerator.png" alt="Image 4" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /디바이스 추가 모달 -->
                <div class="col-4">
                    <!-- 프로필 정보 -->
                    <div class="white-card profile-info">
                        <div class="white-card-header">
                            <div
                                    class="main-title"
                                    style="display: flex; justify-content: space-between">
                                <span style="font-size: 0.7rem">Welcome HomeInOne,</span>
                                <span id="today"></span>
                            </div>
                            <div style="font-weight: 500">Hana님!</div>
                        </div>
                        <div
                                class="white-card-body"
                                style="display: block; padding: 5px 20px 15px 20px">
                            <div
                                    id="weather"
                                    style="display: flex; justify-content: space-between">
                    <span>
                      <img src="images/temperature.svg" alt="" />
                      <span id="currTemparature"></span>°C</span
                    >
                                <span
                                ><img src="images/humidity.svg" alt="" />
                      <span id="currHumidity"></span>%</span
                                >
                                <span
                                ><img src="images/weather.svg" alt="" />
                      <span id="currDescription"></span
                      ></span>
                            </div>
                        </div>
                    </div>
                    <!-- /프로필 정보 -->

                    <!-- routine 박스 -->
                    <div class="white-card routine">
                        <div class="routine_header">
                            <div class="main-title">
                                <p id="routineBoxTitle">루틴</p>
                            </div>
                        </div>
                        <div class="routine-body">
                            <div class="row">
                                <!-- 취침모드 -->
                                <div class="routine_box">
                                    <div class="routineBoxWrapper1">
                                        <p id="routineTitle">취침모드</p>
                                    </div>
                                    <div class="routineBoxWrapper2">
                                        <div class="toggle-button"></div>
                                        <div id="btnWrap">
                                            <img
                                                    class="modeModifyButton"
                                                    data-device-index="0"
                                                    src="https://hana-fe-team1.github.io/HomeInOne/images/modify.png" />
                                        </div>
                                    </div>

                                    <div id="routineModalWrap1">
                                        <div id="routineModalBody">
                                            <span id="modalPageTitle">취침모드 수정</span>
                                            <span id="routineCloseBtn">&times;</span><br /><br />
                                            <div id="modalContent">
                                                <!-- 동적으로 채움 (js에 device 배열) -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 취침모드 끝 -->

                                <!-- 귀가모드 -->
                                <div class="routine_box">
                                    <div class="routineBoxWrapper1">
                                        <p id="routineTitle">귀가모드</p>
                                    </div>
                                    <div class="routineBoxWrapper2">
                                        <div class="toggle-button"></div>
                                        <div id="btnWrap">
                                            <img
                                                    class="modeModifyButton"
                                                    data-device-index="0"
                                                    src="images/modify.png" />
                                        </div>
                                    </div>
                                    <div id="routineModalWrap2">
                                        <div id="routineModalBody">
                                            <span id="modalPageTitle">귀가모드 수정</span>
                                            <span id="routineCloseBtn">&times;</span><br /><br />
                                            <div id="modalContent">
                                                <!-- 동적으로 채움 (js에 device 배열) -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 귀가모드 끝 -->
                            </div>
                            <div class="row">
                                <!-- 외출모드 -->
                                <div class="routine_box">
                                    <div class="routineBoxWrapper1">
                                        <p id="routineTitle">외출모드</p>
                                    </div>
                                    <div class="routineBoxWrapper2">
                                        <div class="toggle-button"></div>
                                        <div id="btnWrap">
                                            <img
                                                    class="modeModifyButton"
                                                    data-device-index="0"
                                                    src="./images/modify.png" />
                                        </div>
                                    </div>
                                    <div id="routineModalWrap3">
                                        <div id="routineModalBody">
                                            <span id="modalPageTitle">외출모드 수정</span>
                                            <span id="routineCloseBtn">&times;</span><br /><br />
                                            <div id="modalContent">
                                                <!-- 동적으로 채움 (js에 device 배열) -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 외출모드 끝 -->

                                <!-- 휴가모드 -->
                                <div class="routine_box">
                                    <div class="routineBoxWrapper1">
                                        <p id="routineTitle">휴가모드</p>
                                    </div>
                                    <div class="routineBoxWrapper2">
                                        <div class="toggle-button"></div>
                                        <div id="btnWrap">
                                            <img
                                                    class="modeModifyButton"
                                                    data-device-index="0"
                                                    src="./images/modify.png" />
                                        </div>
                                    </div>
                                    <div id="routineModalWrap4">
                                        <div id="routineModalBody">
                                            <span id="modalPageTitle"> 휴가모드 수정</span>
                                            <span id="routineCloseBtn">&times;</span><br /><br />
                                            <div id="modalContent">
                                                <!-- 동적으로 채움 (js에 device 배열) -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 휴가모드 끝 -->
                            </div>
                        </div>
                    </div>
                    <!-- routine 박스 끝 -->
                </div>
            </div>
        </section>
    </div>
</div>
<script src="./javascript/routine.js"></script>
<script src="./javascript/deviceDetailPageModal.js"></script>
<script src="./javascript/weather.js"></script>
<script src="./javascript/addDevice.js"></script>
<script src="./javascript/slider.js"></script>
</body>
</html>
