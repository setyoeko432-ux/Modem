.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
    }
.end annotation


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _blobType:Ljava/lang/String;

.field protected _connectionUrl:Ljava/lang/String;

.field protected _createSessionIdTable:Ljava/lang/String;

.field protected _createSessionTable:Ljava/lang/String;

.field protected _datasource:Ljavax/sql/DataSource;

.field protected _dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

.field protected _deleteId:Ljava/lang/String;

.field protected _deleteOldExpiredSessions:Ljava/lang/String;

.field protected _deleteSession:Ljava/lang/String;

.field protected _driver:Ljava/sql/Driver;

.field protected _driverClassName:Ljava/lang/String;

.field protected _insertId:Ljava/lang/String;

.field protected _insertSession:Ljava/lang/String;

.field protected _jndiName:Ljava/lang/String;

.field protected _lastScavengeTime:J

.field protected _longType:Ljava/lang/String;

.field protected _queryId:Ljava/lang/String;

.field protected _scavengeIntervalMs:J

.field protected _selectBoundedExpiredSessions:Ljava/lang/String;

.field private _selectExpiredSessions:Ljava/lang/String;

.field protected _server:Lorg/eclipse/jetty/server/Server;

.field protected _sessionIdTable:Ljava/lang/String;

.field protected final _sessionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _sessionTable:Ljava/lang/String;

.field protected _sessionTableRowId:Ljava/lang/String;

.field protected _task:Ljava/util/TimerTask;

.field protected _timer:Ljava/util/Timer;

.field protected _updateSession:Ljava/lang/String;

.field protected _updateSessionAccessTime:Ljava/lang/String;

.field protected _updateSessionNode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    .line 73
    const-string v0, "JettySessionIds"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    .line 74
    const-string v0, "JettySessions"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    .line 75
    const-string v0, "rowId"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 80
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 242
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    .line 243
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;Ljava/util/Random;)V
    .locals 2
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    .line 247
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>(Ljava/util/Random;)V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    .line 73
    const-string v0, "JettySessionIds"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    .line 74
    const-string v0, "JettySessions"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    .line 75
    const-string v0, "rowId"

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 80
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 248
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->scavenge()V

    return-void
.end method

.method private cleanExpiredSessions()V
    .locals 17

    .prologue
    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, "connection":Ljava/sql/Connection;
    const/4 v10, 0x0

    .line 906
    .local v10, "statement":Ljava/sql/PreparedStatement;
    const/4 v9, 0x0

    .line 907
    .local v9, "sessionsTableStatement":Ljava/sql/Statement;
    const/4 v8, 0x0

    .line 908
    .local v8, "sessionIdsTableStatement":Ljava/sql/Statement;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v3, "expiredSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 912
    const/4 v12, 0x2

    invoke-interface {v1, v12}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 913
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 915
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectExpiredSessions:Ljava/lang/String;

    invoke-interface {v1, v12}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v10

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 917
    .local v4, "now":J
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Searching for sessions expired before {}"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    :cond_0
    const/4 v12, 0x1

    invoke-interface {v10, v12, v4, v5}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 920
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    .line 921
    .local v6, "result":Ljava/sql/ResultSet;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 923
    const-string v12, "sessionId"

    invoke-interface {v6, v12}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 924
    .local v7, "sessionId":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Found expired sessionId={}"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 945
    .end local v4    # "now":J
    .end local v6    # "result":Ljava/sql/ResultSet;
    .end local v7    # "sessionId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 947
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 951
    :try_start_1
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Rolling back clean of expired sessions"

    invoke-interface {v12, v13, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 952
    invoke-interface {v1}, Ljava/sql/Connection;->rollback()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 959
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 961
    :try_start_2
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 965
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    .line 967
    :try_start_3
    invoke-interface {v9}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 971
    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    .line 973
    :try_start_4
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 979
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 980
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_9

    .line 987
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    return-void

    .line 928
    .restart local v4    # "now":J
    .restart local v6    # "result":Ljava/sql/ResultSet;
    :cond_7
    const/4 v9, 0x0

    .line 929
    const/4 v8, 0x0

    .line 931
    :try_start_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 933
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v9

    .line 934
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " where sessionId in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->createCleanExpiredSessionsSql(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 935
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 936
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " where id in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->createCleanExpiredSessionsSql(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 938
    :cond_8
    invoke-interface {v1}, Ljava/sql/Connection;->commit()V

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 942
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 943
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 959
    if-eqz v8, :cond_9

    .line 961
    :try_start_8
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 965
    :cond_9
    :goto_6
    if-eqz v9, :cond_a

    .line 967
    :try_start_9
    invoke-interface {v9}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 971
    :cond_a
    :goto_7
    if-eqz v10, :cond_b

    .line 973
    :try_start_a
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 979
    :cond_b
    :goto_8
    if-eqz v1, :cond_6

    .line 980
    :try_start_b
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_5

    .line 982
    :catch_1
    move-exception v2

    .line 984
    .local v2, "e":Ljava/sql/SQLException;
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 943
    .end local v2    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v12

    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 959
    .end local v4    # "now":J
    .end local v6    # "result":Ljava/sql/ResultSet;
    :catchall_1
    move-exception v12

    if-eqz v8, :cond_c

    .line 961
    :try_start_e
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 965
    :cond_c
    :goto_9
    if-eqz v9, :cond_d

    .line 967
    :try_start_f
    invoke-interface {v9}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 971
    :cond_d
    :goto_a
    if-eqz v10, :cond_e

    .line 973
    :try_start_10
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 979
    :cond_e
    :goto_b
    if-eqz v1, :cond_f

    .line 980
    :try_start_11
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_d

    .line 985
    :cond_f
    :goto_c
    throw v12

    .line 962
    .restart local v4    # "now":J
    .restart local v6    # "result":Ljava/sql/ResultSet;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 968
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 974
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 954
    .end local v4    # "now":J
    .end local v6    # "result":Ljava/sql/ResultSet;
    :catch_5
    move-exception v11

    .local v11, "x":Ljava/lang/Exception;
    :try_start_12
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Rollback of expired sessions failed"

    invoke-interface {v12, v13, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    .line 962
    .end local v11    # "x":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 968
    :catch_7
    move-exception v2

    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 974
    :catch_8
    move-exception v2

    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 982
    :catch_9
    move-exception v2

    .line 984
    .local v2, "e":Ljava/sql/SQLException;
    sget-object v12, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 962
    .end local v2    # "e":Ljava/sql/SQLException;
    :catch_a
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v13, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 968
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v13, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 974
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v13, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 982
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v2

    .line 984
    .local v2, "e":Ljava/sql/SQLException;
    sget-object v13, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method private createCleanExpiredSessionsSql(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1000
    .local p2, "expiredSessionIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1001
    .local v0, "buff":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1004
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1010
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Cleaning expired sessions with: {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private delete(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 739
    .local v2, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 740
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 741
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 742
    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 743
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    if-eqz v2, :cond_0

    .line 749
    :try_start_1
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 754
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 756
    :cond_1
    return-void

    .line 750
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 747
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 749
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 753
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 754
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_3
    throw v3

    .line 750
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v3, 0x0

    .line 773
    .local v3, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 774
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 775
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 776
    const/4 v4, 0x1

    invoke-interface {v3, v4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 777
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 778
    .local v2, "result":Ljava/sql/ResultSet;
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 782
    if-eqz v3, :cond_0

    .line 784
    :try_start_1
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 788
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 789
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_1
    return v4

    .line 785
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 782
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 784
    :try_start_2
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 788
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 789
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_3
    throw v4

    .line 785
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private initializeDatabase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    if-eqz v1, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1024
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 1025
    .local v0, "ic":Ljavax/naming/InitialContext;
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sql/DataSource;

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    goto :goto_0

    .line 1027
    .end local v0    # "ic":Ljavax/naming/InitialContext;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1029
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    invoke-static {v1}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V

    goto :goto_0

    .line 1031
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1033
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_0

    .line 1036
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No database configured for sessions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private insert(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "connection":Ljava/sql/Connection;
    const/4 v4, 0x0

    .line 691
    .local v4, "statement":Ljava/sql/PreparedStatement;
    const/4 v2, 0x0

    .line 694
    .local v2, "query":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 695
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 696
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 697
    const/4 v5, 0x1

    invoke-interface {v2, v5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 698
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 700
    .local v3, "result":Ljava/sql/ResultSet;
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_0

    .line 702
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertId:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 703
    const/4 v5, 0x1

    invoke-interface {v4, v5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 704
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :cond_0
    if-eqz v2, :cond_1

    .line 711
    :try_start_1
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 715
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 717
    :try_start_2
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 721
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 722
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 724
    :cond_3
    return-void

    .line 712
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 718
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 709
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "result":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    .line 711
    :try_start_3
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 715
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 717
    :try_start_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 721
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 722
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    :cond_6
    throw v5

    .line 712
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 718
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private prepareTables()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (id varchar(120), primary key(id))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionIdTable:Ljava/lang/String;

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where expiryTime >= ? and expiryTime <= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectBoundedExpiredSessions:Ljava/lang/String;

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where expiryTime >0 and expiryTime <= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectExpiredSessions:Ljava/lang/String;

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where expiryTime >0 and expiryTime <= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteOldExpiredSessions:Ljava/lang/String;

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (id)  values (?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertId:Ljava/lang/String;

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteId:Ljava/lang/String;

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_queryId:Ljava/lang/String;

    .line 585
    const/4 v8, 0x0

    .line 589
    .local v8, "connection":Ljava/sql/Connection;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v8

    .line 590
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 591
    invoke-interface {v8}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v1

    .line 592
    .local v1, "metaData":Ljava/sql/DatabaseMetaData;
    new-instance v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getRowIdColumnName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIdTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->convertIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "tableName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v16

    .line 598
    .local v16, "result":Ljava/sql/ResultSet;
    invoke-interface/range {v16 .. v16}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    invoke-interface {v8}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionIdTable:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 605
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->convertIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v16

    .line 607
    invoke-interface/range {v16 .. v16}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobType()Ljava/lang/String;

    move-result-object v7

    .line 611
    .local v7, "blobType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getLongType()Ljava/lang/String;

    move-result-object v15

    .line 612
    .local v15, "longType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " varchar(120), sessionId varchar(120), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contextPath varchar(60), virtualHost varchar(60), lastNode varchar(60), accessTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastAccessTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", createTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookieTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastSavedTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expiryTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", primary key("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionTable:Ljava/lang/String;

    .line 616
    invoke-interface {v8}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_createSessionTable:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 620
    .end local v7    # "blobType":Ljava/lang/String;
    .end local v15    # "longType":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idx_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_expiry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 621
    .local v11, "index1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idx_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 623
    .local v13, "index2":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v16

    .line 624
    const/4 v12, 0x0

    .line 625
    .local v12, "index1Exists":Z
    const/4 v14, 0x0

    .line 626
    .local v14, "index2Exists":Z
    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 628
    const-string v2, "INDEX_NAME"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 629
    .local v10, "idxName":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 630
    const/4 v12, 0x1

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    const/4 v14, 0x1

    goto :goto_0

    .line 634
    .end local v10    # "idxName":Ljava/lang/String;
    :cond_4
    if-eqz v12, :cond_5

    if-nez v14, :cond_8

    .line 636
    :cond_5
    invoke-interface {v8}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 639
    .local v17, "statement":Ljava/sql/Statement;
    if-nez v12, :cond_6

    .line 640
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expiryTime)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 641
    :cond_6
    if-nez v14, :cond_7

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (sessionId, contextPath)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 646
    :cond_7
    if-eqz v17, :cond_8

    .line 648
    :try_start_2
    invoke-interface/range {v17 .. v17}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 655
    .end local v17    # "statement":Ljava/sql/Statement;
    :cond_8
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sessionId, contextPath, virtualHost, lastNode, accessTime, lastAccessTime, createTime, cookieTime, lastSavedTime, expiryTime, map) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertSession:Ljava/lang/String;

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteSession:Ljava/lang/String;

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ?, map = ? where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSession:Ljava/lang/String;

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set lastNode = ? where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionNode:Ljava/lang/String;

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set lastNode = ?, accessTime = ?, lastAccessTime = ?, lastSavedTime = ?, expiryTime = ? where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionAccessTime:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 675
    if-eqz v8, :cond_9

    .line 676
    invoke-interface {v8}, Ljava/sql/Connection;->close()V

    .line 678
    :cond_9
    return-void

    .line 649
    .restart local v17    # "statement":Ljava/sql/Statement;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 675
    .end local v1    # "metaData":Ljava/sql/DatabaseMetaData;
    .end local v4    # "tableName":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "index1":Ljava/lang/String;
    .end local v12    # "index1Exists":Z
    .end local v13    # "index2":Ljava/lang/String;
    .end local v14    # "index2Exists":Z
    .end local v16    # "result":Ljava/sql/ResultSet;
    .end local v17    # "statement":Ljava/sql/Statement;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_a

    .line 676
    invoke-interface {v8}, Ljava/sql/Connection;->close()V

    :cond_a
    throw v2

    .line 646
    .restart local v1    # "metaData":Ljava/sql/DatabaseMetaData;
    .restart local v4    # "tableName":Ljava/lang/String;
    .restart local v11    # "index1":Ljava/lang/String;
    .restart local v12    # "index1Exists":Z
    .restart local v13    # "index2":Ljava/lang/String;
    .restart local v14    # "index2Exists":Z
    .restart local v16    # "result":Ljava/sql/ResultSet;
    .restart local v17    # "statement":Ljava/sql/Statement;
    :catchall_1
    move-exception v2

    if-eqz v17, :cond_b

    .line 648
    :try_start_5
    invoke-interface/range {v17 .. v17}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 649
    :cond_b
    :goto_2
    :try_start_6
    throw v2

    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private scavenge()V
    .locals 24

    .prologue
    .line 806
    const/4 v3, 0x0

    .line 807
    .local v3, "connection":Ljava/sql/Connection;
    const/4 v15, 0x0

    .line 808
    .local v15, "statement":Ljava/sql/PreparedStatement;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v6, "expiredSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 812
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Scavenge sweep started at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_a

    .line 815
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 816
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_selectBoundedExpiredSessions:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v15

    .line 819
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 820
    .local v8, "lowerBound":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v16, v0

    .line 821
    .local v16, "upperBound":J
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 822
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Searching for sessions expired between "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0, v8, v9}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 825
    const/16 v18, 0x2

    move/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-interface {v15, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 826
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v11

    .line 827
    .local v11, "result":Ljava/sql/ResultSet;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 829
    const-string v18, "sessionId"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 830
    .local v14, "sessionId":Ljava/lang/String;
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Found expired sessionId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 873
    .end local v8    # "lowerBound":J
    .end local v11    # "result":Ljava/sql/ResultSet;
    .end local v14    # "sessionId":Ljava/lang/String;
    .end local v16    # "upperBound":J
    :catch_0
    move-exception v5

    .line 875
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 876
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "Problem selecting expired sessions"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 883
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Scavenge sweep ended at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :cond_3
    if-eqz v3, :cond_4

    .line 888
    :try_start_2
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_4

    .line 896
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-void

    .line 835
    .restart local v8    # "lowerBound":J
    .restart local v11    # "result":Ljava/sql/ResultSet;
    .restart local v16    # "upperBound":J
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v18, v0

    const-class v19, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    .line 836
    .local v4, "contexts":[Lorg/eclipse/jetty/server/Handler;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-eqz v4, :cond_7

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_7

    .line 839
    aget-object v18, v4, v7

    check-cast v18, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v19, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 840
    .local v13, "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    if-eqz v13, :cond_6

    .line 842
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v10

    .line 843
    .local v10, "manager":Lorg/eclipse/jetty/server/SessionManager;
    if-eqz v10, :cond_6

    instance-of v0, v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 845
    check-cast v10, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .end local v10    # "manager":Lorg/eclipse/jetty/server/SessionManager;
    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->expire(Ljava/util/List;)V

    .line 836
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 851
    .end local v13    # "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    sub-long v16, v18, v20

    .line 852
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_a

    .line 854
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting old expired sessions expired before "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 857
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteOldExpiredSessions:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v15

    .line 858
    const/16 v18, 0x1

    move/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-interface {v15, v0, v1, v2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 859
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v12

    .line 860
    .local v12, "rows":I
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleted "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " rows of old sessions expired before "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 864
    :cond_9
    if-eqz v15, :cond_a

    .line 866
    :try_start_5
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 882
    .end local v4    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .end local v7    # "i":I
    .end local v8    # "lowerBound":J
    .end local v11    # "result":Ljava/sql/ResultSet;
    .end local v12    # "rows":I
    .end local v16    # "upperBound":J
    :cond_a
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 883
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_b

    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Scavenge sweep ended at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :cond_b
    if-eqz v3, :cond_4

    .line 888
    :try_start_6
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 890
    :catch_1
    move-exception v5

    .line 892
    .local v5, "e":Ljava/sql/SQLException;
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 867
    .end local v5    # "e":Ljava/sql/SQLException;
    .restart local v4    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .restart local v7    # "i":I
    .restart local v8    # "lowerBound":J
    .restart local v11    # "result":Ljava/sql/ResultSet;
    .restart local v12    # "rows":I
    .restart local v16    # "upperBound":J
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 882
    .end local v4    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "i":I
    .end local v8    # "lowerBound":J
    .end local v11    # "result":Ljava/sql/ResultSet;
    .end local v12    # "rows":I
    .end local v16    # "upperBound":J
    :catchall_0
    move-exception v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    .line 883
    sget-object v19, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_c

    sget-object v19, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Scavenge sweep ended at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_lastScavengeTime:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :cond_c
    if-eqz v3, :cond_d

    .line 888
    :try_start_8
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_5

    .line 893
    :cond_d
    :goto_5
    throw v18

    .line 864
    .restart local v4    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .restart local v7    # "i":I
    .restart local v8    # "lowerBound":J
    .restart local v11    # "result":Ljava/sql/ResultSet;
    .restart local v16    # "upperBound":J
    :catchall_1
    move-exception v18

    if-eqz v15, :cond_e

    .line 866
    :try_start_9
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 867
    :cond_e
    :goto_6
    :try_start_a
    throw v18

    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v19, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 878
    .end local v4    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .end local v7    # "i":I
    .end local v8    # "lowerBound":J
    .end local v11    # "result":Ljava/sql/ResultSet;
    .end local v16    # "upperBound":J
    :cond_f
    :try_start_b
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 890
    :catch_4
    move-exception v5

    .line 892
    .local v5, "e":Ljava/sql/SQLException;
    sget-object v18, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 890
    .end local v5    # "e":Ljava/sql/SQLException;
    :catch_5
    move-exception v5

    .line 892
    .restart local v5    # "e":Ljava/sql/SQLException;
    sget-object v19, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 6
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 389
    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    :goto_0
    return-void

    .line 376
    .restart local p1    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v3

    .line 378
    :try_start_0
    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 381
    .local v1, "id":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->insert(Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 384
    .restart local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem storing session id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 521
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->initializeDatabase()V

    .line 522
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->prepareTables()V

    .line 523
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->cleanExpiredSessions()V

    .line 524
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStart()V

    .line 525
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scavenging interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getScavengeInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "JDBCSessionScavenger"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    .line 528
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getScavengeInterval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->setScavengeInterval(J)V

    .line 529
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
    .line 538
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 544
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    .line 545
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 547
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStop()V

    .line 548
    return-void

    .line 545
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    return-object v0
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 432
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 433
    .local v0, "dot":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "nodeId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 562
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getDatasourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "clusterId"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 444
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    .end local p1    # "clusterId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getScavengeInterval()J
    .locals 4

    .prologue
    .line 367
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 453
    if-nez p1, :cond_0

    .line 475
    :goto_0
    return v3

    .line 456
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "clusterId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 458
    .local v2, "inUse":Z
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v4

    .line 460
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 461
    monitor-exit v4

    .line 464
    if-eqz v2, :cond_1

    .line 465
    const/4 v3, 0x1

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 470
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->exists(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem checking inUse for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    .line 489
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v5

    .line 493
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_server:Lorg/eclipse/jetty/server/Server;

    const-class v6, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 494
    .local v0, "contexts":[Lorg/eclipse/jetty/server/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_1

    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 496
    aget-object v4, v0, v1

    check-cast v4, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v6, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 497
    .local v3, "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    if-eqz v3, :cond_0

    .line 499
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v2

    .line 501
    .local v2, "manager":Lorg/eclipse/jetty/server/SessionManager;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    if-eqz v4, :cond_0

    .line 503
    check-cast v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .end local v2    # "manager":Lorg/eclipse/jetty/server/SessionManager;
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->invalidateSession(Ljava/lang/String;)V

    .line 494
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v3    # "sessionHandler":Lorg/eclipse/jetty/server/session/SessionHandler;
    :cond_1
    monitor-exit v5

    .line 508
    return-void

    .line 507
    .end local v0    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    monitor-enter v2

    .line 409
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionIds:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 414
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->delete(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem removing session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 397
    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    :goto_0
    return-void

    .line 396
    .restart local p1    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    check-cast p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .end local p1    # "session":Ljavax/servlet/http/HttpSession;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->removeSession(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBlobType(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setDatasource(Ljavax/sql/DataSource;)V
    .locals 0
    .param p1, "ds"    # Ljavax/sql/DataSource;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_datasource:Ljavax/sql/DataSource;

    .line 279
    return-void
.end method

.method public setDatasourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "jndi"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_jndiName:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setDriverInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "driverClassName"    # Ljava/lang/String;
    .param p2, "connectionUrl"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driverClassName:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setDriverInfo(Ljava/sql/Driver;Ljava/lang/String;)V
    .locals 0
    .param p1, "driverClass"    # Ljava/sql/Driver;
    .param p2, "connectionUrl"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_driver:Ljava/sql/Driver;

    .line 272
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_connectionUrl:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setLongType(Ljava/lang/String;)V
    .locals 0
    .param p1, "longType"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setScavengeInterval(J)V
    .locals 12
    .param p1, "sec"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 330
    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    .line 331
    const-wide/16 p1, 0x3c

    .line 333
    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 334
    .local v6, "old_period":J
    const-wide/16 v0, 0x3e8

    mul-long v8, p1, v0

    .line 336
    .local v8, "period":J
    iput-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 340
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    const-wide/16 v2, 0xa

    div-long v10, v0, v2

    .line 341
    .local v10, "tenPercent":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 342
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    .line 344
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scavenging every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    cmp-long v0, v8, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-nez v0, :cond_5

    .line 348
    :cond_3
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 352
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    .line 360
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_scavengeIntervalMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 361
    monitor-exit p0

    .line 363
    :cond_5
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
