#include "dialog.h"
#include "ui_dialog.h"

Dialog::Dialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Dialog)
{
    ui->setupUi(this);
}

Dialog::~Dialog()
{
    delete ui;
}

//QMessageBox
void Dialog::on_pushButton_clicked()
{
    QMessageBox::information(this, "Infomation Box", "This the Text");
}

void Dialog::on_pushButton_4_clicked()
{
    QMessageBox::warning(this, "Warning Box", "This is the Text");
}

void Dialog::on_pushButton_3_clicked()
{
    QMessageBox::about(this, "About Box", "This is the Text");
}

void Dialog::on_pushButton_2_clicked()
{
    QMessageBox::question(this, "Question Box", "Do U like Sport?", QMessageBox::Yes | QMessageBox::No);
}
