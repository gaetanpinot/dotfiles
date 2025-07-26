import QtQuick
import Quickshell
import Quickshell.Io
import QtQuick.Controls
import Quickshell.Widgets
import QtQuick.Layouts

WrapperItem {
    id: sleep

    function sleepFn() {
        sleepProcess.running = true;
        popupSleep.visible = false;
    }

    function togglePopup() {
        popupSleep.visible = !popupSleep.visible;
    }

    Button {
        id: sleepBtn
        text: "Sleep"
    }

    Process {
        id: sleepProcess
        running: false
        command: ["systemctl", "suspend"]
    }
    Component.onCompleted: {
        sleepBtn.clicked.connect(togglePopup);
        sleepConfirm.clicked.connect(sleepFn);
        sleepDeny.clicked.connect(togglePopup);
    }

    PopupWindow {
        id: popupSleep
        anchor.window: bar
        anchor.rect.x: parentWindow.width / 2 - width / 2
        anchor.rect.y: parentWindow.height
        visible: false
        property real margin: 5
        implicitWidth: sleepConfirm.width + sleepDeny.width + margin
        implicitHeight: childrenRect.height + margin
        RowLayout {
            Button {
                id: sleepConfirm
                text: "Oui"
            }
            Button {
                id: sleepDeny
                text: "Non"
            }
        }
    }
}
