.class Lcom/mifiservice/service/MifiService$2;
.super Ljava/util/TimerTask;
.source "MifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/service/MifiService;
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
    .line 283
    iput-object p1, p0, Lcom/mifiservice/service/MifiService$2;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 288
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    iget-object v1, p0, Lcom/mifiservice/service/MifiService$2;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v1}, Lcom/mifiservice/service/MifiService;->access$900(Lcom/mifiservice/service/MifiService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return-void
.end method
