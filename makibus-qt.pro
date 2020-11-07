#-------------------------------------------------
#
# Project created by QtCreator 2020-11-07T09:10:37
#
#-------------------------------------------------

QT       += dbus xml

QT       -= gui

TARGET = makibus-qt
TEMPLATE = lib

DEFINES += MAKIBUSQT_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        qibusattribute.cpp \
        qibusattrlist.cpp \
        qibusbus.cpp \
        qibuscomponent.cpp \
        qibusconfig.cpp \
        qibusconfigadaptor.cpp \
        qibusconfigproxy.cpp \
        qibusconfigservice.cpp \
        qibusdbusproxy.cpp \
        qibusengine.cpp \
        qibusengineadaptor.cpp \
        qibusenginedesc.cpp \
        qibusenginefactory.cpp \
        qibusfactoryadaptor.cpp \
        qibusibusproxy.cpp \
        qibusinputcontext.cpp \
        qibusinputcontextproxy.cpp \
        qibuslookuptable.cpp \
        qibusobject.cpp \
        qibusobservedpath.cpp \
        qibuspaneladaptor.cpp \
        qibusproperty.cpp \
        qibusproplist.cpp \
        qibusserializable.cpp \
        qibustext.cpp

HEADERS += \
        qibus.h \
        qibusattribute.h \
        qibusattrlist.h \
        qibusbus.h \
        qibuscomponent.h \
        qibusconfig.h \
        qibusconfigadaptor.h \
        qibusconfigproxy.h \
        qibusconfigservice.h \
        qibusdbusproxy.h \
        qibusengine.h \
        qibusengineadaptor.h \
        qibusenginedesc.h \
        qibusenginefactory.h \
        qibusfactoryadaptor.h \
        qibusibusproxy.h \
        qibusinputcontext.h \
        qibusinputcontextproxy.h \
        qibuskeysyms.h \
        qibuslookuptable.h \
        qibusobject.h \
        qibusobservedpath.h \
        qibuspaneladaptor.h \
        qibuspointer.h \
        qibusproperty.h \
        qibusproplist.h \
        qibusserializable.h \
        qibustext.h \
        qibustypes.h

unix {
    target.path = "/Library/Input Methods/MakIBus.app/Contents/Frameworks"
    INSTALLS += target
}
