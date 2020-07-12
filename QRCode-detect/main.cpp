#include "mainwindow.h"

#include <QImage>
#include <QApplication>
#include "qrcode.h"

ex_QRcode qr_code;

#define base_path  "/home/robot/qtWorkspace/qrCode_detect/image/";

const char * source ="/home/robot/qtWorkspace/qrCode_detect/image/wifi.jpeg";
const char * f_jpg = "/home/robot/qtWorkspace/qrCode_detect/image/signal.jpeg";
const char * path = "/home/robot/qtWorkspace/qrCode_detect/image/test.jpeg";

int main(int argc, char *argv[])
{


    //QImage imge(f_jpg);
    //QPixmap pixImg = QPixmap::fromImage(imge);
    qr_code.createQRcode(source, path, 320,320);

    std::string decode,result;
    int ret = qr_code.scannerQRcode(path,decode,result);
    if (ret == 0){
        qDebug("error..");
    }

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
