import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Hyprland
import Quickshell.Widgets

RowLayout {
    Repeater {
        model: Hyprland.workspaces
        WrapperItem {
            required property HyprlandWorkspace modelData
            required property int index

            property bool actif: modelData.active

            property int idWs: modelData.id
            property string nameWs: modelData.name

            function goToWorkspace() {
                modelData.activate();
            }

            Button {
                id: index
                highlighted: actif
                text: `${modelData.id}`
            }
            Component.onCompleted: {
                index.clicked.connect(goToWorkspace);
            }
        }
    }
    // Text {
    //     text: Hyprland.focusedWorkspace.name
    // }
}
