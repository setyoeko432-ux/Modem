.class public Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "ExecutorThreadPool.java"

# interfaces
.implements Lorg/eclipse/jetty/util/thread/ThreadPool;
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v1, 0x100

    .line 62
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .param p1, "queueSize"    # I

    .prologue
    const/16 v6, 0x20

    const-wide/16 v3, 0x3c

    const/16 v1, 0x100

    .line 74
    if-gez p1, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v5, v0

    :goto_0
    invoke-direct {p0, v5}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 77
    return-void

    .line 74
    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v11}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move v7, v1

    move-wide v8, v3

    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v11, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move v7, v1

    move-wide v8, v3

    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0
.end method

.method public constructor <init>(IIJ)V
    .locals 6
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J

    .prologue
    .line 89
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    .line 90
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 103
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 104
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    .line 50
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v1, 0x1

    .line 132
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 183
    return-void
.end method

.method public getIdleThreads()I
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 142
    .local v0, "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 144
    .end local v0    # "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getThreads()I
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 153
    .local v0, "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    .line 155
    .end local v0    # "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isLowOnThreads()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    instance-of v2, v2, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_0

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    .local v0, "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 168
    .end local v0    # "tpe":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_0
    return v1
.end method

.method public join()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->_executor:Ljava/util/concurrent/ExecutorService;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 175
    return-void
.end method
