import QtQuick 2.12
import QtQuick.Window 2.12
import MyConfiguration 1.0

Window {
    visible: true
    width: 480
    height: 600
    title: qsTr("加密工具")

    MyConfiguration { id: myConfiguration }

    Image {
        id: image
        x: 190
        y: 88
        width: 100
        height: 100
        source: "encryption.jpeg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: element
        x: 186
        y: 209
        width: 108
        height: 34
        text: qsTr("加密工具")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
    }

    Text {
        id: element1
        x: 194
        y: 249
        width: 92
        height: 29
        text: qsTr("版本号：1.0")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
    }

    Rectangle {
        id: rectangle
        x: 70
        y: 343
        width: 340
        height: 73
        color: "#ffffff"
        radius: 4
        border.width: 1

        TextInput {
            id: textInput
            text: qsTr("Text Input")
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: rectangle1
        x: 70
        y: 422
        width: 340
        height: 73
        color: "#ffffff"
        radius: 4
        border.width: 1

        Text {
            id: element2
            text: qsTr(myConfiguration.getCtext(textInput.text))
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            font.pixelSize: 12
        }
    }

}

/*##^##
Designer {
    D{i:6;anchors_height:20;anchors_width:80;anchors_x:80;anchors_y:27}D{i:8;anchors_x:121;anchors_y:19}
}
##^##*/
