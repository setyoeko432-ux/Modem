.class Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;
.super Ljava/lang/Object;
.source "JDBCSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

.field final synthetic val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$canonicalContextPath:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$vhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$canonicalContextPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$vhost:Ljava/lang/String;

    iput-object p5, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 814
    const/4 v15, 0x0

    .line 815
    .local v15, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    const/4 v9, 0x0

    .line 816
    .local v9, "connection":Ljava/sql/Connection;
    const/16 v16, 0x0

    .line 819
    .local v16, "statement":Ljava/sql/PreparedStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;

    move-result-object v9

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$canonicalContextPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$vhost:Ljava/lang/String;

    invoke-virtual {v2, v9, v3, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getLoadStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v16

    .line 821
    invoke-interface/range {v16 .. v16}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v14

    .line 822
    .local v14, "result":Ljava/sql/ResultSet;
    invoke-interface {v14}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 824
    new-instance v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "createTime"

    invoke-interface {v14, v5}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "accessTime"

    invoke-interface {v14, v7}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .local v1, "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_start_1
    const-string v2, "cookieTime"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setCookieSet(J)V

    .line 826
    const-string v2, "lastAccessTime"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastAccessedTime(J)V

    .line 827
    const-string v2, "lastNode"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastNode(Ljava/lang/String;)V

    .line 828
    const-string v2, "lastSavedTime"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setLastSaved(J)V

    .line 829
    const-string v2, "expiryTime"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setExpiryTime(J)V

    .line 830
    const-string v2, "contextPath"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setCanonicalContext(Ljava/lang/String;)V

    .line 831
    const-string v2, "virtualHost"

    invoke-interface {v14, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->setVirtualHost(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    const-string v3, "map"

    invoke-virtual {v2, v14, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 834
    .local v11, "is":Ljava/io/InputStream;
    new-instance v13, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {v13, v2, v11}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/io/InputStream;)V

    .line 835
    .local v13, "ois":Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    .line 836
    .local v12, "o":Ljava/lang/Object;
    check-cast v12, Ljava/util/Map;

    .end local v12    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v12}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->addAttributes(Ljava/util/Map;)V

    .line 837
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 839
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADED session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "ois":Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 850
    if-eqz v16, :cond_1

    .line 852
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 856
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 858
    :try_start_3
    invoke-interface {v9}, Ljava/sql/Connection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 862
    .end local v14    # "result":Ljava/sql/ResultSet;
    :cond_2
    :goto_2
    return-void

    .line 853
    .restart local v14    # "result":Ljava/sql/ResultSet;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 859
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 844
    .end local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "result":Ljava/sql/ResultSet;
    .restart local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :catch_2
    move-exception v10

    move-object v1, v15

    .line 846
    .end local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$1;->val$_exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 850
    if-eqz v16, :cond_3

    .line 852
    :try_start_5
    invoke-interface/range {v16 .. v16}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 856
    :cond_3
    :goto_4
    if-eqz v9, :cond_2

    .line 858
    :try_start_6
    invoke-interface {v9}, Ljava/sql/Connection;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 859
    :catch_3
    move-exception v10

    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 853
    :catch_4
    move-exception v10

    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 850
    .end local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :catchall_0
    move-exception v2

    move-object v1, v15

    .end local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :goto_5
    if-eqz v16, :cond_4

    .line 852
    :try_start_7
    invoke-interface/range {v16 .. v16}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 856
    :cond_4
    :goto_6
    if-eqz v9, :cond_5

    .line 858
    :try_start_8
    invoke-interface {v9}, Ljava/sql/Connection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 859
    :cond_5
    :goto_7
    throw v2

    .line 853
    :catch_5
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 859
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 850
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    goto :goto_5

    .line 844
    .restart local v14    # "result":Ljava/sql/ResultSet;
    :catch_7
    move-exception v10

    goto :goto_3

    .end local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :cond_6
    move-object v1, v15

    .end local v15    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .restart local v1    # "session":Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    goto :goto_0
.end method
