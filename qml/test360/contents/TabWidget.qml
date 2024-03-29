import QtQuick 2.2
import QtQuick.Controls 1.1
import Camera1394 1.0
Rectangle
{
    id: tabwidget
    color: "transparent"

    function currentChanged(curIndex)//切换table
    {
        content.currentChangedzz(curIndex)
    }

    Row
    {
        id: toolbar
        spacing: 12
        anchors.left: tabwidget.left
        anchors.leftMargin: 10
        property int current: 0
        onCurrentChanged:setCurrentToolBtn()

        function setCurrentToolBtn()//切换table
        {
            for(var i = 0; i < toolbar.children.length; i++)
            {
                toolbar.children[i].state = (toolbar.current == i ? 'checked' : 'leave')
            }
            tabwidget.currentChanged(toolbar.current)
        }

        ToolBtn
        {
            index:0
            state:"checked"
            picSrc: "ico_Examine.png"
            btnText:"电脑体检"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:1
            picSrc: "ico_dsmain.png"
            btnText:"粗选相机"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:2
            picSrc: "ico_SysRepair.png"
            btnText:"系统修复"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:3
            picSrc: "ico_TraceCleaner.png"
            btnText:"电脑清理"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:4
            picSrc: "ico_SpeedupOpt.png"
            btnText:"优化加速"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:5
            picSrc: "ico_expert.png"
            btnText:"电脑专家"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:6
            picSrc: "ico_diannaomenzhen.png"
            btnText:"电脑门诊"
            onClicked:toolbar.current=btnIndex
        }
        ToolBtn
        {
            index:7
            picSrc: "ico_softmgr.png"
            btnText:"软件管家"
            onClicked:toolbar.current=btnIndex
        }
    }

    Rectangle
    {
        id:content
        width:tabwidget.width
        anchors.top: toolbar.bottom
        anchors.topMargin: -5
        height: parent.height
        color:"white"

        property int current: 0

        function currentChangedzz(curIndex)
        {
            content.children[curIndex].x=width
            content.children[curIndex].state='active'
            content.children[current].state='hide'
            current = curIndex
        }

        MainWidget
        {
            id:widget1
            state:"active"

            Content1
            {
            }
        }


        MainWidget
                {
                    Rectangle
                    {
                        anchors.fill: parent
                        anchors.margins: 10
                        color:"#99FF0000"
                        Camera1394 {
                            id: camera1394test
                            anchors.rightMargin: -23
                            anchors.bottomMargin: -20
                            anchors.leftMargin: 23
                            anchors.topMargin: 20
                            anchors.fill: parent
                        }
                        Timer{
                            id: cameratimer
                            interval: 100;
                            repeat: true
                            onTriggered: {
                                time.text = Date().toString()
                                camera1394test.updatecamera()
                            }
                        }
                        Button {
                            id: button1
                            text: "Startcamera"
                            iconSource: qsTr("")
                            activeFocusOnPress: false
                            checked: false
                            anchors.left: parent.left
                            anchors.leftMargin: 0
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            onClicked:{
                                camera1394test.startcamera()
                                cameratimer.start()
                            }

                        }
                        Text {
                            id: time
                            text: "time"
                            anchors.right: parent.right
                            anchors.rightMargin: 0
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            style: Text.Raised
                            font.pointSize: 15
                        }
                    }
                }

//        MainWidget
//        {
//            Rectangle
//            {
//                anchors.fill: parent
//                anchors.margins: 50
//                color:"#99FF0000"
//                Text
//                {
//                    font.pointSize: 50
//                    font.family: "微软雅黑"
//                    color:"#FFFFFF"
//                    anchors.centerIn: parent
//                    text:"十步杀一人"
//                }
//            }
//        }
        MainWidget
        {
            Rectangle
            {
                anchors.fill: parent
                anchors.margins: 10
                color:"#BB00FF00"
                Text
                {
                    font.pointSize: 100
                    font.family: "微软雅黑"
                    color:"#FFFFFF"
                    anchors.centerIn: parent
                    text:"，"
                }
            }
        }
        MainWidget
        {
            Rectangle
            {
                anchors.fill: parent
                anchors.margins: 10
                color:"#990000FF"
                Text
                {
                    font.pointSize: 50
                    font.family: "微软雅黑"
                    color:"#FFFFFF"
                    anchors.centerIn: parent
                    text:"千里不留行"
                }
            }
        }
        MainWidget
        {
            Rectangle
            {
                anchors.fill: parent
                anchors.margins: 10
                color:"#FFFF9900"
                Text
                {
                    font.pointSize: 50
                    font.family: "微软雅黑"
                    color:"#FFFFFF"
                    anchors.centerIn: parent
                    text:"。"
                }
            }
        }
        MainWidget
        {
            Rectangle
            {
                anchors.fill: parent
                anchors.margins: 10
                color:"#FF00FFFF"
                Text
                {
                    font.pointSize: 50
                    font.family: "微软雅黑"
                    color:"#FFFFFF"
                    anchors.centerIn: parent
                    text:"事了拂衣去"
                }
            }
        }
        MainWidget
        {
            Rectangle
            {
                anchors.fill: parent
                anchors.margins: 10
                color:"#99FF00FF"
                Text
                {
                    font.pointSize: 50
                    font.family: "微软雅黑"
                    color:"#FFFFFF"
                    anchors.centerIn: parent
                    text:"，"
                }
            }
        }
        MainWidget
        {
            Rectangle
            {
                anchors.fill: parent
                anchors.margins: 10
                color:"#FFC0C0C0"
                Text
                {
                    font.pointSize: 50
                    font.family: "微软雅黑"
                    color:"#FFFFFF"
                    anchors.centerIn: parent
                    text:"深藏功与名。"
                }
            }
        }
    }
}
