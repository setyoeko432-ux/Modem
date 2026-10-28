.class Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;
.super Ljava/lang/Object;
.source "QueuedThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/thread/QueuedThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 534
    const/4 v7, 0x0

    .line 537
    .local v7, "shrink":Z
    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$000(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 538
    .local v2, "job":Ljava/lang/Runnable;
    :goto_0
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 541
    :goto_1
    if-eqz v2, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 543
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v9, v2}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->runJob(Ljava/lang/Runnable;)V

    .line 544
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$000(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "job":Ljava/lang/Runnable;
    check-cast v2, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .restart local v2    # "job":Ljava/lang/Runnable;
    goto :goto_1

    .line 550
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$100(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 552
    :goto_2
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v2, :cond_6

    .line 554
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$200(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I

    move-result v9

    if-gtz v9, :cond_1

    .line 555
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$000(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    goto :goto_2

    .line 559
    :cond_1
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 560
    .local v8, "size":I
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$400(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I

    move-result v9

    if-le v8, v9, :cond_5

    .line 562
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$500(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 563
    .local v3, "last":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 564
    .local v5, "now":J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_2

    sub-long v9, v5, v3

    iget-object v11, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v11}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$200(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I

    move-result v11

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 566
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$500(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v9

    invoke-virtual {v9, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    const/4 v7, 0x1

    .line 568
    :goto_3
    if-eqz v7, :cond_5

    .line 578
    :try_start_2
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$100(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 592
    if-nez v7, :cond_3

    .line 593
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_3
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$800(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 596
    .end local v2    # "job":Ljava/lang/Runnable;
    .end local v3    # "last":J
    .end local v5    # "now":J
    .end local v8    # "size":I
    :goto_4
    return-void

    .line 566
    .restart local v2    # "job":Ljava/lang/Runnable;
    .restart local v3    # "last":J
    .restart local v5    # "now":J
    .restart local v8    # "size":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 572
    .end local v3    # "last":J
    .end local v5    # "now":J
    :cond_5
    :try_start_3
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$600(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 573
    goto/16 :goto_2

    .line 578
    .end local v8    # "size":I
    :cond_6
    :try_start_4
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$100(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 582
    .end local v2    # "job":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 592
    if-nez v7, :cond_7

    .line 593
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_7
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$800(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 578
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "job":Ljava/lang/Runnable;
    :catchall_0
    move-exception v9

    :try_start_6
    iget-object v10, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v10}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$100(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v9
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 586
    .end local v2    # "job":Ljava/lang/Runnable;
    :catch_1
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 592
    if-nez v7, :cond_8

    .line 593
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_8
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$800(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "job":Ljava/lang/Runnable;
    :cond_9
    if-nez v7, :cond_a

    .line 593
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_a
    iget-object v9, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v9}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$800(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    .end local v2    # "job":Ljava/lang/Runnable;
    :catchall_1
    move-exception v9

    if-nez v7, :cond_b

    .line 593
    iget-object v10, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v10}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$300(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_b
    iget-object v10, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;->this$0:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v10}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->access$800(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    throw v9
.end method
