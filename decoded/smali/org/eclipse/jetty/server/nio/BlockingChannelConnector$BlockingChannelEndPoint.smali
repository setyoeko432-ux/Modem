.class Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/ChannelEndPoint;
.source "BlockingChannelConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingChannelEndPoint"
.end annotation


# instance fields
.field private _connection:Lorg/eclipse/jetty/io/Connection;

.field private volatile _idleTimestamp:J

.field private _timeout:I

.field final synthetic this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V
    .locals 2
    .param p2, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    .line 183
    invoke-static {p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$200(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;-><init>(Ljava/nio/channels/ByteChannel;I)V

    .line 184
    new-instance v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lorg/eclipse/jetty/server/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 185
    return-void
.end method


# virtual methods
.method public checkIdleTimestamp(J)V
    .locals 4
    .param p1, "now"    # J

    .prologue
    .line 205
    iget-wide v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_idleTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_idleTimestamp:J

    iget v2, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->idleExpired()V

    .line 209
    :cond_0
    return-void
.end method

.method dispatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "dispatch failed for  {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    .line 232
    :cond_0
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
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_idleTimestamp:J

    .line 242
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_idleTimestamp:J

    .line 253
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "header"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "trailer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_idleTimestamp:J

    .line 264
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    return-object v0
.end method

.method protected idleExpired()V
    .locals 2

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 272
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v7

    iput v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I

    .line 273
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$300(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 274
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_idleTimestamp:J

    .line 279
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Connection;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 281
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getLowResourcesMaxIdleTime()I

    move-result v3

    .line 284
    .local v3, "lrmit":I
    if-ltz v3, :cond_0

    iget v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I

    if-eq v7, v3, :cond_0

    .line 286
    iput v3, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I

    .line 298
    .end local v3    # "lrmit":I
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    const-string v8, "EOF"

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :goto_2
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 323
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 331
    .local v5, "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v4

    .line 333
    .local v4, "max_idle":I
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 334
    const/4 v0, 0x0

    .line 337
    .local v0, "c":I
    :cond_1
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    int-to-long v9, v4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 340
    :cond_2
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 341
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 349
    .end local v0    # "c":I
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v4    # "max_idle":I
    .end local v5    # "timestamp":J
    :cond_3
    :goto_3
    return-void

    .line 292
    :cond_4
    :try_start_4
    iget v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 294
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v7

    iput v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_timeout:I
    :try_end_4
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 308
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    const-string v8, "BAD"

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    :try_start_6
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    :goto_4
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 323
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    :try_start_7
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 331
    .restart local v5    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v4

    .line 333
    .restart local v4    # "max_idle":I
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 334
    const/4 v0, 0x0

    .line 337
    .restart local v0    # "c":I
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    if-ltz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    int-to-long v9, v4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 340
    :cond_6
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 341
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 344
    .end local v0    # "c":I
    .end local v4    # "max_idle":I
    .end local v5    # "timestamp":J
    :catch_2
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 323
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    :try_start_8
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 331
    .restart local v5    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v4

    .line 333
    .restart local v4    # "max_idle":I
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 334
    const/4 v0, 0x0

    .line 337
    .restart local v0    # "c":I
    :cond_8
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    if-ltz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    int-to-long v9, v4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_8

    .line 340
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 341
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    .line 344
    .end local v0    # "c":I
    .end local v4    # "max_idle":I
    .end local v5    # "timestamp":J
    :catch_3
    move-exception v1

    .line 346
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 306
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :catch_4
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    :try_start_9
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 322
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    iget-object v9, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v8, v9}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 323
    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v8}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    :try_start_a
    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_c

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 331
    .restart local v5    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v4

    .line 333
    .restart local v4    # "max_idle":I
    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 334
    const/4 v0, 0x0

    .line 337
    .restart local v0    # "c":I
    :cond_a
    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    if-ltz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    int-to-long v10, v4

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    .line 340
    :cond_b
    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_c

    .line 341
    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 347
    .end local v0    # "c":I
    .end local v4    # "max_idle":I
    .end local v5    # "timestamp":J
    :cond_c
    :goto_5
    throw v7

    .line 344
    .restart local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    :catch_5
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 312
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :catch_6
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_b
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 314
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    const-string v8, "handle failed"

    invoke-interface {v7, v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 317
    :try_start_c
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 322
    :goto_6
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 323
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    :try_start_d
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 331
    .restart local v5    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v4

    .line 333
    .restart local v4    # "max_idle":I
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->getMaxIdleTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 334
    const/4 v0, 0x0

    .line 337
    .restart local v0    # "c":I
    :cond_d
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    if-ltz v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    int-to-long v9, v4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_d

    .line 340
    :cond_e
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 341
    iget-object v7, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_3

    .line 344
    .end local v0    # "c":I
    .end local v4    # "max_idle":I
    .end local v5    # "timestamp":J
    :catch_8
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 318
    .local v1, "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_e
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 344
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 346
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 355
    const-string v0, "BCEP@%x{l(%s)<->r(%s),open=%b,ishut=%b,oshut=%b}-{%s}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->isOpen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->isInputShutdown()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->isOutputShutdown()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
