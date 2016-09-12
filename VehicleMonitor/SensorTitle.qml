import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Item {
    property alias text: title.text
    Label {
        id: title
        text:qsTr("环境指标")
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height-10

        font {
            pointSize: 30
            bold:true
        }
        color: "white"
    }
    Rectangle {
//        anchors.top: title.bot2om
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.rightMargin: 10

        id: horizontalRule
        color: "white"
        radius: 5
        height: 2
    }
}
