# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = mpris-scrobbler-signon

CONFIG += sailfishapp

SOURCES += src/mpris-scrobbler-signon.cpp

DISTFILES += qml/mpris-scrobbler-signon.qml \
    rpm/mpris-scrobbler-signon.changes.in \
    rpm/mpris-scrobbler-signon.changes.run.in \
    rpm/mpris-scrobbler-signon.spec \
    rpm/mpris-scrobbler-signon.yaml \
    translations/*.ts \
    providers/mpris-scrobbler-service.provider \
    services/mpris-scrobbler-lastfm.service \
    services/mpris-scrobbler-librefm.service \
    services/mpris-scrobbler-listenbrainz.service

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172 scalable

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n jolla-settings-accounts


# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/mpris-scrobbler-signon-de.ts
