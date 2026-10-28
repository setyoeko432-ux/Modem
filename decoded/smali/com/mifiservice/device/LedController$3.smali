.class Lcom/mifiservice/device/LedController$3;
.super Landroid/content/BroadcastReceiver;
.source "LedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/LedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/device/LedController;


# direct methods
.method constructor <init>(Lcom/mifiservice/device/LedController;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mifiservice/device/LedController$3;->this$0:Lcom/mifiservice/device/LedController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "action":Ljava/lang/String;
    const-string v1, "LedController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "alk.hotkey.reset.down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/mifiservice/device/LedController$3;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v1, v4}, Lcom/mifiservice/device/LedController;->access$202(Lcom/mifiservice/device/LedController;I)I

    .line 184
    iget-object v1, p0, Lcom/mifiservice/device/LedController$3;->this$0:Lcom/mifiservice/device/LedController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mifiservice/device/LedController;->access$102(Lcom/mifiservice/device/LedController;Z)Z

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v1, "alk.hotkey.reset.up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/mifiservice/device/LedController$3;->this$0:Lcom/mifiservice/device/LedController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/mifiservice/device/LedController;->access$202(Lcom/mifiservice/device/LedController;I)I

    .line 188
    iget-object v1, p0, Lcom/mifiservice/device/LedController$3;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v1, v4}, Lcom/mifiservice/device/LedController;->access$102(Lcom/mifiservice/device/LedController;Z)Z

    goto :goto_0

    .line 190
    :cond_2
    const-string v1, "alk.hotkey.reset.long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/DeviceController;->restoreDevice()V

    goto :goto_0
.end method
