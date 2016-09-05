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
            Layout.preferredWidth: 1000
            Layout.preferredHeight: 780
            GridLayout {
                columns: 2
                rows:2
                Rectangle {
                    Layout.preferredWidth: layout.qualWidth
                    Layout.preferredHeight: layout.qualHeigth
                    Text {
                        text: "This a text"
                    }
                }
                Rectangle {
                    Layout.preferredWidth: layout.qualWidth
                    Layout.preferredHeight: layout.qualHeigth
                    Text {
                        text: "This a text"
                    }
                }
                Rectangle {
                    Layout.preferredWidth: layout.qualWidth
                    Layout.preferredHeight: layout.qualHeigth
                    Text {
                        text: "This a text"
                    }
                }
                Rectangle {
                    Layout.preferredWidth: layout.qualWidth
                    Layout.preferredHeight: layout.qualHeigth
                    Text {
                        text: "This a text"
                    }
                }
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

            Layout.preferredWidth: 270
            Layout.preferredHeight: 780
            ColumnLayout {
                width: 270
                height: 270

                Label {
                    id: title
                    text:qsTr("环境指标")
                    horizontalAlignment: Text.AlignHCenter

                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 35
                    Layout.alignment: Qt.AlignTop

                    font {
                        pointSize: 30
                        bold:true
                    }
                    color: "white"
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

                Label {
                    id: dev_title
                    text:qsTr("设备运行指标")
                    horizontalAlignment: Text.AlignHCenter

                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 35
                    Layout.alignment: Qt.AlignTop

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.info("Width:"+width+"\t"+"Heigth:"+height)
                        }
                    }

                    font {
                        pointSize: 30
                        bold:true
                    }
                    color: "white"
                }

                SensorItem {
                    Layout.preferredWidth: sensorArea.width
                    Layout.alignment: Qt.AlignTop
                    Layout.preferredHeight: 25
                    text: qsTr("车厢温度:")
                    value:"25%"
                }
                SensorItem {
                    Layout.preferredWidth: sensorArea.width
                    Layout.alignment: Qt.AlignTop
                    Layout.preferredHeight: 25
                    text: qsTr("行驶速度:")
                    value:"90m/s"
                }
                SensorItem {
                    Layout.preferredWidth: sensorArea.width
                    Layout.preferredHeight: 25
                    text: qsTr("电池电量:")
                    value:"91%"
                }
            }
        }
    }

}
