#pragma once

#include <QMainWindow>
#include <QPushButton>
#include <QPainter>
#include <QImage>
#include <QDebug>
#include <QTime>
#include <QTimer>

QT_BEGIN_NAMESPACE
namespace Ui { class subwidget; }
QT_END_NAMESPACE

class subwidget : public QMainWindow
{
    Q_OBJECT

public:
    subwidget(QWidget *parent = nullptr);
    ~subwidget();

    //角色信息
    struct Character
    {
        int Age;
        int ID;
        QString Name;
        QString Intro;
    };
private slots:

    void on_Previous_clicked();

    void on_Next_clicked();

    void on_Back_clicked();

    void on_progressBar_valueChanged(int value);

signals:
    //使用： emit mySignal();
    void mySignal();
    void setSignal();

private:
    Character P;
    //图像事件处理函数(虚函数)
    void paintEvent(QPaintEvent *);
    //void PicChange();
    void GetInfo(int ID = 0, int Age = 0, QString Name = "NULL", QString Intro= "NULL");
    Ui::subwidget *ui;
    //图片的索引
    int ImageIndex;
    QPushButton Back;
    QPushButton Previous;
    QPushButton Next;
};
