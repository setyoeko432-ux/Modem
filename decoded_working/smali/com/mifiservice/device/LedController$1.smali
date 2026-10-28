.class Lcom/mifiservice/device/LedController$1;
.super Landroid/os/Handler;
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
    .line 107
    iput-object p1, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 110
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$000(Lcom/mifiservice/device/LedController;)I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    .line 111
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/DeviceController;->restoreDevice()V

    .line 135
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$100(Lcom/mifiservice/device/LedController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$200(Lcom/mifiservice/device/LedController;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$204(Lcom/mifiservice/device/LedController;)I

    .line 116
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$100(Lcom/mifiservice/device/LedController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$200(Lcom/mifiservice/device/LedController;)I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1

    .line 117
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/DeviceController;->restoreDevice()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$300(Lcom/mifiservice/device/LedController;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 122
    .local v0, "gpio":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$400(Lcom/mifiservice/device/LedController;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 123
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$300(Lcom/mifiservice/device/LedController;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v4, v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mifiservice/device/LedController;->toggleGpio(I)V

    .line 127
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$400(Lcom/mifiservice/device/LedController;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/mifiservice/device/LedController$1;->this$0:Lcom/mifiservice/device/LedController;

    invoke-static {v3}, Lcom/mifiservice/device/LedController;->access$400(Lcom/mifiservice/device/LedController;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 134
    .end local v0    # "gpio":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
