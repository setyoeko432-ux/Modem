.class Lorg/eclipse/jetty/server/LocalConnector$Request;
.super Ljava/lang/Object;
.source "LocalConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/LocalConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Request"
.end annotation


# instance fields
.field private final _keepOpen:Z

.field private final _latch:Ljava/util/concurrent/CountDownLatch;

.field private final _requestsBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private volatile _responsesBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field final synthetic this$0:Lorg/eclipse/jetty/server/LocalConnector;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "requestsBuffer"    # Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .param p3, "keepOpen"    # Z
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_requestsBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 105
    iput-boolean p3, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_keepOpen:Z

    .line 106
    iput-object p4, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_latch:Ljava/util/concurrent/CountDownLatch;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;Lorg/eclipse/jetty/server/LocalConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/server/LocalConnector;
    .param p2, "x1"    # Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/util/concurrent/CountDownLatch;
    .param p5, "x4"    # Lorg/eclipse/jetty/server/LocalConnector$1;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/LocalConnector$Request;-><init>(Lorg/eclipse/jetty/server/LocalConnector;Lorg/eclipse/jetty/io/ByteArrayBuffer;ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public getResponsesBuffer()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_responsesBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 113
    :try_start_0
    new-instance v2, Lorg/eclipse/jetty/server/LocalConnector$Request$1;

    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_requestsBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->asArray()[B

    move-result-object v6

    const/16 v7, 0x400

    invoke-direct {v2, p0, v6, v7}, Lorg/eclipse/jetty/server/LocalConnector$Request$1;-><init>(Lorg/eclipse/jetty/server/LocalConnector$Request;[BI)V

    .line 124
    .local v2, "endPoint":Lorg/eclipse/jetty/io/ByteArrayEndPoint;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setGrowOutput(Z)V

    .line 125
    new-instance v1, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/LocalConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v7

    invoke-direct {v1, v6, v2, v7}, Lorg/eclipse/jetty/server/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 126
    .local v1, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 127
    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/server/LocalConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    .line 129
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_keepOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v3, "leaveOpen":Z
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getIn()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    :goto_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    .line 137
    .local v0, "con":Lorg/eclipse/jetty/io/Connection;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    .line 138
    .local v4, "next":Lorg/eclipse/jetty/io/Connection;
    if-eq v4, v0, :cond_0

    .line 140
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 147
    .end local v0    # "con":Lorg/eclipse/jetty/io/Connection;
    .end local v4    # "next":Lorg/eclipse/jetty/io/Connection;
    :catch_0
    move-exception v5

    .line 149
    .local v5, "x":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lorg/eclipse/jetty/server/LocalConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    const/4 v3, 0x0

    .line 159
    if-nez v3, :cond_1

    .line 160
    :try_start_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_responsesBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .end local v5    # "x":Ljava/io/IOException;
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 169
    :cond_2
    return-void

    .line 159
    :cond_3
    if-nez v3, :cond_4

    .line 160
    :try_start_4
    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_responsesBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 166
    .end local v1    # "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .end local v2    # "endPoint":Lorg/eclipse/jetty/io/ByteArrayEndPoint;
    .end local v3    # "leaveOpen":Z
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v7, :cond_5

    .line 167
    iget-object v7, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    throw v6

    .line 152
    .restart local v1    # "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .restart local v2    # "endPoint":Lorg/eclipse/jetty/io/ByteArrayEndPoint;
    .restart local v3    # "leaveOpen":Z
    :catch_1
    move-exception v5

    .line 154
    .local v5, "x":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/server/LocalConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    const/4 v3, 0x0

    .line 159
    if-nez v3, :cond_6

    .line 160
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_responsesBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    goto :goto_1

    .line 159
    .end local v5    # "x":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    if-nez v3, :cond_7

    .line 160
    iget-object v7, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->this$0:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {v7, v1}, Lorg/eclipse/jetty/server/LocalConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 161
    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->getOut()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jetty/server/LocalConnector$Request;->_responsesBuffer:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
