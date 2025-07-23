import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: bar
            property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 30

            Clock {
                anchors.centerIn: parent

                // no more time binding
            }

            Sleep {
                id: sleepbtn
                anchors.right: parent.right
            }

            Luminosity {
                anchors.right: sleepbtn.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 5
            }

            //discord
            //steam
            //sleep
            //network
            //kde connect

            RowLayout {
                id: ser
                Text {
                    text: "Bonjour"
                }
                Text {
                    text: "salut"
                }

                property bool showThing: false

                property int clicks: 0

                function updateText() {
                    (clicks++)++;
                    butt.text = `Salut ${clicks}`;
                }

                Button {
                    id: butt
                    text: "Salud"
                }

                Component.onCompleted: {
                    butt.clicked.connect(updateText);
                }
                Rectangle {
                    id: child

                    // Set the size of the child item relative to the actual size
                    // of the parent item. If the parent item is constrained
                    // or stretched the child's position and size will be similarly
                    // constrained.
                    // x: parent.margin
                    // y: parent.margin
                    width: parent.width - parent.margin * 2
                    height: parent.height - parent.margin * 2

                    color: "red"

                    // The child's implicit / desired size, which will be respected
                    // by the container item as long as it is not constrained
                    // or stretched.
                    implicitWidth: 80
                    implicitHeight: 20
                    Text {
                        anchors.centerIn: parent
                        text: "Cl"
                    }
                }
                Hyprland {}
            }
        }
    }
}
