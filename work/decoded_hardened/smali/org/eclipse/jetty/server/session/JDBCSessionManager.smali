.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "JDBCSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;,
        Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

.field protected _saveIntervalSec:J

.field private _sessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/AbstractSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .line 81
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    .line 352
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    .line 75
    invoke-static {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager;
    .param p1, "x1"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 1134
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "rowId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    return-object v0
.end method

.method private static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5f

    .line 1169
    if-nez p0, :cond_0

    .line 1170
    const-string v0, ""

    .line 1172
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method private static getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    const/4 v3, 0x0

    .line 1149
    const-string v0, "0.0.0.0"

    .line 1151
    .local v0, "vhost":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 1158
    .end local v0    # "vhost":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1154
    .restart local v0    # "vhost":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, "vhosts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 1158
    aget-object v0, v1, v3

    goto :goto_0
.end method

.method private updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 8
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1044
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v4, 0x0

    .line 1047
    .local v4, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1048
    .local v2, "now":J
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1049
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v5, v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionAccessTime:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 1050
    const/4 v5, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1051
    const/4 v5, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1052
    const/4 v5, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1053
    const/4 v5, 0x4

    invoke-interface {v4, v5, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1054
    const/4 v5, 0x5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getExpiryTime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1055
    const/4 v5, 0x6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1056
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1057
    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 1058
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V

    .line 1059
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1060
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated access time session id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    :cond_0
    if-eqz v4, :cond_1

    .line 1066
    :try_start_1
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1070
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1071
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1073
    :cond_2
    return-void

    .line 1067
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1064
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "now":J
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 1066
    :try_start_2
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1070
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1071
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_4
    throw v5

    .line 1067
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 5
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 671
    :cond_0
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 680
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 683
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    .line 684
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->didActivate()V

    .line 685
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 687
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store new session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public cacheInvalidate(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 0
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .prologue
    .line 423
    return-void
.end method

.method protected deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 6
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1089
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 1092
    .local v2, "statement":Ljava/sql/PreparedStatement;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1093
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteSession:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 1094
    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1095
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1096
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1097
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted Session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    :cond_0
    if-eqz v2, :cond_1

    .line 1103
    :try_start_1
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1107
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1108
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1110
    :cond_2
    return-void

    .line 1104
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1101
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 1103
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1107
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1108
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_4
    throw v3

    .line 1104
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No session id manager defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .line 583
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 585
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    .line 586
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
    .line 597
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 600
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 601
    return-void
.end method

.method protected expire(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "sessionIds":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopping()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 763
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 764
    .local v1, "old_loader":Ljava/lang/ClassLoader;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 768
    .local v0, "itor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 770
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 771
    .local v3, "sessionId":Ljava/lang/String;
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 772
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expiring session id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    :cond_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 775
    .local v2, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    if-eqz v2, :cond_4

    .line 777
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->timeout()V

    .line 778
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 787
    .end local v2    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .end local v3    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 789
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Problem expiring sessions"

    invoke-interface {v6, v7, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 782
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v2    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v3    # "sessionId":Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 783
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized session id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 793
    .end local v2    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .end local v3    # "sessionId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v6

    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_0
.end method

.method public getSaveInterval()J
    .locals 2

    .prologue
    .line 404
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    return-wide v0
.end method

.method public bridge synthetic getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .locals 14
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v7, 0x0

    .line 445
    const/4 v4, 0x0

    .line 446
    .local v4, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 448
    .local v1, "memSession":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 460
    .local v2, "now":J
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    if-nez v1, :cond_5

    .line 463
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSession("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): not in session map,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastSaved="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_4

    move-wide v5, v7

    :goto_0
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v9, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_0
    :goto_1
    if-nez v1, :cond_7

    .line 481
    :try_start_1
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSession("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "): no session in session map. Reloading session data from db."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 503
    :goto_2
    if-eqz v4, :cond_b

    .line 506
    :try_start_2
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_a

    .line 509
    :cond_1
    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    invoke-static {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-lez v5, :cond_9

    .line 511
    :cond_2
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 512
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSession("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): lastNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastNode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " thisNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastNode(Ljava/lang/String;)V

    .line 515
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    :try_start_3
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V

    .line 521
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    :goto_3
    :try_start_4
    monitor-exit p0

    move-object v5, v4

    :goto_4
    return-object v5

    .line 463
    :cond_4
    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v5

    goto/16 :goto_0

    .line 468
    :cond_5
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSession("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): in session map, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastSaved="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_6

    move-wide v5, v7

    :goto_5
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " thisNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " difference="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v10

    sub-long v10, v2, v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v9, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 550
    .end local v2    # "now":J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 468
    .restart local v2    # "now":J
    :cond_6
    :try_start_5
    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v5

    goto :goto_5

    .line 484
    :cond_7
    :try_start_6
    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)J

    move-result-wide v5

    sub-long v5, v2, v5

    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v9, v12

    cmp-long v5, v5, v9

    if-ltz v5, :cond_8

    .line 486
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSession("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "): stale session. Reloading session data from db."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v4

    goto/16 :goto_2

    .line 491
    :cond_8
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSession("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "): session in session map"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 492
    move-object v4, v1

    goto/16 :goto_2

    .line 495
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    const/4 v5, 0x0

    monitor-exit p0

    goto/16 :goto_4

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update freshly loaded session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    const/4 v5, 0x0

    monitor-exit p0

    goto/16 :goto_4

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "getSession ({}): Session has expired"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 539
    :cond_a
    move-object v4, v1

    .line 540
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "getSession({}): Session not stale {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 546
    :cond_b
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "getSession({}): No session in database matching id={}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method

.method public getSessions()I
    .locals 2

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "size":I
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 565
    monitor-exit p0

    .line 566
    return v0

    .line 565
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected invalidateSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    .line 622
    const/4 v1, 0x0

    .line 623
    .local v1, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-object v1, v0

    .line 626
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->invalidate()V

    .line 632
    :cond_0
    return-void

    .line 626
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected invalidateSessions()V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method protected loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "canonicalContextPath"    # Ljava/lang/String;
    .param p3, "vhost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 808
    .local v5, "_reference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 809
    .local v6, "_exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Exception;>;"
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 865
    .local v0, "load":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v1, :cond_0

    .line 866
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 870
    :goto_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 874
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    throw v1

    .line 868
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 878
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    return-object v1
.end method

.method protected newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 702
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method public removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V
    .locals 6
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/AbstractSession;
    .param p2, "invalidate"    # Z

    .prologue
    .line 715
    const/4 v3, 0x0

    .line 717
    .local v3, "removed":Z
    monitor-enter p0

    .line 720
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 722
    const/4 v3, 0x1

    .line 723
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->removeSession(Ljava/lang/String;)Z

    .line 725
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    if-eqz v3, :cond_3

    .line 730
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->removeSession(Ljavax/servlet/http/HttpSession;)V

    .line 732
    if-eqz p2, :cond_1

    .line 733
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/server/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    .line 735
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 737
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 738
    .local v0, "event":Ljavax/servlet/http/HttpSessionEvent;
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    .line 739
    .local v2, "l":Ljavax/servlet/http/HttpSessionListener;
    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    goto :goto_0

    .line 725
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljavax/servlet/http/HttpSessionListener;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 741
    :cond_2
    if-nez p2, :cond_3

    .line 743
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 746
    :cond_3
    return-void
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 5
    .param p1, "idInCluster"    # Ljava/lang/String;

    .prologue
    .line 643
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    .local v1, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    if-eqz v1, :cond_0

    .line 649
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    :try_start_2
    monitor-exit p0

    return v2

    .line 651
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem deleting session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 655
    .restart local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setSaveInterval(J)V
    .locals 0
    .param p1, "sec"    # J

    .prologue
    .line 399
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    .line 400
    return-void
.end method

.method protected storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 13
    .param p1, "session"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 890
    if-nez p1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 895
    .local v3, "connection":Ljava/sql/Connection;
    const/4 v9, 0x0

    .line 898
    .local v9, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Ljava/lang/String;

    move-result-object v8

    .line 900
    .local v8, "rowId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 901
    .local v5, "now":J
    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 902
    iget-object v10, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v10, v10, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertSession:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9

    .line 903
    const/4 v10, 0x1

    invoke-interface {v9, v10, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 904
    const/4 v10, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 905
    const/4 v10, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCanonicalContext()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 906
    const/4 v10, 0x4

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getVirtualHost()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 907
    const/4 v10, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 908
    const/4 v10, 0x6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 909
    const/4 v10, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 910
    const/16 v10, 0x8

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCreationTime()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 911
    const/16 v10, 0x9

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getCookieSet()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 912
    const/16 v10, 0xa

    invoke-interface {v9, v10, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 913
    const/16 v10, 0xb

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getExpiryTime()J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 915
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 916
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 917
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAttributeMap()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 918
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 920
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 921
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/16 v10, 0xc

    array-length v11, v2

    invoke-interface {v9, v10, v0, v11}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 923
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 924
    invoke-virtual {p1, v8}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setRowId(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1, v5, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 928
    sget-object v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 929
    sget-object v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stored session "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_2
    if-eqz v9, :cond_3

    .line 935
    :try_start_1
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 939
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 940
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    goto/16 :goto_0

    .line 936
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 933
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "now":J
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .end local v8    # "rowId":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_4

    .line 935
    :try_start_2
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 939
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 940
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    :cond_5
    throw v10

    .line 936
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v11, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 12
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 954
    if-nez p1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 958
    .local v3, "connection":Ljava/sql/Connection;
    const/4 v8, 0x0

    .line 961
    .local v8, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 962
    .local v5, "now":J
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 963
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v9, v9, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSession:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    .line 964
    const/4 v9, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 965
    const/4 v9, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAccessed()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 966
    const/4 v9, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getLastAccessedTime()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 967
    const/4 v9, 0x4

    invoke-interface {v8, v9, v5, v6}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 968
    const/4 v9, 0x5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getExpiryTime()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 970
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 971
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 972
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAttributeMap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 973
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 974
    .local v2, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 976
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v9, 0x6

    array-length v10, v2

    invoke-interface {v8, v9, v0, v10}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 977
    const/4 v9, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 978
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 980
    invoke-virtual {p1, v5, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 981
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 982
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updated session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    :cond_2
    if-eqz v8, :cond_3

    .line 988
    :try_start_1
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 992
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 993
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    goto/16 :goto_0

    .line 989
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 986
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "now":J
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 988
    :try_start_2
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 992
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 993
    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    :cond_5
    throw v9

    .line 989
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 7
    .param p1, "data"    # Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "nodeId":Ljava/lang/String;
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 1009
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 1012
    .local v3, "statement":Ljava/sql/PreparedStatement;
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v0, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1013
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionNode:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 1014
    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1015
    const/4 v4, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getRowId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1016
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1017
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 1018
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1019
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated last node for session id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastNode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_0
    if-eqz v3, :cond_1

    .line 1025
    :try_start_1
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1029
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1030
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 1032
    :cond_2
    return-void

    .line 1026
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1023
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 1025
    :try_start_2
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1029
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1030
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_4
    throw v4

    .line 1026
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
