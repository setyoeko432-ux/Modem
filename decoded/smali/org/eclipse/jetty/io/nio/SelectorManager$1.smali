.class Lorg/eclipse/jetty/io/nio/SelectorManager$1;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 277
    .local v2, "priority":I
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$000(Lorg/eclipse/jetty/io/nio/SelectorManager;)[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 278
    .local v4, "sets":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    if-nez v4, :cond_1

    .line 304
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Stopped {} on {}"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object p0, v7, v11

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_1
    iget v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    aget-object v3, v4, v5

    .line 282
    .local v3, "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Selector"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 283
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 285
    :cond_2
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Starting {} on {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    :try_start_2
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->doSelect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .end local v4    # "sets":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    :catchall_0
    move-exception v5

    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Stopped {} on {}"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object p0, v8, v11

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Thread;->setPriority(I)V

    :cond_3
    throw v5

    .line 296
    .restart local v3    # "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .restart local v4    # "sets":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Stopped {} on {}"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object p0, v7, v11

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto/16 :goto_0
.end method
