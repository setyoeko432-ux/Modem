.class Lcom/mifiservice/device/WifiApController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WifiApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/device/WifiApController;


# direct methods
.method constructor <init>(Lcom/mifiservice/device/WifiApController;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mifiservice/device/WifiApController$1;->this$0:Lcom/mifiservice/device/WifiApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 90
    iget-object v6, p0, Lcom/mifiservice/device/WifiApController$1;->this$0:Lcom/mifiservice/device/WifiApController;

    invoke-static {v6}, Lcom/mifiservice/device/WifiApController;->access$000(Lcom/mifiservice/device/WifiApController;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    move v1, v4

    .line 91
    .local v1, "isConnected":Z
    :goto_0
    iget-object v6, p0, Lcom/mifiservice/device/WifiApController$1;->this$0:Lcom/mifiservice/device/WifiApController;

    invoke-virtual {v6}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v2, v4

    .line 93
    .local v2, "isEnabled":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 94
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v8}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 133
    .end local v1    # "isConnected":Z
    .end local v2    # "isEnabled":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v5

    .line 90
    goto :goto_0

    .restart local v1    # "isConnected":Z
    :cond_2
    move v2, v5

    .line 91
    goto :goto_1

    .line 95
    .restart local v2    # "isEnabled":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 96
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v5}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_2

    .line 98
    :cond_4
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v4

    invoke-virtual {v4, v5, v5, v5}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_2

    .line 100
    .end local v1    # "isConnected":Z
    .end local v2    # "isEnabled":Z
    :cond_5
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 102
    .local v3, "state":I
    iget-object v6, p0, Lcom/mifiservice/device/WifiApController$1;->this$0:Lcom/mifiservice/device/WifiApController;

    invoke-static {v6}, Lcom/mifiservice/device/WifiApController;->access$000(Lcom/mifiservice/device/WifiApController;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    move v1, v4

    .line 103
    .restart local v1    # "isConnected":Z
    :goto_3
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 113
    :pswitch_1
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v4

    invoke-virtual {v4, v5, v5, v5}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_2

    .end local v1    # "isConnected":Z
    :cond_6
    move v1, v5

    .line 102
    goto :goto_3

    .line 105
    .restart local v1    # "isConnected":Z
    :pswitch_2
    if-eqz v1, :cond_7

    .line 106
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v8}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_2

    .line 108
    :cond_7
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v5}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_2

    .line 119
    .end local v1    # "isConnected":Z
    .end local v3    # "state":I
    :cond_8
    const-string v4, "com.android.mifi.ap.wps.on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    const-string v4, "com.android.mifi.ap.wps.off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    const-string v4, "com.android.mifi.ap.wps.pbc.start"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    const-string v4, "com.android.mifi.ap.wps.pbc.timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 103
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
