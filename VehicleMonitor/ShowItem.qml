import QtQuick 2.0

    Rectangle {
        id:demo

        border.width: 3
        border.color: "black"

        //位置 0-3
        property int position: 1

        property int normalWidth: 500
        property int normalHeight: 390

        property int mainWidth: 1010
        property int mainHeight: 550

        property int miniWidth: 336
        property int miniHeight: 200

        property int miniY: 550

        Text {
            text: "This is a Demo:"+position
            anchors.centerIn: parent
            font {
                pointSize: 30
                bold:true
            }
        }

        function pressed(event) {
            var key = event.key
            if(key==Qt.Key_0){
                switch(position){
                case 0:state="mainLayout";break
                case 1:state="miniLayout0";break
                case 2:state="miniLayout1";break
                case 3:state="miniLayout2";break
                }
                event.accept=true
            } else if(key==Qt.Key_1) {
                switch(position){
                case 0:state="miniLayout0";break
                case 1:state="mainLayout";break
                case 2:state="miniLayout1";break
                case 3:state="miniLayout2";break
                }
                event.accept=true
            } else if(Qt.Key_2 == key) {
                switch(position){
                case 0:state="miniLayout0";break
                case 1:state="miniLayout1";break
                case 2:state="mainLayout";break
                case 3:state="miniLayout2";break
                }
                event.accept=true
            } else if(key==Qt.Key_3) {
                switch(position){
                case 0:state="miniLayout0";break
                case 1:state="miniLayout1";break
                case 2:state="miniLayout2";break
                case 3:state="mainLayout";break
                }
                event.accept=true
            } else if(key==Qt.Key_O) {
                state="normalLayout"
                event.accept=true
            }
        }

        states:[
            State {
                name:"normalLayout"
                when:demo.visible
                PropertyChanges {
                    target:demo
                    x:if(position == 0 || position == 1) 0;else 505
                    y:if(position == 1 || position == 3) 395;else 0
                    width: normalWidth
                    height: normalHeight
                    color:"green"
                }
            },
            State {
                name:"mainLayout"
                PropertyChanges {
                    target:demo
                    x:0
                    y:0
                    width: mainWidth
                    height: mainHeight
                    color:"red"
                }
            },
            State {
                name:"miniLayout0"
                PropertyChanges {
                    target:demo
                    x:0
                    y:miniY
                    width: miniWidth
                    height: miniHeight
                    color:"blue"
                }
            },
            State {
                name:"miniLayout1"
                PropertyChanges {
                    target:demo
                    x:337
                    y:miniY
                    width: miniWidth
                    height: miniHeight
                    color:"blue"
                }
            },
            State {
                name:"miniLayout2"
                PropertyChanges {
                    target:demo
                    x:674
                    y:miniY
                    width: miniWidth
                    height: miniHeight
                    color:"blue"
                }
            }
        ]
    }
