.class public Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
.super Lorg/eclipse/jetty/io/bio/SocketEndPoint;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/bio/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectorEndPoint"
.end annotation


# instance fields
.field volatile _connection:Lorg/eclipse/jetty/io/Connection;

.field protected final _socket:Ljava/net/Socket;

.field final synthetic this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/bio/SocketConnector;Ljava/net/Socket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    .line 198
    invoke-static {p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$000(Lorg/eclipse/jetty/server/bio/SocketConnector;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;I)V

    .line 199
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->newConnection(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 200
    iput-object p2, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    .line 201
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    instance-of v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    check-cast v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancel()V

    .line 243
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->close()V

    .line 244
    return-void
.end method

.method public dispatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "dispatch failed for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    .line 222
    :cond_1
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 228
    .local v0, "l":I
    if-gez v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->shutdownInput()V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->isOutputShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    .line 235
    :cond_1
    return v0
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 250
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$300(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 251
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 253
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :goto_0
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/bio/SocketConnector;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 258
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Connection;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/bio/SocketConnector;->isLowResources()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getLowResourcesMaxIdleTime()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->setMaxIdleTime(I)V

    .line 264
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;
    :try_end_2
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "EOF"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 270
    :try_start_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 293
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 294
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 296
    :try_start_5
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 302
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    .local v4, "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 307
    .local v3, "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 308
    const/4 v0, 0x0

    .line 311
    .local v0, "c":I
    :cond_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 313
    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 314
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 323
    .end local v0    # "c":I
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :cond_3
    :goto_2
    return-void

    .line 254
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6
    :try_end_8
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 273
    :catch_1
    move-exception v1

    .line 275
    .local v1, "e":Ljava/net/SocketException;
    :try_start_9
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "EOF"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 276
    :try_start_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 293
    :goto_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 294
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 296
    :try_start_b
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 302
    :try_start_c
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 307
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 308
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "c":I
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 313
    if-ltz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 314
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    .line 318
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_2
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 294
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 296
    :try_start_d
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 302
    :try_start_e
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 307
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 308
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "c":I
    :cond_7
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 313
    if-ltz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    .line 314
    :cond_8
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_2

    .line 318
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_3
    move-exception v1

    .line 320
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 297
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v6

    .line 271
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :catch_4
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    :try_start_10
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_1

    .line 293
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 294
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v7, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 296
    :try_start_11
    iget-object v8, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v8, v8, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v8, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 302
    :try_start_12
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_b

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 307
    .restart local v3    # "max_idle":I
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 308
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "c":I
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 313
    if-ltz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    int-to-long v9, v3

    cmp-long v7, v7, v9

    if-ltz v7, :cond_9

    .line 314
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_b

    .line 315
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 321
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :cond_b
    :goto_4
    throw v6

    .line 297
    .restart local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    :catchall_3
    move-exception v6

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v6

    .line 318
    :catch_5
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 277
    .local v1, "e":Ljava/net/SocketException;
    :catch_6
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_14
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_3

    .line 297
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_4
    move-exception v6

    :try_start_15
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v6

    .line 279
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_7
    move-exception v1

    .line 281
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_16
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "BAD"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 282
    :try_start_17
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 293
    :goto_5
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 294
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 296
    :try_start_18
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 302
    :try_start_19
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 307
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 308
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "c":I
    :cond_c
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 313
    if-ltz v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_c

    .line 314
    :cond_d
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_2

    .line 318
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_8
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 283
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :catch_9
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_1a
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto :goto_5

    .line 297
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_5
    move-exception v6

    :try_start_1b
    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    throw v6

    .line 285
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :catch_a
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "handle failed?"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 288
    :try_start_1d
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 293
    :goto_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 294
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 296
    :try_start_1e
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 302
    :try_start_1f
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 305
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 307
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 308
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "c":I
    :cond_e
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 313
    if-ltz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_e

    .line 314
    :cond_f
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_b

    goto/16 :goto_2

    .line 318
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_b
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    :catch_c
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_20
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    goto :goto_6

    .line 297
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_6
    move-exception v6

    :try_start_21
    monitor-exit v7
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    throw v6

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_7
    move-exception v6

    :try_start_22
    monitor-exit v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    throw v6

    .line 318
    :catch_d
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 2
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$100(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    .line 212
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 213
    return-void
.end method
