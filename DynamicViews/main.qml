import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    height: 300
    width: 600
    visible: true

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }
        MyCP5{}
    }
}
