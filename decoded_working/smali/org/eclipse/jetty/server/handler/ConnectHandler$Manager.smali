.class Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "ConnectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Manager"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Lorg/eclipse/jetty/server/handler/ConnectHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/server/handler/ConnectHandler;
    .param p2, "x1"    # Lorg/eclipse/jetty/server/handler/ConnectHandler$1;

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;)V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 506
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$200(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 512
    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 499
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .line 500
    .local v0, "proxyToServer":Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->ready()V

    .line 501
    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/ConnectedEndPoint;
    .param p2, "oldConnection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 517
    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 490
    move-object v0, p3

    check-cast v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .line 491
    .local v0, "proxyToServer":Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->setTimeStamp(J)V

    .line 492
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->setEndPoint(Lorg/eclipse/jetty/io/AsyncEndPoint;)V

    .line 493
    return-object v0
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 482
    .local v0, "endp":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 483
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$Manager;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$100(Lorg/eclipse/jetty/server/handler/ConnectHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setMaxIdleTime(I)V

    .line 484
    return-object v0
.end method
