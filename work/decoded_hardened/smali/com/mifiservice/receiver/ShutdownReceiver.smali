.class public Lcom/mifiservice/receiver/ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 20
    const-string v0, "ShutdownReceiver"

    const-string v1, "shutdowning ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mifiservice/device/DeviceController;->isRestoreFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 23
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1, v2}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 26
    :cond_0
    return-void
.end method
