.class Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "WanDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WanDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/device/WanDataController;


# direct methods
.method private constructor <init>(Lcom/mifiservice/device/WanDataController;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mifiservice/device/WanDataController;Lcom/mifiservice/device/WanDataController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mifiservice/device/WanDataController;
    .param p2, "x1"    # Lcom/mifiservice/device/WanDataController$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;-><init>(Lcom/mifiservice/device/WanDataController;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-static {v0, p2}, Lcom/mifiservice/device/WanDataController;->access$200(Lcom/mifiservice/device/WanDataController;I)V

    .line 104
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 109
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 92
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mifiservice/device/WanDataController;->access$002(Lcom/mifiservice/device/WanDataController;I)I

    .line 93
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 94
    .local v0, "curdbm":I
    const/16 v1, -0x1e

    if-gt v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-static {v1, v0}, Lcom/mifiservice/device/WanDataController;->access$102(Lcom/mifiservice/device/WanDataController;I)I

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v1, "WanDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curdbm:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
