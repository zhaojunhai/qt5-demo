import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: ti.width
    height: ti.height
    title: qsTr("Hello World")

    TranstionItem {
        id: ti
    }
}
