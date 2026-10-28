.class Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebSocketFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lorg/eclipse/jetty/websocket/WebSocket$Connection;",
        ">;"
    }
.end annotation


# instance fields
.field _channel:Ljava/nio/channels/ByteChannel;

.field final _client:Lorg/eclipse/jetty/websocket/WebSocketClient;

.field _connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

.field final _done:Ljava/util/concurrent/CountDownLatch;

.field _exception:Ljava/lang/Throwable;

.field final _uri:Ljava/net/URI;

.field final _websocket:Lorg/eclipse/jetty/websocket/WebSocket;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;)V
    .locals 2
    .param p1, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "client"    # Lorg/eclipse/jetty/websocket/WebSocketClient;
    .param p4, "channel"    # Ljava/nio/channels/ByteChannel;

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    .line 405
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 406
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_uri:Ljava/net/URI;

    .line 407
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    .line 408
    iput-object p4, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;Lorg/eclipse/jetty/websocket/WebSocketClient$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p2, "x1"    # Ljava/net/URI;
    .param p3, "x2"    # Lorg/eclipse/jetty/websocket/WebSocketClient;
    .param p4, "x3"    # Ljava/nio/channels/ByteChannel;
    .param p5, "x4"    # Lorg/eclipse/jetty/websocket/WebSocketClient$1;

    .prologue
    .line 393
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;)V

    return-void
.end method

.method private closeChannel(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v1, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    :goto_1
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClient;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 611
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 613
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClient;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "channel":Ljava/nio/channels/ByteChannel;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 519
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    if-eqz v1, :cond_0

    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 522
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 524
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    if-eqz v0, :cond_1

    .line 528
    const/16 v1, 0x3ee

    :try_start_2
    const-string v2, "cancelled"

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->closeChannel(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    const/4 v1, 0x1

    .line 535
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return v1

    .line 524
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 535
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    .line 531
    :cond_1
    const/4 v1, 0x0

    .line 535
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->get()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->get(JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 559
    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->get(JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The universe has ended"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "channel":Ljava/nio/channels/ByteChannel;
    const/4 v1, 0x0

    .line 574
    .local v1, "connection":Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_exception:Ljava/lang/Throwable;

    .line 577
    .local v2, "exception":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-nez v3, :cond_1

    .line 579
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_exception:Ljava/lang/Throwable;

    .line 580
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 581
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 585
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    if-eqz v0, :cond_0

    .line 588
    const/16 v3, 0x3ee

    const-string v4, "timeout"

    invoke-direct {p0, v0, v3, v4}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->closeChannel(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V

    .line 589
    :cond_0
    if-eqz v2, :cond_2

    .line 590
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 584
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v1

    goto :goto_0

    .line 585
    .end local v2    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 591
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_2
    if-eqz v1, :cond_3

    .line 592
    return-object v1

    .line 593
    :cond_3
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
.end method

.method public getCookies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getCookies()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getOrigin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_uri:Ljava/net/URI;

    return-object v0
.end method

.method public getWebSocket()Lorg/eclipse/jetty/websocket/WebSocket;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    return-object v0
.end method

.method public handshakeFailed(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "channel":Ljava/nio/channels/ByteChannel;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    if-eqz v1, :cond_0

    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 452
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    .line 453
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_exception:Ljava/lang/Throwable;

    .line 455
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    if-eqz v0, :cond_1

    .line 459
    :try_start_2
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_2

    .line 460
    const/16 v1, 0x3ea

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->closeChannel(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 467
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 469
    return-void

    .line 455
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    .line 462
    :cond_2
    const/16 v1, 0x3ee

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->closeChannel(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 541
    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/eclipse/jetty/websocket/WebSocketConnection;

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getFactory()Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)Z

    .line 417
    invoke-interface {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaxTextMessageSize()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxTextMessageSize(I)V

    .line 418
    invoke-interface {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaxBinaryMessageSize()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxBinaryMessageSize(I)V

    .line 421
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_channel:Ljava/nio/channels/ByteChannel;

    if-eqz v1, :cond_0

    .line 424
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_connection:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    .line 426
    .local v0, "con":Lorg/eclipse/jetty/websocket/WebSocketConnection;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    if-eqz v0, :cond_2

    .line 430
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 433
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 438
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 440
    return-void

    .line 426
    .end local v0    # "con":Lorg/eclipse/jetty/websocket/WebSocketConnection;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 438
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]@"

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
