.class Lcom/mifiservice/device/WanDataController$1;
.super Ljava/lang/Thread;
.source "WanDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mifiservice/device/WanDataController;->HandleCheckNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/device/WanDataController;


# direct methods
.method constructor <init>(Lcom/mifiservice/device/WanDataController;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/mifiservice/device/WanDataController$1;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    const-string v0, "WanDataController"

    const-string v1, "HandleCheckNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController$1;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController$1;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->isChinaTelecom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController$1;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0, v2}, Lcom/mifiservice/device/WanDataController;->setPreferedNetworkTypeAtcmd(I)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController$1;->this$0:Lcom/mifiservice/device/WanDataController;

    iput-boolean v2, v0, Lcom/mifiservice/device/WanDataController;->stopCheckNetwork:Z

    .line 748
    return-void

    .line 740
    :catch_0
    move-exception v0

    goto :goto_0
.end method
