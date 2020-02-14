import QtQuick 2.0

Rectangle {
    id: root
    property string text: ""
    property font textFont
    property color textColor: "#000000"
    property color pressedColor: "#dddddd"
    property color dimmedColor: "#888888"
    property real padding
    property real borderRadius
    property bool isPressed: false

    signal clicked()
    signal pressed()
    signal released()
    signal pressAndHold()

    Rectangle {
        id: button
        height: parent.height
        width: height
        radius: height / 2
        color: root.enabled ? root.pressedColor : root.dimmedColor
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
