import QtQuick
import QtQuick.Layouts
import Quickshell.Io
import QtQuick.Controls
import Quickshell
import Quickshell.Widgets

WrapperItem {
    RowLayout {
        Text {
            id: lumstatus
            text: ""
        }
        Slider {
            id: lumSlider
            from: 2
            to: 100
            value: 100
        }
    }

    Process {
        id: luminosityProc
        running: false
        command: ["hyprctl", "hyprsunset", "gamma", `${lumSlider.value}`]
        stdout: StdioCollector {
            onStreamFinished: luminosityProc.running = false
        }
    }
    function changeLuminosity() {
        luminosityProc.running = true;
    }
    Component.onCompleted: {
        lumSlider.moved.connect(changeLuminosity);
    }
}
