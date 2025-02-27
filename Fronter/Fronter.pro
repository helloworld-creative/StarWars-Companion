QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../Camera_module/camera_module.cpp \
    ../DL_module/DL_module.cpp \
    ../subwidget/subwidget.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    ../Camera_module/camera_module.h \
    ../DL_module/DL_module.h \
    ../subwidget/subwidget.h \
    mainwindow.h

FORMS += \
    ../subwidget/subwidget.ui \
    mainwindow.ui


# 附加头文件包含，一般要编译链接第三方库时配置include目录
# 注意：1、可以用绝对路径或相对路径 2、相对路径中的./可以省略 3、路径中不允许出现空格
INCLUDEPATH += D:/opencv/build/include \
    D:/opencv/build/include/opencv2

LIBS += D:/opencv/build/x64/vc15/lib/opencv_world454.lib

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ../DL_module/mobilenet.onnx \
    ../subwidget/.DS_Store \
    ../subwidget/image/.DS_Store \
    ../subwidget/image/1/.DS_Store \
    ../subwidget/image/1/1.jpg \
    ../subwidget/image/1/2.jpg \
    ../subwidget/image/1/3.jpg \
    ../subwidget/image/1/4.jpg \
    ../subwidget/image/1/5.jpg

RESOURCES += \
    ../subwidget/image/1/images.qrc \
    ../subwidget/image/imageS.qrc
