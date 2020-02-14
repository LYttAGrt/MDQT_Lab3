import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    visible: true
    width: 720
    height: 1280
    title: qsTr("Lab3")

    property var switcher: [redSwitch.checked, blueSwitch.checked, yellowSwitch.checked, greenSwitch.checked, blackSwitch.checked]
    function controller(callerId){
        // TODO
    }

    LineCanvas {
        id: lineCanvas
        anchors.fill: parent
    }

    Row {
        anchors.bottom: parent.bottom
        height: parent.height / 10

        Switch {
            id: redSwitch
            width: height*2
            height: parent.height
            color: "red"
            backgroundColor: "gray"
            dimmedColor: "white"
        }
        Switch {
            id: blueSwitch
            width: height*2
            height: parent.height
            color: "blue"
            backgroundColor: "gray"
            dimmedColor: "gray"
        }
        Switch {
            id: greenSwitch
            width: height*2
            height: parent.height
            color: "green"
            backgroundColor: "gray"
            dimmedColor: "white"
        }
        Switch {
            id: yellowSwitch
            width: height*2
            height: parent.height
            color: "yellow"
            backgroundColor: "gray"
            dimmedColor: "gray"
        }
        Switch {
            id: blackSwitch
            width: height*2
            height: parent.height
            color: "black"
            backgroundColor: "gray"
            dimmedColor: "gray"
        }
    }

    Column {
        verticalCenter: parent.height / 2
        anchors.right: parent.right
        width: parent / 10
        height: parent.height

        Button {
            id: btnPlus
            width: parent.width
            height: width
            text: "+"
            textColor: "#000000"
        }
        Button {
            id: btnMinus
            width: parent.width
            height: width
            text: "-"
            textColor: "#000000"
        }
        Button {
            id: btnRemove
            width: parent.width
            height: width
            text: "X"
            textColor: "#000000"
        }
    }
}
