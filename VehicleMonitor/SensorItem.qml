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

        Text {
            id:label
            Layout.preferredWidth: parent.width/2
//            Layout.preferredHeight: parent.height
            color: "#ffffff"
            styleColor: "#e81d1d"
            anchors.rightMargin: 20
            horizontalAlignment: Text.AlignRight
            font.pointSize: 18
        }
        Rectangle {
            Layout.preferredWidth: parent.width/2
            Layout.preferredHeight: parent.height
            color:'#00000000'

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
                color: "#C8C8C8"
                source: sensorValue
            }
        }
    }
}
