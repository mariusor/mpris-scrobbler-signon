import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Accounts 1.0
import com.jolla.settings.accounts 1.0
import org.nemomobile.social 1.0

AccountCreationAgent {
    id: root

    initialPage: Page {
        allowedOrientations: Orientation.Portrait

        Component.onDestruction: {
            if (status == PageStatus.Active) {
                // app closed while settings are open, so save settings synchronously
            }
        }

        SilicaFlickable {
            anchors.fill: parent
            contentHeight: header.height + settingsDisplay.height + Theme.paddingLarge

            StandardAccountSettingsPullDownMenu {
                onCredentialsUpdateRequested: { }
                allowSync: false
                onAccountDeletionRequested: {
                    pageStack.pop()
                }
            }

            PageHeader {
                id: header
                title: "Listenbrainz.org"
            }

            VerticalScrollDecorator {}
        }
    }
}
