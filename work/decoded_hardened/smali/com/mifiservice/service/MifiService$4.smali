.class Lcom/mifiservice/service/MifiService$4;
.super Ljava/lang/Thread;
.source "MifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mifiservice/service/MifiService;->HandleBindCommand(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/service/MifiService;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mifiservice/service/MifiService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/mifiservice/service/MifiService$4;->this$0:Lcom/mifiservice/service/MifiService;

    iput-object p2, p0, Lcom/mifiservice/service/MifiService$4;->val$ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/mifiservice/service/MifiService$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 351
    const-string v1, "MifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle binding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$4;->val$ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$4;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v1

    iget-object v2, p0, Lcom/mifiservice/service/MifiService$4;->val$ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/mifiservice/service/MifiService$4;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v3}, Lcom/mifiservice/service/MifiService;->access$200(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget v3, v3, Lcom/mifiservice/config/MifiConfiguration;->WIFIencrypt:I

    iget-object v4, p0, Lcom/mifiservice/service/MifiService$4;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mifiservice/device/WifiApController;->setWifiApConfig(Ljava/lang/String;ILjava/lang/String;)Z

    .line 354
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$4;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 355
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$4;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$200(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mifiservice/config/MifiConfiguration;->WIFIssidhidden:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 362
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$4;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mifiservice/device/WifiApController;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)I

    .line 363
    return-void
.end method
