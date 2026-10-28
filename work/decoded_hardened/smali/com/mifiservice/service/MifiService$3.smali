.class Lcom/mifiservice/service/MifiService$3;
.super Ljava/lang/Thread;
.source "MifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mifiservice/service/MifiService;->HandleResetData(I)V
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
    .line 316
    iput-object p1, p0, Lcom/mifiservice/service/MifiService$3;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "MifiService"

    const-string v1, "HandleResetData thread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/mifiservice/service/MifiService$3;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v0}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->getCfun()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "MifiService"

    const-string v1, "HandleResetData setcfun 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/mifiservice/service/MifiService$3;->this$0:Lcom/mifiservice/service/MifiService;

    invoke-static {v0}, Lcom/mifiservice/service/MifiService;->access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mifiservice/device/WanDataController;->setcfun(I)V

    .line 325
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method
