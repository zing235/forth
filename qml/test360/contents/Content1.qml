import QtQuick 2.2
import QtQuick.Layouts 1.1

Rectangle {
    width:parent.width
    height:parent.height
    color:"transparent"
    Row{
        ColumnLayout{
            RowLayout{
                Image
                {
                    id:error
//                    anchors.left: parent.left
//                    anchors.leftMargin: 50
//                    anchors.top:parent.top
//                    anchors.topMargin: 50
            //        x: 50
            //        y: 50
                    source:"error.png"
                }
                ColumnLayout{
                    Row
                    {

//                        anchors.left: parent.left
//                        anchors.leftMargin: 250
//                        anchors.top:parent.top
//                        anchors.topMargin: 55
                //        x: 250
                //        y: 55

                        Text
                        {
                            color:"black"
                            font.pointSize: 13
                            font.family: "微软雅黑"
                            text:"您的电脑已经 "
                        }

                        Text
                        {
                            color:"red"
                            font.pointSize: 15
                            font.family: "微软雅黑"
                            text:"24"
                        }

                        Text
                        {
                            color:"black"
                            font.pointSize: 13
                            font.family: "微软雅黑"
                            text:" 天没有体检，建议立即体检！"
                        }
                    }

                    Text
                    {
//                        anchors.left: parent.left
//                        anchors.leftMargin: 250
//                        anchors.top:parent.top
//                        anchors.topMargin: 100
                //        x:250
                //        y:100
                        color:"#AA000000"
                        font.pointSize: 10
                        font.family: "微软雅黑"
                        text:"系统可能已经存在大量风险，安全性和性能都在急速下降，\n建议您每天坚持电脑体检，提高电脑的安全和性能"
                    }



                     }
                      }
            SysBtn
            {
        width:166
        height:66
        picNormal: "check_normal.png"
        picHover: "check_hover.png"
        picPressed: "check_pressed.png"
        onClicked:
        {
            console.log("check btn clicked")
        }
    }
        }
        ColumnLayout{
            Image {
                id: image1
                anchors.left: parent.left
                anchors.leftMargin: 650
                anchors.top:parent.top
                anchors.topMargin: 10
        //        x: 650
        //        y: 10
                source: "register_bg.png"

                AnimatedImage
                {
                    fillMode:Image.PreserveAspectFit
                    anchors.left: parent.left
                    anchors.leftMargin: 100
                    source: "panda.gif"
                }
            }
            RowLayout
            {
//                anchors.left: parent.left
//                anchors.leftMargin: 665
//                anchors.top:parent.top
//                anchors.topMargin: 145
        //        x : 665
        //        y : 145
                spacing:30

                SysBtn
                {
                    width:50
                    height:45
                    picNormal: "firewall_open_normal.png"
                    picHover: "firewall_open_hover.png"
                    picPressed: "firewall_open_press.png"
                }
                SysBtn
                {
                    width:50
                    height:45
                    picNormal: "guard_open_normal.png"
                    picHover: "guard_open_hover.png"
                    picPressed: "guard_open_press.png"
                }
                SysBtn
                {
                    width:50
                    height:45
                    picNormal: "payinsure_close_normal.png"
                    picHover: "payinsure_close_hover.png"
                    picPressed: "payinsure_close_press.png"
                }
            }
            RowLayout
            {
                x: 658
                y: 190
                spacing: 32

                Text
                {
                    color:"#AA000000"
                    font.pointSize: 9
                    font.family: "微软雅黑"
                    text:"木马防火墙"
                }
                Text
                {
                    color:"#AA000000"
                    font.pointSize: 9
                    font.family: "微软雅黑"
                    text:"360保镖"
                }
                Text
                {
                    color:"#AA000000"
                    font.pointSize: 9
                    font.family: "微软雅黑"
                    text:"网购先赔"
                }
            }
            GridLayout
            {
//                x:680
//                y:250
                columns: 3
                rows:3
//                spacing:25

                LabelBtn
                {
                    picSrc: "net_pretext.png"
                    text:"瞒天过海"
                }
                LabelBtn
                {
                    picSrc: "mobile.png"
                    text:"指桑骂槐"
                }
                LabelBtn
                {
                    picSrc: "net_repair.png"
                    text:"声东击西"
                }
                LabelBtn
                {
                    picSrc: "net_speed.png"
                    text:"过河拆桥"
                }
                LabelBtn
                {
                    picSrc: "recovery.png"
                    text:"趁火打劫"
                }
                LabelBtn
                {
                    picSrc: "net_pretext.png"
                    text:"以逸待劳"
                }
                LabelBtn
                {
                    picSrc: "desktop.png"
                    text:"顺手牵羊"
                }
                LabelBtn
                {
                    picSrc: "game_box.png"
                    text:"借刀杀人"
                }
                LabelBtn
                {
                    picSrc: "first_add.png"
                    text:"金蝉脱壳"
                }

            }
        }













//    Rectangle
//    {
//        x: 645
//        y: 0
//        width:1
//        height:parent.height
//        color:"#BBBBBB"
//    }

//    Rectangle
//    {
//        x: 645
//        y: 130
//        width:260
//        height:1
//        color:"#BBBBBB"
//    }

//    Rectangle
//    {
//        x: 645
//        y: 220
//        width:260
//        height:1
//        color:"#BBBBBB"
//    }

//    Rectangle
//    {
//        x: 645+85
//        y: 130
//        width:1
//        height:90
//        color:"#BBBBBB"
//    }

//    Rectangle
//    {
//        x: 645+85*2
//        y: 130
//        width:1
//        height:90
//        color:"#BBBBBB"
//    }


}
}
