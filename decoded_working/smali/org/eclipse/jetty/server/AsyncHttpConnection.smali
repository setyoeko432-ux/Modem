.class public Lorg/eclipse/jetty/server/AsyncHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final NO_PROGRESS_CLOSE:I

.field private static final NO_PROGRESS_INFO:I


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _readInterested:Z

.field private _total_no_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "org.mortbay.jetty.NO_PROGRESS_INFO"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    .line 41
    const-string v0, "org.mortbay.jetty.NO_PROGRESS_CLOSE"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    .line 43
    const-class v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 1
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 51
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local p2    # "endpoint":Lorg/eclipse/jetty/io/EndPoint;
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 52
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v1, p0

    .line 58
    .local v1, "connection":Lorg/eclipse/jetty/io/Connection;
    const/4 v6, 0x0

    .line 59
    .local v6, "some_progress":Z
    const/4 v5, 0x1

    .line 63
    .local v5, "progress":Z
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 66
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    :goto_0
    if-eqz v5, :cond_15

    if-ne v1, p0, :cond_15

    .line 72
    const/4 v5, 0x0

    .line 76
    :try_start_1
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 78
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isDispatchable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->handleRequest()V

    .line 86
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 87
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    move-result v8

    if-lez v8, :cond_2

    .line 88
    const/4 v5, 0x1

    .line 91
    :cond_2
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 94
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    .line 95
    const/4 v5, 0x1

    .line 110
    :cond_3
    or-int/2addr v6, v5

    .line 112
    :try_start_2
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v4

    .line 113
    .local v4, "parserComplete":Z
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    .line 114
    .local v3, "generatorComplete":Z
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 115
    .local v0, "complete":Z
    :goto_2
    if-eqz v4, :cond_5

    .line 117
    if-eqz v3, :cond_8

    .line 120
    const/4 v5, 0x1

    .line 123
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v8

    const/16 v9, 0x65

    if-ne v8, v9, :cond_4

    .line 125
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v9, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/io/Connection;

    .line 126
    .local v7, "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v7, :cond_4

    .line 127
    move-object v1, v7

    .line 130
    .end local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v8

    if-nez v8, :cond_5

    .line 135
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 149
    :cond_5
    :goto_3
    if-nez v0, :cond_0

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 153
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "suspended {}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 82
    .end local v0    # "complete":Z
    .end local v3    # "generatorComplete":Z
    .end local v4    # "parserComplete":Z
    :cond_6
    :try_start_3
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 114
    .restart local v3    # "generatorComplete":Z
    .restart local v4    # "parserComplete":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 144
    .restart local v0    # "complete":Z
    :cond_8
    const/4 v8, 0x0

    :try_start_4
    iput-boolean v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Disabled read interest while writing response {}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 161
    .end local v0    # "complete":Z
    .end local v3    # "generatorComplete":Z
    .end local v4    # "parserComplete":Z
    :catchall_0
    move-exception v8

    move-object v9, v8

    const/4 v8, 0x0

    invoke-static {v8}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v8

    if-nez v8, :cond_9

    .line 167
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 175
    :cond_9
    if-eqz v6, :cond_1b

    .line 176
    const/4 v8, 0x0

    iput v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 186
    :cond_a
    :goto_4
    throw v9

    .line 97
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_5
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 101
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fields="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 105
    :cond_b
    const/4 v5, 0x1

    .line 106
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v9

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    or-int/2addr v6, v5

    .line 112
    :try_start_6
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v4

    .line 113
    .restart local v4    # "parserComplete":Z
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    .line 114
    .restart local v3    # "generatorComplete":Z
    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    const/4 v0, 0x1

    .line 115
    .restart local v0    # "complete":Z
    :goto_5
    if-eqz v4, :cond_d

    .line 117
    if-eqz v3, :cond_f

    .line 120
    const/4 v5, 0x1

    .line 123
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v8

    const/16 v9, 0x65

    if-ne v8, v9, :cond_c

    .line 125
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v9, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/io/Connection;

    .line 126
    .restart local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v7, :cond_c

    .line 127
    move-object v1, v7

    .line 130
    .end local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v8

    if-nez v8, :cond_d

    .line 135
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 149
    :cond_d
    :goto_6
    if-nez v0, :cond_0

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 153
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "suspended {}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 114
    .end local v0    # "complete":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 144
    .restart local v0    # "complete":Z
    :cond_f
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "Disabled read interest while writing response {}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 110
    .end local v0    # "complete":Z
    .end local v2    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v3    # "generatorComplete":Z
    .end local v4    # "parserComplete":Z
    :catchall_1
    move-exception v8

    or-int/2addr v6, v5

    .line 112
    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v9}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v4

    .line 113
    .restart local v4    # "parserComplete":Z
    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v9}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    .line 114
    .restart local v3    # "generatorComplete":Z
    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    const/4 v0, 0x1

    .line 115
    .restart local v0    # "complete":Z
    :goto_7
    if-eqz v4, :cond_11

    .line 117
    if-eqz v3, :cond_14

    .line 120
    const/4 v5, 0x1

    .line 123
    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v9

    const/16 v10, 0x65

    if-ne v9, v10, :cond_10

    .line 125
    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v10, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/io/Connection;

    .line 126
    .restart local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v7, :cond_10

    .line 127
    move-object v1, v7

    .line 130
    .end local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 133
    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v9}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v9

    if-nez v9, :cond_11

    .line 135
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 149
    :cond_11
    :goto_8
    if-nez v0, :cond_12

    iget-object v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 153
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "suspended {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v5, 0x0

    .line 156
    :cond_12
    throw v8

    .line 114
    .end local v0    # "complete":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_7

    .line 144
    .restart local v0    # "complete":Z
    :cond_14
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 145
    sget-object v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "Disabled read interest while writing response {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 161
    .end local v0    # "complete":Z
    .end local v3    # "generatorComplete":Z
    .end local v4    # "parserComplete":Z
    :cond_15
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 164
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v8

    if-nez v8, :cond_16

    .line 167
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 168
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 171
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 175
    :cond_16
    if-eqz v6, :cond_18

    .line 176
    const/4 v8, 0x0

    iput v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 190
    :cond_17
    :goto_9
    return-object v1

    .line 179
    :cond_18
    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v8, :cond_1a

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_1a

    sget v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v8, :cond_19

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v8, v9, :cond_1a

    .line 181
    :cond_19
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EndPoint making no progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1a
    sget v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v8, :cond_17

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v9, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v8, v9, :cond_17

    .line 184
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing EndPoint making no progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v8, v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v8, :cond_17

    .line 186
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/channels/ByteChannel;->close()V

    goto/16 :goto_9

    .line 179
    :cond_1b
    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 180
    sget v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v8, :cond_1d

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v10, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v8, v10

    if-nez v8, :cond_1d

    sget v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v8, :cond_1c

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v10, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v8, v10, :cond_1d

    .line 181
    :cond_1c
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EndPoint making no progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_1d
    sget v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v8, :cond_a

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v10, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v8, v10, :cond_a

    .line 184
    sget-object v8, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing EndPoint making no progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v8, v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v8, :cond_a

    .line 186
    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v8, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/channels/ByteChannel;->close()V

    goto/16 :goto_4
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    .line 205
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 210
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_readInterested:Z

    .line 211
    sget-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Enabled read interest {}"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->reset()V

    .line 213
    return-void
.end method
