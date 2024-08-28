import QtQuick
import QtQuick.Controls
import qml_pipe

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Pipe Example")

    // Fixed size
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

    Pipe{
        id : process
    }

    Rectangle{
        id: left_side
        anchors.left: parent.left
        width: parent.width / 2
        height: parent.height
        color: "orange"

        TextField{
            id: left_field
            x: 0
            y: 0
            width: parent.width
            height: 40
        }

        Button{
            id: left_click
            x : 0
            y : 50
            text: "Button_1"
            width: parent.width
            height: 40
            onClicked: process.data_1 = left_field.text
        }

        Text {
            id: left_text
            x : 0
            y : 100
            width: parent.width
            height: 40
            text: process.data_1
            font.family: "Helvetica"
            font.pointSize: 12
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle{
        id: right_side
        anchors.right: parent.right

        width: parent.width / 2
        height: parent.height
        color: "green"

        TextField{
            id: right_field
            x: 0
            y: 0
            width: parent.width
            height: 40
        }

        Button{
            id: right_click
            x : 0
            y : 50
            text: "Button_2"
            width: parent.width
            height: 40
            onClicked: process.data_2 = right_field.text
        }

        Text {
            id: right_text
            x : 0
            y : 100
            width: parent.width
            height: 40
            text: process.data_2
            font.family: "Helvetica"
            font.pointSize: 12
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
