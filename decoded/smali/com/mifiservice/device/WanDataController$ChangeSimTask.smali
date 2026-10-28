.class Lcom/mifiservice/device/WanDataController$ChangeSimTask;
.super Landroid/os/AsyncTask;
.source "WanDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WanDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeSimTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field switchBand:Ljava/lang/String;

.field final synthetic this$0:Lcom/mifiservice/device/WanDataController;


# direct methods
.method public constructor <init>(Lcom/mifiservice/device/WanDataController;Ljava/lang/String;)V
    .locals 1
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/mifiservice/device/WanDataController$ChangeSimTask;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/device/WanDataController$ChangeSimTask;->switchBand:Ljava/lang/String;

    .line 533
    iput-object p2, p0, Lcom/mifiservice/device/WanDataController$ChangeSimTask;->switchBand:Ljava/lang/String;

    .line 534
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "integers"    # [Ljava/lang/Integer;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController$ChangeSimTask;->switchBand:Ljava/lang/String;

    .line 538
    .local v0, "resetSlaveCommand":Ljava/lang/String;
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController$ChangeSimTask;->this$0:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v1, v0}, Lcom/mifiservice/device/WanDataController;->doShellCommand(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 530
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mifiservice/device/WanDataController$ChangeSimTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
