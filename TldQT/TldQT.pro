#-------------------------------------------------
#
# Project created by QtCreator 2015-05-23T00:11:24
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = TldQT
TEMPLATE = app

INCLUDEPATH +=  src/opentld/main \
                src/libopentld/tld \
                src/libopentld/mftracker \
                src/3rdparty/cvblobs \
                src/libopentld/imacq \
                /usr/local/include/opencv/ \
                /home/vinicius/Iniciacao/OpenTLD/gnebehay/OpenTLD/src/3rdparty/libconfig/


SOURCES += main.cpp\
        mainwindow.cpp \
    src/opentld/main/Config.cpp \
    src/opentld/main/Gui.cpp \
    src/opentld/main/Main.cpp \
    src/opentld/main/Settings.cpp \
    src/opentld/main/Trajectory.cpp
    src/opentld/OpenTLD.cpp

#Libs Opentld
unix:!macx: LIBS += -L$$PWD/../lib/ -lopentld

INCLUDEPATH += $$PWD/../
DEPENDPATH += $$PWD/../

unix:!macx: PRE_TARGETDEPS += $$PWD/../lib/libopentld.a

#Libs Main
unix:!macx: LIBS += -L$$PWD/../lib/ -lmain
unix:!macx: PRE_TARGETDEPS += $$PWD/../lib/libmain.a

#Lib Libsblobs
unix:!macx: LIBS += -L$$PWD/../lib/ -lcvblobs
unix:!macx: PRE_TARGETDEPS += $$PWD/../lib/libcvblobs.a

#Lib
unix:!macx: LIBS += -L$$PWD/../lib/ -lconfig++
unix:!macx: PRE_TARGETDEPS += $$PWD/../lib/libconfig++.a


LIBS += -L/usr/local/lib -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video \
        -lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_flann -lopencv_nonfree

HEADERS  += mainwindow.h \
    src/opentld/main/Config.h \
    src/opentld/main/Gui.h \
    src/opentld/main/Main.h \
    src/opentld/main/Settings.h \
    src/opentld/main/Trajectory.h

FORMS    += mainwindow.ui \
    src/opentld/qopentld/ConfigDialog.ui

