.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
.super Lorg/eclipse/jetty/server/session/AbstractSession;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x48482e75793f5edfL


# instance fields
.field private _canonicalContext:Ljava/lang/String;

.field private _cookieSet:J

.field private _dirty:Z

.field private _expiryTime:J

.field private _lastNode:Ljava/lang/String;

.field private _lastSaved:J

.field private _rowId:Ljava/lang/String;

.field private _virtualHost:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "rowId"    # Ljava/lang/String;
    .param p4, "created"    # J
    .param p6, "accessed"    # J

    .prologue
    .line 167
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p2

    .line 168
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 169
    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 7
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .line 150
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 151
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    .line 152
    .local v0, "maxInterval":I
    if-gtz v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    .line 153
    iget-object v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_virtualHost:Ljava/lang/String;

    .line 154
    iget-object v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_canonicalContext:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;

    .line 156
    return-void

    .line 152
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    return-wide v0
.end method


# virtual methods
.method protected access(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 273
    monitor-enter p0

    .line 275
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->access(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    .line 278
    .local v0, "maxInterval":I
    if-gtz v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    .line 279
    const/4 v1, 0x1

    monitor-exit p0

    .line 281
    .end local v0    # "maxInterval":I
    :goto_1
    return v1

    .line 278
    .restart local v0    # "maxInterval":I
    :cond_0
    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long/2addr v1, p1

    goto :goto_0

    .line 281
    .end local v0    # "maxInterval":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected complete()V
    .locals 7

    .prologue
    .line 294
    monitor-enter p0

    .line 296
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->willPassivate()V

    .line 306
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    .line 307
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 323
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    return-void

    .line 309
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSaveInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v1, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem persisting changed session data id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 321
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    goto :goto_1

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 321
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected cookieSet()V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J

    .line 262
    return-void
.end method

.method public declared-synchronized getCanonicalContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookieSet()J
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExpiryTime()J
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSaved()J
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 256
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 249
    return-void
.end method

.method public declared-synchronized setCanonicalContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCookieSet(J)V
    .locals 0
    .param p1, "ms"    # J

    .prologue
    .line 226
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J

    .line 227
    return-void
.end method

.method public declared-synchronized setExpiryTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastNode(Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSaved(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setRowId(Ljava/lang/String;)V
    .locals 1
    .param p1, "rowId"    # Ljava/lang/String;

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVirtualHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "vhost"    # Ljava/lang/String;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

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
    .line 329
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timing out session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->timeout()V

    .line 332
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session rowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_rowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastNode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastAccessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cookieSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_cookieSet:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastSaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_lastSaved:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_expiryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
