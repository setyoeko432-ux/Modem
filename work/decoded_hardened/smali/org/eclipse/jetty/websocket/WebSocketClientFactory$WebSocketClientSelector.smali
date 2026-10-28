.class Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "WebSocketClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebSocketClientSelector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 336
    instance-of v1, p3, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    if-nez v1, :cond_0

    .line 337
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    move-object v0, p3

    .line 341
    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    .line 343
    .local v0, "future":Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->handshakeFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->access$000(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 330
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->onClose()V

    .line 331
    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 319
    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 5
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/ConnectedEndPoint;
    .param p2, "oldConnection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 324
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "upgrade {} -> {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/ConnectedEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 311
    move-object v0, p3

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    .line 312
    .local v0, "holder":Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {v1, v2, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/io/AsyncEndPoint;Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;)V

    return-object v1
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 9
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    .line 287
    .local v2, "holder":Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getMaxIdleTime()I

    move-result v3

    .line 288
    .local v3, "maxIdleTime":I
    if-gez v3, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;->getMaxIdleTime()J

    move-result-wide v7

    long-to-int v3, v7

    .line 290
    :cond_0
    new-instance v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-direct {v4, p1, p2, p3, v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 291
    .local v4, "result":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object v1, v4

    .line 294
    .local v1, "endPoint":Lorg/eclipse/jetty/io/AsyncEndPoint;
    const-string v7, "wss"

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientSelector;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v7, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    .line 297
    .local v6, "sslEngine":Ljavax/net/ssl/SSLEngine;
    new-instance v5, Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {v5, v6, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 298
    .local v5, "sslConnection":Lorg/eclipse/jetty/io/nio/SslConnection;
    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 299
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v1

    .line 302
    .end local v5    # "sslConnection":Lorg/eclipse/jetty/io/nio/SslConnection;
    .end local v6    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v7

    invoke-virtual {v7, p1, v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    .line 303
    .local v0, "connection":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 305
    return-object v4
.end method
