.class Lcom/mifiservice/ota/Updater$1;
.super Ljava/util/TimerTask;
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
    .line 50
    iput-object p1, p0, Lcom/mifiservice/ota/Updater$1;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "Updater"

    const-string v1, "doCheckUpdate "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/mifiservice/ota/Updater$1;->this$0:Lcom/mifiservice/ota/Updater;

    invoke-virtual {v0}, Lcom/mifiservice/ota/Updater;->doCheckUpdate()V

    .line 57
    return-void
.end method
