import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 1280
    height: 800
    title: qsTr("Hello World")

    RowLayout {
        id: layout
        property int qualWidth: 500
        property int qualHeigth: 390
        spacing: 10
        Rectangle {
            color:"black"

            Layout.preferredWidth: 1000
            Layout.preferredHeight: 780

            ShowItem{ id: showItem1;position: 0 }
            ShowItem{ id: showItem2;position: 1 }
            ShowItem{ id: showItem3;position: 2 }
            ShowItem{ id: showItem4;position: 3 }

            Keys.enabled: true
            focus:true
            Keys.onPressed: {
                showItem1.pressed(event)
                showItem2.pressed(event)
                showItem3.pressed(event)
                showItem4.pressed(event)
            }
        }
        Rectangle {
            id: sensorArea
            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: "#00274d";
                }
                GradientStop {
                    position: 0.50;
                    color: "#00223d";
                }
                GradientStop {
                    position: 1.00;
                    color: "#00274d";
                }
            }

            ListModel {
                id: devParam
                ListElement { name:"环境温度";unit:"摄氏度"}
                ListElement { name:"环境气压";unit:"帕斯卡"}
                ListElement { name:"氧气浓度";unit:"%"}
                ListElement { name:"一氧化碳浓度";unit:"%"}
                ListElement { name:"硫化氢浓度";unit:"%"}
                ListElement { name:"硫化氢浓度";unit:"%"}
                ListElement { name:"甲烷浓度";unit:"%"}
            }

            ListModel {
                id:envParam
                ListElement { name:"电池电量";unit:"%"}
                ListElement { name:"车厢温度";unit:"摄氏度"}
                ListElement { name:"行驶速度";unit:"km/h"}
            }

            Layout.preferredWidth: 270
            Layout.preferredHeight: 780
            ColumnLayout {
                width: 270
                height: 270

                Rectangle {
                    width:parent.width
                    height: 25
                    opacity: 0.0
                }

                SensorTitle {
                    text:qsTr("环境指标")

                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 45
                    Layout.alignment: Qt.AlignTop
                }

                Repeater {
                    model: devParam
                    SensorItem {
                        Layout.preferredWidth: sensorArea.width
                        Layout.alignment: Qt.AlignTop
                        Layout.preferredHeight: 25
                        text: name+":"
                        value:"25" + " " +unit
                    }
                }

                Rectangle {
                    width:parent.width
                    height: 30
                    opacity: 0.0
                }

                SensorTitle {
                    text:qsTr("运行指标")
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 45
                    Layout.alignment: Qt.AlignTop
                }

                Repeater {
                    model: envParam
                    SensorItem {
                        Layout.preferredWidth: sensorArea.width
                        Layout.alignment: Qt.AlignTop
                        Layout.preferredHeight: 25
                        text: name+":"
                        value:"25" + " " +unit
                    }
                }
            }
        }
    }

}
