#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "stdint.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    videoStream = new Face_handle();
    videoStream->start_thread_video();
//    videoStream->start_video_capture();
//    connect(videoStream, SIGNAL(face_display(QImage&)),
//            videoStream, SIGNAL(display_capture(QImage&)) );

//    connect(videoStream, SIGNAL(display_capture(QImage &)),
//            this, SIGNAL(displayPicture(QImage &)) );

}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    //videoStream->start_thread_capture();
}

void MainWindow::displayPicture(QImage &image)
{
    ui->view_label->clear();
    ui->view_label->setScaledContents(true);
    ui->view_label->setPixmap(QPixmap::fromImage(image));
    ui->view_label->adjustSize();
}
