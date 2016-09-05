import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0

Item {
    property alias text: label.text
    property alias value: sensorValue.text

    RowLayout {
        id: row
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin:10

        //        Rectangle {
        //            id: bg
        //            anchors.fill: parent
        //            radius: 10
        //            opacity: 0.0
        //            MouseArea {
        //                anchors.fill: parent
        //                onClicked: {
        //                    console.info("Width:"+width)
        //                }
        //            }
        //        }

        Text {
            id:label
            Layout.preferredWidth: parent.width/2
            Layout.preferredHeight: parent.height
            color: "#ffffff"
            styleColor: "#e81d1d"
            anchors.rightMargin: 20
            horizontalAlignment: Text.AlignRight
            font.pointSize: 18
        }
        Rectangle {
            id: valueItem
            Layout.preferredWidth: parent.width/2
            Layout.preferredHeight: parent.height
            radius: 25.0
            color:"#00CC00"
            LinearGradient {
                source:valueItem
                anchors.fill: parent
                start:Qt.point(0,0)
                end:Qt.point(width,0)
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00CC33";}
                    GradientStop {position: 0.5; color: "#00CC00";}
                    GradientStop {position: 1.0; color: "#00CC33";}
                }
            }
            Text {
                id: sensorValue
                anchors.fill: parent
                anchors.leftMargin: 20
                horizontalAlignment: Text.AlignLeft
                color: "#ffffff"
                font.pointSize: 18
                font.bold: true
            }
            DropShadow {
                anchors.fill: sensorValue
                horizontalOffset: 3
                verticalOffset: 3
                radius: 8.0
                samples: 16
                color: "#80000000"
                source: sensorValue
            }
        }
    }

}
