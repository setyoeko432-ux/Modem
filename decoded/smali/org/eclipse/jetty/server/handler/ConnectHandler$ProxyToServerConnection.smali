.class public Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;
.super Ljava/lang/Object;
.source "ConnectHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyToServerConnection"
.end annotation


# instance fields
.field private final _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _context:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _data:Lorg/eclipse/jetty/io/Buffer;

.field private volatile _endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private final _ready:Ljava/util/concurrent/CountDownLatch;

.field private volatile _timestamp:J

.field private volatile _toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p3, "data"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 531
    .local p2, "context":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_ready:Ljava/util/concurrent/CountDownLatch;

    .line 523
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 532
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    .line 533
    iput-object p3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    .line 534
    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .prologue
    .line 520
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object v0
.end method

.method private writeData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 615
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    .line 616
    .local v0, "written":I
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "{}: written to server {} bytes"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    .line 626
    .end local v0    # "written":I
    :cond_0
    monitor-exit p0

    .line 627
    return-void

    .line 623
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_data:Lorg/eclipse/jetty/io/Buffer;

    throw v1

    .line 626
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 697
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeServer()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    :goto_1
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 701
    .local v0, "x":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected exception closing the client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 708
    .end local v0    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 710
    .restart local v0    # "x":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected exception closing the server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public closeClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeClient()V

    .line 686
    return-void
.end method

.method public closeServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 691
    return-void
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 636
    iget-wide v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_timestamp:J

    return-wide v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 547
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: begin reading from server"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->writeData()V

    .line 554
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3, v4, v5, v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->read(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    .line 556
    .local v0, "read":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 558
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: server closed connection {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeClient()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_1
    :goto_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: end reading from server"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 563
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->shutdownOutput()V
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 577
    .end local v0    # "read":I
    :catch_0
    move-exception v2

    .line 579
    .local v2, "x":Ljava/nio/channels/ClosedChannelException;
    :try_start_2
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 580
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    .end local v2    # "x":Ljava/nio/channels/ClosedChannelException;
    :catchall_0
    move-exception v3

    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    const-string v5, "{}: end reading from server"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p0, v6, v8

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 568
    .restart local v0    # "read":I
    :cond_3
    if-eqz v0, :cond_1

    .line 571
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: read from server {} bytes {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->access$400(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3, v4, v5, v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v1

    .line 573
    .local v1, "written":I
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: written to {} {} bytes"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 582
    .end local v0    # "read":I
    .end local v1    # "written":I
    :catch_1
    move-exception v2

    .line 584
    .local v2, "x":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

    .line 586
    throw v2

    .line 588
    .end local v2    # "x":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 590
    .local v2, "x":Ljava/lang/RuntimeException;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

    .line 592
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 5
    .param p1, "idleForMs"    # J

    .prologue
    .line 724
    :try_start_0
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "{} idle expired"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOutputShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

    .line 735
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 733
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->close()V

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    return-void
.end method

.method public ready()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 666
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    .prologue
    .line 631
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_toClient:Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    .line 632
    return-void
.end method

.method public setEndPoint(Lorg/eclipse/jetty/io/AsyncEndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;

    .prologue
    .line 646
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 647
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 641
    iput-wide p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_timestamp:J

    .line 642
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->writeData()V

    .line 717
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->shutdownOutput()V

    .line 718
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyToServer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "(:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, "<=>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemotePort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public waitReady(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_ready:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 676
    .local v0, "x":Ljava/lang/InterruptedException;
    new-instance v1, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection$1;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;Ljava/lang/InterruptedException;)V

    throw v1
.end method
