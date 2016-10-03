QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc
QMAKE_MAC_SDK = macosx10.12

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    qtquickcontrols2.conf
