.class public Lorg/eclipse/jetty/server/session/HashSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    }
.end annotation


# static fields
.field private static __id:I

.field static final __log:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _deleteUnrestorableSessions:Z

.field _idleSavePeriodMs:J

.field private _lazyLoad:Z

.field _savePeriodMs:J

.field private _saveTask:Ljava/util/TimerTask;

.field _scavengePeriodMs:J

.field protected final _sessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/HashedSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _sessionsLoaded:Z

.field _storeDir:Ljava/io/File;

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;

.field private _timerStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 67
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 68
    iput-wide v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 69
    iput-wide v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 72
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 73
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 74
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    .line 83
    return-void
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 2
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lorg/eclipse/jetty/server/session/HashedSession;

    .end local p1    # "session":Lorg/eclipse/jetty/server/session/AbstractSession;
    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 92
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 95
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 96
    .local v0, "context":Ljavax/servlet/ServletContext;
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "org.eclipse.jetty.server.session.timer"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-nez v1, :cond_1

    .line 100
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 101
    new-instance v1, Ljava/util/Timer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HashSessionScavenger-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getScavengePeriod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 106
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-nez v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V

    .line 115
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getSavePeriod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setSavePeriod(I)V

    .line 116
    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 133
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 136
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 144
    return-void

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIdleSavePeriod()I
    .locals 4

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getSavePeriod()I
    .locals 4

    .prologue
    .line 250
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getScavengePeriod()I
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 7
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    if-nez v4, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 374
    .local v2, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/session/HashedSession;>;"
    if-nez v2, :cond_2

    move-object v1, v3

    .line 387
    :cond_1
    :goto_1
    return-object v1

    .line 367
    .end local v2    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/session/HashedSession;>;"
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/session/HashedSession;>;"
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 379
    .local v1, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v1

    .line 381
    :cond_3
    if-nez v1, :cond_4

    move-object v1, v3

    .line 382
    goto :goto_1

    .line 384
    :cond_4
    iget-wide v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/HashedSession;->deIdle()V

    goto :goto_1
.end method

.method public getSessions()I
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessions()I

    move-result v0

    .line 161
    .local v0, "sessions":I
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 164
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    return v0
.end method

.method public getStoreDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    return-object v0
.end method

.method protected invalidateSessions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 395
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .local v4, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    const/16 v1, 0x64

    .line 397
    .local v1, "loop":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    add-int/lit8 v2, v1, -0x1

    .end local v1    # "loop":I
    .local v2, "loop":I
    if-lez v1, :cond_2

    .line 400
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 405
    .local v3, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    .line 406
    invoke-virtual {p0, v3, v6}, Lorg/eclipse/jetty/server/session/HashSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    goto :goto_1

    .line 411
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 412
    .restart local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashedSession;->invalidate()V

    goto :goto_2

    .line 416
    .end local v3    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v4    # "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    move v1, v2

    .end local v2    # "loop":I
    .restart local v1    # "loop":I
    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "loop":I
    .restart local v2    # "loop":I
    :cond_2
    move v1, v2

    .line 418
    .end local v2    # "loop":I
    .restart local v1    # "loop":I
    :cond_3
    return-void
.end method

.method public isDeleteUnrestorableSessions()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    return v0
.end method

.method public isLazyLoad()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    return v0
.end method

.method protected newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 7
    .param p1, "created"    # J
    .param p3, "accessed"    # J
    .param p5, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;JJLjava/lang/String;)V

    return-object v0
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 424
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 14
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "session"    # Lorg/eclipse/jetty/server/session/HashedSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 574
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, "clusterId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 576
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 577
    .local v2, "created":J
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 578
    .local v4, "accessed":J
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 580
    .local v11, "requests":I
    if-nez p2, :cond_0

    move-object v1, p0

    .line 581
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/server/session/HashSessionManager;->newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    move-object/from16 p2, v0

    .line 582
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/session/HashedSession;->setRequests(I)V

    .line 583
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 584
    .local v12, "size":I
    if-lez v12, :cond_2

    .line 586
    new-instance v10, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;

    invoke-direct {v10, p0, v8}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 589
    .local v10, "ois":Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_1

    .line 591
    :try_start_1
    invoke-virtual {v10}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 592
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v13

    .line 593
    .local v13, "value":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v13}, Lorg/eclipse/jetty/server/session/HashedSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 598
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_2
    invoke-static {v10}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 605
    .end local v7    # "i":I
    .end local v10    # "ois":Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    :cond_2
    invoke-static {v8}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    return-object p2

    .line 598
    .restart local v7    # "i":I
    .restart local v10    # "ois":Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v10}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 605
    .end local v2    # "created":J
    .end local v4    # "accessed":J
    .end local v6    # "clusterId":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "ois":Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
    .end local v11    # "requests":I
    .end local v12    # "size":I
    :catchall_1
    move-exception v1

    invoke-static {v8}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v1
.end method

.method protected declared-synchronized restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 10
    .param p1, "idInCuster"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 504
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-direct {v2, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 507
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 510
    .local v1, "error":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 512
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p0, v4, v7}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v5

    .line 514
    .local v5, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lorg/eclipse/jetty/server/session/HashSessionManager;->addSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 515
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/session/HashedSession;->didActivate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 525
    if-eqz v4, :cond_0

    :try_start_3
    invoke-static {v4}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 527
    :cond_0
    if-eqz v1, :cond_2

    .line 529
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isDeleteUnrestorableSessions()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 532
    sget-object v6, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting file for unrestorable session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    move-object v3, v4

    .line 543
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :goto_1
    monitor-exit p0

    return-object v5

    .line 536
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_1
    :try_start_4
    sget-object v6, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem restoring session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 504
    .end local v1    # "error":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 540
    .restart local v1    # "error":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 525
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 527
    :cond_4
    if-eqz v1, :cond_6

    .line 529
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isDeleteUnrestorableSessions()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 532
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting file for unrestorable session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move-object v5, v6

    .line 543
    goto :goto_1

    .line 536
    :cond_5
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem restoring session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 540
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 519
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    move-object v1, v0

    .line 525
    if-eqz v3, :cond_7

    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 527
    :cond_7
    if-eqz v1, :cond_9

    .line 529
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isDeleteUnrestorableSessions()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 532
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting file for unrestorable session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 536
    :cond_8
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem restoring session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 540
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v3, :cond_a

    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 527
    :cond_a
    if-eqz v1, :cond_c

    .line 529
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isDeleteUnrestorableSessions()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 532
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting file for unrestorable session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    :goto_5
    throw v6

    .line 536
    :cond_b
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem restoring session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 540
    :cond_c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 525
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 519
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public restoreSessions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 483
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore Sessions: Cannot read from Session storage directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 497
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public saveSessions(Z)V
    .locals 5
    .param p1, "reactivate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 556
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save Sessions: Session persistence storage directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not writeable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 561
    .local v1, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    goto :goto_1
.end method

.method protected scavenge()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 301
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopped()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 305
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 308
    .local v6, "old_loader":Ljava/lang/ClassLoader;
    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_2

    .line 309
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 312
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 314
    .local v4, "now":J
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 317
    .local v7, "session":Lorg/eclipse/jetty/server/session/HashedSession;
    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/HashedSession;->getMaxInactiveInterval()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long v2, v9, v11

    .line 318
    .local v2, "idleTime":J
    cmp-long v9, v2, v13

    if-lez v9, :cond_4

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    add-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-gez v9, :cond_4

    .line 323
    :try_start_1
    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/HashedSession;->timeout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "Problem scavenging sessions"

    invoke-interface {v9, v10, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    .end local v2    # "idleTime":J
    .end local v4    # "now":J
    .end local v7    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :catchall_0
    move-exception v9

    invoke-virtual {v8, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v9

    .line 330
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/session/HashedSession;>;"
    .restart local v2    # "idleTime":J
    .restart local v4    # "now":J
    .restart local v7    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_4
    :try_start_3
    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    cmp-long v9, v9, v13

    if-lez v9, :cond_3

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v9

    iget-wide v11, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-long/2addr v9, v11

    cmp-long v9, v9, v4

    if-gez v9, :cond_3

    .line 334
    :try_start_4
    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/HashedSession;->idle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 336
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v9, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem idling session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/session/HashedSession;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "idleTime":J
    .end local v7    # "session":Lorg/eclipse/jetty/server/session/HashedSession;
    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_0
.end method

.method public setDeleteUnrestorableSessions(Z)V
    .locals 0
    .param p1, "deleteUnrestorableSessions"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    .line 476
    return-void
.end method

.method public setIdleSavePeriod(I)V
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    .line 192
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 193
    return-void
.end method

.method public setLazyLoad(Z)V
    .locals 0
    .param p1, "lazyLoad"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 458
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 6
    .param p1, "seconds"    # I

    .prologue
    .line 199
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setMaxInactiveInterval(I)V

    .line 200
    iget v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 201
    iget v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public setSavePeriod(I)V
    .locals 8
    .param p1, "seconds"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 210
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .line 211
    .local v6, "period":J
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 212
    const-wide/16 v6, 0x0

    .line 213
    :cond_0
    iput-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 217
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 221
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager$1;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 240
    :cond_2
    monitor-exit p0

    .line 242
    :cond_3
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScavengePeriod(I)V
    .locals 10
    .param p1, "seconds"    # I

    .prologue
    const-wide/16 v2, 0x3e8

    .line 262
    if-nez p1, :cond_0

    .line 263
    const/16 p1, 0x3c

    .line 265
    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 266
    .local v6, "old_period":J
    int-to-long v0, p1

    mul-long v8, v0, v2

    .line 267
    .local v8, "period":J
    const-wide/32 v0, 0xea60

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 268
    const-wide/32 v8, 0xea60

    .line 269
    :cond_1
    cmp-long v0, v8, v2

    if-gez v0, :cond_2

    .line 270
    const-wide/16 v8, 0x3e8

    .line 272
    :cond_2
    iput-wide v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 274
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    cmp-long v0, v8, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-nez v0, :cond_5

    .line 276
    :cond_3
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 280
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/HashSessionManager$2;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 289
    monitor-exit p0

    .line 291
    :cond_5
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStoreDirectory(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    .line 446
    return-void
.end method
