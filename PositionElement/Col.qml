import QtQuick 2.0

DarkSquare{
    id:root
    width:120
    height: 240

    Grid {
        id: column
        anchors.centerIn: parent
        spacing:8
        rows:2
        columns: 2
        RedSquare{}
        RedSquare{}
        RedSquare{}
        RedSquare{}
    }
}
