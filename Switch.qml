import QtQuick 2.12

Item {
    id: root
    property bool checked: false
    property alias color: runner.color
    property color backgroundColor
    property color dimmedColor
    property alias borderRadius: background.radius

    function trigger(){checked = !checked;}

    height: width / 2
    borderRadius: height / 2

    Rectangle{
        id: background
        anchors.fill:parent
        color: root.enabled ? root.backgroundColor : root.dimmedColor
    }

    Rectangle {
      id: runner
      width: root.width / 2
      height: parent.height
      radius: background.radius

      Behavior on x {SpringAnimation { spring: 5; damping: .2 } }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.trigger()
    }

    state: checked ? "on" : "off"
    states: [
        State {
            name: "off"
            PropertyChanges {
                target: runner
                x: 0

            }
        },
        State {
            name: "on"
            PropertyChanges {
                target: runner
                x: root.width - runner.width
            }
        }
    ]
}
