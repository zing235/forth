import QtQuick 2.2
import "contents"
import QtQuick.Controls 1.1

Rectangle {
     id: page
     width: 900; height: 600
     color: "#00000000"

     Image {
         id: skinpic
         x: 0
         y: 0
         width: 900
         height: 600
         fillMode: Image.TileHorizontally
         sourceSize.height: 600
         sourceSize.width: 800
         source: "contents/background_mainwnd.jpg"

         Text {
             id: title
             x: 10
             y: 10
             width: 125
             height: 12
             color: "#ffffff"
             text: "360安全卫士"
             font.pointSize: 9
             font.family: "微软雅黑"
             font.pixelSize: 12
         }

//         MouseArea {//拖拽改变window窗口位置
//             anchors.fill: parent
//             property variant previousPosition
//             onPressed: {
//                 previousPosition = Qt.point(mouseX, mouseY)
//             }
//             onPositionChanged: {
//                 if (pressedButtons == Qt.LeftButton) {
//                     var dx = mouseX - previousPosition.x
//                     var dy = mouseY - previousPosition.y
//                     window.pos = Qt.point(window.pos.x + dx,
//                                                 window.pos.y + dy)
//                 }
//             }
//         }

         TabWidget
         {
             id: mainwindow
             x: 0;
             y: 40;
             width:900
             height:600
         }

         Image
         {
             id: logo
             x: 720
             y: 40
             source: "contents/logo.png"
         }

         Image
         {
             id: medal
             x: 720
             y: 0
             source: "contents/medal.png"
         }

         SysBtnGroup
         {
             id: sysbtngrp
             x: 755
             y: 0

//             onMin: window.showMinimized()
//             onClose: window.close()
        }


     }
}

