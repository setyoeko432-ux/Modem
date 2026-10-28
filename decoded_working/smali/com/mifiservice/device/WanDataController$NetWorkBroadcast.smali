.class public Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "WanDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WanDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/device/WanDataController;


# direct methods
.method public constructor <init>(Lcom/mifiservice/device/WanDataController;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 433
    const/4 v3, 0x0

    .line 434
    .local v3, "network_type":I
    const/4 v1, 0x0

    .line 436
    .local v1, "connected":Z
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 439
    iget-object v6, p0, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-static {v6}, Lcom/mifiservice/device/WanDataController;->access$400(Lcom/mifiservice/device/WanDataController;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 440
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 442
    :cond_0
    const/4 v1, 0x0

    .line 462
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 463
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v9, v7, v8}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 470
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    return-void

    .line 445
    .restart local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v6, p0, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-static {v6}, Lcom/mifiservice/device/WanDataController;->access$400(Lcom/mifiservice/device/WanDataController;)Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 446
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 449
    .local v4, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, "strSubTypeName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 452
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_4

    .line 453
    const/4 v1, 0x1

    .line 456
    :cond_4
    iget-object v6, p0, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;->this$0:Lcom/mifiservice/device/WanDataController;

    iget-object v7, p0, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-static {v7}, Lcom/mifiservice/device/WanDataController;->access$500(Lcom/mifiservice/device/WanDataController;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/mifiservice/device/WanDataController;->access$200(Lcom/mifiservice/device/WanDataController;I)V

    goto :goto_0

    .line 465
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    .end local v5    # "strSubTypeName":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v9, v7, v8}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_1
.end method
