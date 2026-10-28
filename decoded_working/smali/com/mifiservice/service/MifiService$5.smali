.class Lcom/mifiservice/service/MifiService$5;
.super Ljava/lang/Thread;
.source "MifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mifiservice/service/MifiService;->HandleUnBindCommand()V
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
    .line 370
    iput-object p1, p0, Lcom/mifiservice/service/MifiService$5;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    const-string v0, "MifiService"

    const-string v1, "handle unbinding "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/mifiservice/service/MifiService$5;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v0}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mifiservice/device/WifiApController;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)I

    .line 375
    return-void
.end method
