.class Lcom/mifiservice/ota/Updater$2;
.super Landroid/content/BroadcastReceiver;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/ota/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/ota/Updater;


# direct methods
.method constructor <init>(Lcom/mifiservice/ota/Updater;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mifiservice/ota/Updater$2;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "extra_download_id"

    const-wide/16 v3, -0x2

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    .local v0, "id":J
    iget-object v2, p0, Lcom/mifiservice/ota/Updater$2;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-static {v2}, Lcom/mifiservice/ota/Updater;->access$000(Lcom/mifiservice/ota/Updater;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/mifiservice/ota/Updater$2;->this$0:Lcom/mifiservice/ota/Updater;

    const-string v3, "/data/update.zip"

    invoke-virtual {v2, v3}, Lcom/mifiservice/ota/Updater;->deleteFile(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/mifiservice/ota/Updater$2;->this$0:Lcom/mifiservice/ota/Updater;

    const-string v3, "/sdcard/data/update.zip"

    const-string v4, "/data/update.zip"

    invoke-virtual {v2, v3, v4}, Lcom/mifiservice/ota/Updater;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/mifiservice/ota/Updater$2;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-virtual {v2}, Lcom/mifiservice/ota/Updater;->doUpdate()V

    .line 71
    .end local v0    # "id":J
    :cond_0
    return-void
.end method
