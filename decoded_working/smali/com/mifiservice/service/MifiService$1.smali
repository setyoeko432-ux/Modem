.class Lcom/mifiservice/service/MifiService$1;
.super Landroid/os/Handler;
.source "MifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/service/MifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/service/MifiService;


# direct methods
.method constructor <init>(Lcom/mifiservice/service/MifiService;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x3e8

    const/4 v9, 0x3

    const/4 v8, 0x0

    const-wide/16 v6, 0x400

    const/4 v5, 0x1

    .line 221
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_8

    .line 224
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WanDataController;->getNetStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 225
    const-string v1, "MifiService"

    const-string v2, "RefreshAlarmReceiver one"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1, v8}, Lcom/mifiservice/service/MifiService;->access$102(Lcom/mifiservice/service/MifiService;Z)Z

    .line 227
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mifiservice/device/WanDataController;->stopCheckNetwork:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mifiservice/config/MifiConfiguration;->WANautoConnect:Z

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$200(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WanDataController;->isChinaTelecom()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mifiservice/service/MifiService;->HandleResetData(I)V

    .line 234
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mifiservice/device/WanDataController;->setMobileDataEnable(Z)V

    .line 279
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 280
    return-void

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget v2, v2, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    invoke-virtual {v1, v2}, Lcom/mifiservice/service/MifiService;->HandleResetData(I)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1, v8}, Lcom/mifiservice/service/MifiService;->access$302(Lcom/mifiservice/service/MifiService;I)I

    .line 238
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$400(Lcom/mifiservice/service/MifiService;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/WanDataController;->getMobileTxBytes()J

    move-result-wide v3

    div-long/2addr v3, v6

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$500(Lcom/mifiservice/service/MifiService;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/WanDataController;->getMobileRxBytes()J

    move-result-wide v3

    div-long/2addr v3, v6

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 240
    :cond_4
    const-string v1, "MifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$400(Lcom/mifiservice/service/MifiService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v1, "MifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rxBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$500(Lcom/mifiservice/service/MifiService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v1, "MifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobileTxBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/WanDataController;->getMobileTxBytes()J

    move-result-wide v3

    div-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v1, "MifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobileRxBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/WanDataController;->getMobileRxBytes()J

    move-result-wide v3

    div-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$100(Lcom/mifiservice/service/MifiService;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 245
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v5, v9, v2}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 246
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1, v5}, Lcom/mifiservice/service/MifiService;->access$102(Lcom/mifiservice/service/MifiService;Z)Z

    .line 248
    :cond_5
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    iget-object v2, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v2}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mifiservice/device/WanDataController;->getMobileTxBytes()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v1, v2, v3}, Lcom/mifiservice/service/MifiService;->access$402(Lcom/mifiservice/service/MifiService;J)J

    .line 249
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    iget-object v2, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v2}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mifiservice/device/WanDataController;->getMobileRxBytes()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v1, v2, v3}, Lcom/mifiservice/service/MifiService;->access$502(Lcom/mifiservice/service/MifiService;J)J

    goto/16 :goto_1

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$100(Lcom/mifiservice/service/MifiService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    const-string v1, "MifiService"

    const-string v2, "blink"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v1

    invoke-virtual {v1, v5, v9, v8}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 253
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1, v8}, Lcom/mifiservice/service/MifiService;->access$102(Lcom/mifiservice/service/MifiService;Z)Z

    goto/16 :goto_1

    .line 255
    :cond_7
    const-string v1, "MifiService"

    const-string v2, "!blink"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 257
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1

    .line 258
    const-string v1, "MifiService"

    const-string v2, "CHECK_WIFI_SERVER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$600(Lcom/mifiservice/service/MifiService;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 260
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$700(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanApnController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WanApnController;->getDefaultApnId()I

    move-result v0

    .line 261
    .local v0, "apnid":I
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    iget v1, v1, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    if-eq v1, v0, :cond_9

    if-eqz v0, :cond_9

    .line 262
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    iput v0, v1, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    .line 263
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/config/MifiConfiguration;->saveToFile()V

    .line 264
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$700(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanApnController;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/mifiservice/device/WanApnController;->setCurrentAPN(I)V

    .line 265
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1, v5}, Lcom/mifiservice/service/MifiService;->access$602(Lcom/mifiservice/service/MifiService;Z)Z

    .line 269
    .end local v0    # "apnid":I
    :cond_9
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v1

    if-eq v1, v5, :cond_a

    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 270
    :cond_a
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    iget-object v2, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v2}, Lcom/mifiservice/service/MifiService;->access$200(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$200(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->WIFIpassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mifiservice/service/MifiService;->HandleBindCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_b
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v1

    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    iget-object v1, v1, Lcom/mifiservice/service/MifiService;->mServer:Lcom/mifiservice/server/JServer;

    invoke-virtual {v1}, Lcom/mifiservice/server/JServer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 274
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    iget-object v1, v1, Lcom/mifiservice/service/MifiService;->mServer:Lcom/mifiservice/server/JServer;

    iget-object v2, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-virtual {v2}, Lcom/mifiservice/service/MifiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mifiservice/server/JServer;->start(Landroid/content/Context;)V

    .line 276
    :cond_c
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$900(Lcom/mifiservice/service/MifiService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$1;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$900(Lcom/mifiservice/service/MifiService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method
