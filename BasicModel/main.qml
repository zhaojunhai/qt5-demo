import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }

        MyCP2{
            anchors.centerIn: parent
        }
    }
}
