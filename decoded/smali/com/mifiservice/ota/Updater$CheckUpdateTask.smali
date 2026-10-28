.class public Lcom/mifiservice/ota/Updater$CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/ota/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/ota/Updater;


# direct methods
.method public constructor <init>(Lcom/mifiservice/ota/Updater;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mifiservice/ota/Updater$CheckUpdateTask;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mifiservice/ota/Updater$CheckUpdateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://120.77.62.229:8080/file/checkUpdate?&device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/DeviceController;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&swv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/DeviceController;->getSWVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mifiservice/device/WanDataController;->getInstance()Lcom/mifiservice/device/WanDataController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/WanDataController;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/mifiservice/utils/NetUtil;->httpGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Updater"

    const-string v3, "err3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mifiservice/ota/Updater$CheckUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/mifiservice/utils/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "Updater"

    const-string v1, "no available update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mifiservice/device/DeviceController;->isCharging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mifiservice/device/DeviceController;->getBatteryCapacity()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/mifiservice/ota/Updater$CheckUpdateTask;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-static {v0, p1}, Lcom/mifiservice/ota/Updater;->access$100(Lcom/mifiservice/ota/Updater;Ljava/lang/String;)V

    goto :goto_0
.end method
