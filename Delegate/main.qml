import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    height: 300
    width: 600

    MainForm {
        anchors.fill: parent
        QDelegate{}
        QDelegate2{
            x:120
            y:0
        }
    }
}
