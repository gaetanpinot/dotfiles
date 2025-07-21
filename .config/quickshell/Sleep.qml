import QtQuick
import Quickshell
import Quickshell.Io
import QtQuick.Controls
import Quickshell.Widgets

WrapperItem {
    id: sleep

    function sleep() {
        sleepProcess.running = true;
    }

    Button {
        id: sleepBtn
        text: "sleep"
    }

    Process {
        id: sleepProcess
        running: false
        command: ["systemctl", "suspend"]
    }
    Component.onCompleted: {
        sleepBtn.clicked.connect(sleep);
    }
}
