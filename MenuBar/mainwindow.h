#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QMessageBox>
#include <QPrinter>
#include <QPrintDialog>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_actionQuit_triggered();

    void on_actionAbout_triggered();

    void on_actionAbout_QT_triggered();

    void on_actionPrint_triggered();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
