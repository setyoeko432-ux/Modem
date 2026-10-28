.class public abstract Lorg/eclipse/jetty/server/session/AbstractSession;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _accessed:J

.field private final _attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _clusterId:Ljava/lang/String;

.field private _cookieSet:J

.field private final _created:J

.field private _doInvalidate:Z

.field private _idChanged:Z

.field private _invalid:Z

.field private _lastAccessed:J

.field private final _manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

.field private _maxIdleMs:J

.field private _newSession:Z

.field private final _nodeId:Ljava/lang/String;

.field private _requests:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V
    .locals 4
    .param p1, "abstractSessionManager"    # Lorg/eclipse/jetty/server/session/AbstractSessionManager;
    .param p2, "created"    # J
    .param p4, "accessed"    # J
    .param p6, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 91
    iput-wide p2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    .line 92
    iput-object p6, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/server/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    .line 94
    iput-wide p4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 95
    iput-wide p4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 98
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void

    .line 97
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 4
    .param p1, "abstractSessionManager"    # Lorg/eclipse/jetty/server/session/AbstractSessionManager;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 75
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    invoke-interface {v0, p2, v1, v2}, Lorg/eclipse/jetty/server/SessionIdManager;->newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/eclipse/jetty/server/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 80
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 81
    iput v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 83
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new session & id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void

    .line 82
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected access(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 279
    monitor-enter p0

    .line 281
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-eqz v1, :cond_0

    .line 282
    monitor-exit p0

    .line 293
    :goto_0
    return v0

    .line 283
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    .line 284
    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 285
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 287
    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    iget-wide v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->invalidate()V

    .line 290
    monitor-exit p0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 292
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 293
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected addAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    return-void
.end method

.method public bindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 486
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    .line 487
    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 488
    :cond_0
    return-void
.end method

.method protected checkValid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 361
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 364
    monitor-enter p0

    .line 366
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 370
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    .local v1, "key":Ljava/lang/String;
    monitor-enter p0

    .line 377
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jetty/server/session/AbstractSession;->doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 378
    .local v3, "value":Ljava/lang/Object;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/server/session/AbstractSession;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v4, p0, v1, v3, v5}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 378
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 384
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 385
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 386
    :cond_2
    return-void
.end method

.method protected complete()V
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    .line 302
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 303
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_doInvalidate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    if-gtz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 305
    :cond_0
    monitor-exit p0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cookieSet()V
    .locals 2

    .prologue
    .line 499
    monitor-enter p0

    .line 501
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_cookieSet:J

    .line 502
    monitor-exit p0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public didActivate()V
    .locals 6

    .prologue
    .line 552
    monitor-enter p0

    .line 554
    :try_start_0
    new-instance v1, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v1, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 555
    .local v1, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 557
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 558
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v5, :cond_0

    .line 560
    move-object v0, v4

    check-cast v0, Ljavax/servlet/http/HttpSessionActivationListener;

    move-object v3, v0

    .line 561
    .local v3, "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionDidActivate(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 564
    .end local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    return-void
.end method

.method protected doGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doInvalidate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "invalidate {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->clearAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 350
    :cond_0
    monitor-enter p0

    .line 353
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    .line 354
    monitor-exit p0

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 350
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 353
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    .line 354
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method protected doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 432
    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAccessed()J
    .locals 2

    .prologue
    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    monitor-exit p0

    return-wide v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 154
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 155
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 154
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAttributes()I
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieSetTime()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_cookieSet:J

    return-wide v0
.end method

.method public getCreationTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_nodeIdInSessionId:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLastAccessedTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 202
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    return-wide v0
.end method

.method public getMaxInactiveInterval()I
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 215
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    .line 510
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    monitor-exit p0

    return v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getSession()Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method public getSessionContext()Ljavax/servlet/http/HttpSessionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 232
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->__nullSessionContext:Ljavax/servlet/http/HttpSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 257
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 258
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    monitor-exit p0

    .line 260
    :goto_0
    return-object v1

    .line 259
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 260
    .local v0, "a":[Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 261
    .end local v0    # "a":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 336
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 337
    return-void
.end method

.method public isIdChanged()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_idChanged:Z

    return v0
.end method

.method public isNew()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 398
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "old":Ljava/lang/Object;
    monitor-enter p0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 448
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 453
    :cond_0
    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    :cond_1
    if-eqz p2, :cond_2

    .line 456
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->bindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    :cond_3
    return-void

    .line 449
    .end local v0    # "old":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setIdChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_idChanged:Z

    .line 467
    return-void
.end method

.method public setLastAccessedTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 209
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 472
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 473
    return-void
.end method

.method public setRequests(I)V
    .locals 1
    .param p1, "requests"    # I

    .prologue
    .line 517
    monitor-enter p0

    .line 519
    :try_start_0
    iput p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 520
    monitor-exit p0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected timeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 313
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "do_invalidate":Z
    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-nez v1, :cond_0

    .line 321
    iget v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    if-gtz v1, :cond_2

    .line 322
    const/4 v0, 0x1

    .line 326
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 329
    :cond_1
    return-void

    .line 324
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_doInvalidate:Z

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 527
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    .line 528
    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    .end local p2    # "value":Ljava/lang/Object;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 529
    :cond_0
    return-void
.end method

.method public willPassivate()V
    .locals 6

    .prologue
    .line 534
    monitor-enter p0

    .line 536
    :try_start_0
    new-instance v1, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v1, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 537
    .local v1, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 540
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v5, :cond_0

    .line 542
    move-object v0, v4

    check-cast v0, Ljavax/servlet/http/HttpSessionActivationListener;

    move-object v3, v0

    .line 543
    .local v3, "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    invoke-interface {v3, v1}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionWillPassivate(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 546
    .end local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "listener":Ljavax/servlet/http/HttpSessionActivationListener;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    return-void
.end method
