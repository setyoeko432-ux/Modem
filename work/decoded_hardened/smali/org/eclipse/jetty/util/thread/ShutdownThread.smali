.class public Lorg/eclipse/jetty/util/thread/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final _thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;


# instance fields
.field private _hooked:Z

.field private final _lifeCycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/component/LifeCycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 41
    new-instance v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static declared-synchronized deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 2
    .param p0, "lifeCycle"    # Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 117
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->unhook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit v1

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lorg/eclipse/jetty/util/thread/ShutdownThread;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    return-object v0
.end method

.method private declared-synchronized hook()V
    .locals 4

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z

    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 63
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 68
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "shutdown already commenced"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static varargs declared-synchronized register(I[Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "lifeCycles"    # [Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 109
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 110
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->hook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    monitor-exit v1

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized register([Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3
    .param p0, "lifeCycles"    # [Lorg/eclipse/jetty/util/component/LifeCycle;

    .prologue
    .line 101
    const-class v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v0, v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    sget-object v0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->hook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit v1

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized unhook()V
    .locals 4

    .prologue
    .line 77
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_hooked:Z

    .line 78
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 83
    sget-object v1, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "shutdown already commenced"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 126
    sget-object v4, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_thread:Lorg/eclipse/jetty/util/thread/ShutdownThread;

    iget-object v4, v4, Lorg/eclipse/jetty/util/thread/ShutdownThread;->_lifeCycles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 130
    .local v3, "lifeCycle":Lorg/eclipse/jetty/util/component/LifeCycle;
    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-interface {v3}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 133
    sget-object v4, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Stopped {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_1
    instance-of v4, v3, Lorg/eclipse/jetty/util/component/Destroyable;

    if-eqz v4, :cond_0

    .line 138
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/component/Destroyable;

    move-object v4, v0

    invoke-interface {v4}, Lorg/eclipse/jetty/util/component/Destroyable;->destroy()V

    .line 139
    sget-object v4, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Destroyed {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/util/thread/ShutdownThread;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "lifeCycle":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_2
    return-void
.end method
