.class Lcom/mifiservice/device/LedController$2;
.super Ljava/util/TimerTask;
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
    .line 138
    iput-object p1, p0, Lcom/mifiservice/device/LedController$2;->this$0:Lcom/mifiservice/device/LedController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 143
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iget-object v1, p0, Lcom/mifiservice/device/LedController$2;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v1}, Lcom/mifiservice/device/LedController;->access$500(Lcom/mifiservice/device/LedController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method
