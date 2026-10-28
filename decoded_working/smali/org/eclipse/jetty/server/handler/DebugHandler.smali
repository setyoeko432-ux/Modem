.class public Lorg/eclipse/jetty/server/handler/DebugHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "DebugHandler.java"


# instance fields
.field private _date:Lorg/eclipse/jetty/util/DateCache;

.field private _out:Ljava/io/OutputStream;

.field private _print:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 45
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    const-string v1, "./logs/yyyy_mm_dd.debug.log"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 129
    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    .line 130
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 131
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 141
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 23
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v5

    .line 58
    .local v5, "base_response":Lorg/eclipse/jetty/server/Response;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    .line 59
    .local v17, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "old_name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 62
    .local v16, "suspend":Z
    const/4 v13, 0x0

    .line 63
    .local v13, "retry":Z
    const-string v18, "org.eclipse.jetty.thread.name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 64
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 65
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getLocalAddr()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getLocalPort()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 69
    :goto_0
    const/4 v8, 0x0

    .line 72
    .local v8, "ex":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "d":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v10

    .line 75
    .local v10, "ms":I
    if-eqz v13, :cond_3

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v10, v0, :cond_1

    const-string v18, "."

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " RETRY"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/DebugHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v6

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v10

    .line 108
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v16

    .line 109
    if-eqz v16, :cond_8

    .line 111
    const-string v18, "org.eclipse.jetty.thread.name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v10, v0, :cond_6

    const-string v18, "."

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " SUSPEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :goto_4
    return-void

    .line 67
    .end local v6    # "d":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/String;
    .end local v10    # "ms":I
    :cond_0
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 76
    .restart local v6    # "d":Ljava/lang/String;
    .restart local v8    # "ex":Ljava/lang/String;
    .restart local v10    # "ms":I
    :cond_1
    const/16 v18, 0x9

    move/from16 v0, v18

    if-le v10, v0, :cond_2

    :try_start_1
    const-string v18, ".0"

    goto/16 :goto_1

    :cond_2
    const-string v18, ".00"

    goto/16 :goto_1

    .line 78
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v10, v0, :cond_4

    const-string v18, "."

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "Cookie"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "; "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "User-Agent"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 83
    .end local v6    # "d":Ljava/lang/String;
    .end local v10    # "ms":I
    :catch_0
    move-exception v9

    .line 85
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v9    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    move-object/from16 v19, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v6

    .line 107
    .restart local v6    # "d":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_date:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v10

    .line 108
    .restart local v10    # "ms":I
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v16

    .line 109
    if-eqz v16, :cond_e

    .line 111
    const-string v18, "org.eclipse.jetty.thread.name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v10, v0, :cond_c

    const-string v18, "."

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " SUSPEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :goto_7
    throw v19

    .line 78
    :cond_4
    const/16 v18, 0x9

    move/from16 v0, v18

    if-le v10, v0, :cond_5

    :try_start_3
    const-string v18, ".0"

    goto/16 :goto_5

    :cond_5
    const-string v18, ".00"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 112
    :cond_6
    const/16 v18, 0x9

    move/from16 v0, v18

    if-le v10, v0, :cond_7

    const-string v18, ".0"

    goto/16 :goto_3

    :cond_7
    const-string v18, ".00"

    goto/16 :goto_3

    .line 115
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v10, v0, :cond_9

    const-string v18, "."

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v8, :cond_b

    const-string v18, ""

    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const/16 v18, 0x9

    move/from16 v0, v18

    if-le v10, v0, :cond_a

    const-string v18, ".0"

    goto/16 :goto_8

    :cond_a
    const-string v18, ".00"

    goto/16 :goto_8

    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_9

    .line 88
    .end local v6    # "d":Ljava/lang/String;
    .end local v10    # "ms":I
    :catch_1
    move-exception v15

    .line 90
    .local v15, "se":Ljavax/servlet/ServletException;
    :try_start_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljavax/servlet/ServletException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    throw v15

    .line 93
    .end local v15    # "se":Ljavax/servlet/ServletException;
    :catch_2
    move-exception v14

    .line 95
    .local v14, "rte":Ljava/lang/RuntimeException;
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    throw v14

    .line 98
    .end local v14    # "rte":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v7

    .line 100
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    .end local v7    # "e":Ljava/lang/Error;
    .restart local v6    # "d":Ljava/lang/String;
    .restart local v10    # "ms":I
    :cond_c
    const/16 v18, 0x9

    move/from16 v0, v18

    if-le v10, v0, :cond_d

    const-string v18, ".0"

    goto/16 :goto_6

    :cond_d
    const-string v18, ".00"

    goto/16 :goto_6

    .line 115
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    move-object/from16 v20, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v10, v0, :cond_f

    const-string v18, "."

    :goto_a
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v8, :cond_11

    const-string v18, ""

    :goto_b
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_f
    const/16 v18, 0x9

    move/from16 v0, v18

    if-le v10, v0, :cond_10

    const-string v18, ".0"

    goto/16 :goto_a

    :cond_10
    const-string v18, ".00"

    goto/16 :goto_a

    :cond_11
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_b
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 157
    return-void
.end method
