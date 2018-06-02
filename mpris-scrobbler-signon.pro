TARGET = mpris-scrobbler-signon

CONFIG += sailfishapp

SOURCES += src/mpris-scrobbler-signon.cpp

DISTFILES += ui/*.qml \
    rpm/mpris-scrobbler-signon.changes.in \
    rpm/mpris-scrobbler-signon.changes.run.in \
    rpm/mpris-scrobbler-signon.spec \
    rpm/mpris-scrobbler-signon.yaml \
    translations/*.ts \
    providers/*.provider \
    services/*.service \
    icons/108x108/*.png \
    icons/128x128/*.png \
    icons/172x172/*.png \
    icons/86x86/*.png \
    icons/scalable/*.svg

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172 scalable

# to disable building translations every time, comment out the
# following CONFIG line
#CONFIG += sailfishapp_i18n


# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/mpris-scrobbler-signon-de.ts
