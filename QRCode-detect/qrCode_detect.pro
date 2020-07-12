QT       += core gui widgets

#greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
DEFINES += CONFIG_CTRL_IFACE
DEFINES += DEVICE_EVB

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


INCLUDEPATH +=\
            ../\
            ../../\
INCLUDEPATH += /usr/include/glib-2.0
INCLUDEPATH += /usr/lib/x86_64-linux-gnu/glib-2.0/include
INCLUDEPATH += /usr/include/gstreamer-1.0
INCLUDEPATH += /usr/lib/x86_64-linux-gnu/gstreamer-1.0/include
LIBS += -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0 -lgstvideo-1.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    ../qrcode.cpp\
    ../qt/QZBar.cpp\


HEADERS += \
    mainwindow.h\
    ../qrcode.h\

FORMS += \
    mainwindow.ui

# Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target



#gstreamer LIBS
CONFIG += link_pkgconfig
GST_VERSION = 1.0
PKGCONFIG += \
    gstreamer-$$GST_VERSION \
    gstreamer-base-$$GST_VERSION \
    gstreamer-audio-$$GST_VERSION \
    gstreamer-video-$$GST_VERSION \
    gstreamer-pbutils-$$GST_VERSION

INCLUDEPATH += $$PWD/../../../../../../usr/local/include/gstreamer-1.0/gst
DEPENDPATH += $$PWD/../../../../../../usr/local/include/gstreamer-1.0/gst

#PKGCONFIG +=opencv \

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_core

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_highgui

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_imgproc

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_imgcodecs

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_shape

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_video

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/opencv3.4.6/lib/ -lopencv_videoio

INCLUDEPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include
DEPENDPATH += $$PWD/../../../../../../usr/local/opencv3.4.6/include

#二维码 扫描和生成库文件
unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/zbar/lib/ -lzbar

INCLUDEPATH += $$PWD/../../../../../../usr/local/zbar/include
DEPENDPATH += $$PWD/../../../../../../usr/local/zbar/include

unix:!macx: LIBS += -L$$PWD/../../../../../../usr/local/qrencode/lib/ -lqrencode

INCLUDEPATH += $$PWD/../../../../../../usr/local/qrencode/include
DEPENDPATH += $$PWD/../../../../../../usr/local/qrencode/include
