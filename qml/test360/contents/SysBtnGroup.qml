import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
Row
{
    id: sysbtngroup
    spacing: 0

//    signal skin
//    signal feedback
//    signal menu
//    signal min
//    signal close

    SysBtn
    {
        id:skin
        picHover: "skin_hover.png"
        picNormal: "skin_normal.png"
        picPressed: "skin_pressed.png"
        onClicked:
        {
            console.log("skin btn clicked")
            sysbtngroup.skin()
        }
    }

    SysBtn
    {
        id:feedback
        picHover: "feedback_hover.png"
        picNormal: "feedback_normal.png"
        picPressed: "feedback_pressed.png"
        onClicked:
        {
            console.log("feedback btn clicked")
            sysbtngroup.feedback()
        }
    }
    Button{//button 可以引申出menu
        id:menu
        menu: Menu{
             MenuItem { text: "This Button" }
        }
        style:ButtonStyle
        {
             background: BorderImage
             {
             id:buttonimage
             source:control.pressed ? "menu_pressed.png" : "menu_normal.png"
             }
        }
}



//    SysBtn
//    {
//        id:menu
//        picHover: "menu_hover.png"
//        picNormal: "menu_normal.png"
//        picPressed: "menu_pressed.png"


//        onClicked:
//        {
//            console.log("menu btn clicked")
//            sysbtngroup.menu()
//        }
//    }

    SysBtn
    {
        id:min
        picHover: "min_hover.png"
        picNormal: "min_normal.png"
        picPressed: "min_pressed.png"
        onClicked:
        {
            console.log("min btn clicked")
            sysbtngroup.min()
        }
    }

    SysBtn
    {
        id:close
        picHover: "close_hover.png"
        picNormal: "close_normal.png"
        picPressed: "close_pressed.png"
        onClicked:
        {
            console.log("close btn clicked")
            //sysbtngroup.close()
            Qt.quit()
        }
    }
}
