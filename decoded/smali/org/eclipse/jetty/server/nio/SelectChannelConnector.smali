.class public Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.super Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;
.source "SelectChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/nio/SelectChannelConnector$1;,
        Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;
    }
.end annotation


# instance fields
.field protected _acceptChannel:Ljava/nio/channels/ServerSocketChannel;

.field private _localPort:I

.field private _lowResourcesConnections:I

.field private _lowResourcesMaxIdleTime:I

.field private final _manager:Lorg/eclipse/jetty/io/nio/SelectorManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_localPort:I

    .line 74
    new-instance v0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;-><init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/server/nio/SelectChannelConnector$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->setMaxIdleTime(J)V

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->setAcceptors(I)V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;
    .param p2, "x2"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 105
    .local v1, "server":Ljava/nio/channels/ServerSocketChannel;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 110
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 111
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 112
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->configure(Ljava/net/Socket;)V

    .line 113
    iget-object v3, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->register(Ljava/nio/channels/SocketChannel;)V

    .line 115
    .end local v0    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_0
    return-void

    .line 105
    .end local v1    # "server":Ljava/nio/channels/ServerSocketChannel;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->removeBean(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 129
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_localPort:I

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jetty/server/Request;->setTimeStamp(J)V

    .line 138
    iget v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_maxIdleTime:I

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 139
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 140
    return-void
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getAcceptors()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager;->setSelectSets(I)V

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->setMaxIdleTime(J)V

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getLowResourcesConnections()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->setLowResourcesConnections(J)V

    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getLowResourcesMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->setLowResourcesMaxIdleTime(J)V

    .line 265
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->doStart()V

    .line 266
    return-void
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 279
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    .line 280
    return-void
.end method

.method public declared-synchronized getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    .line 168
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_localPort:I

    monitor-exit p0

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLowResourcesConnections()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_lowResourcesConnections:I

    return v0
.end method

.method public getLowResourcesMaxIdleTime()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_lowResourcesMaxIdleTime:I

    return v0
.end method

.method public getSelectorManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    return-object v0
.end method

.method protected newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;

    .prologue
    .line 285
    new-instance v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lorg/eclipse/jetty/server/AsyncHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

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
    .line 271
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iget v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_maxIdleTime:I

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 272
    .local v0, "endp":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 273
    return-object v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v1, :cond_2

    .line 180
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 182
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 185
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getReuseAddress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 186
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 187
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 189
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_localPort:I

    .line 190
    iget v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_localPort:I

    if-gtz v1, :cond_1

    .line 191
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Server channel not bound"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 193
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->addBean(Ljava/lang/Object;)Z

    .line 195
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method

.method public persist(Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 147
    .local v0, "aEndp":Lorg/eclipse/jetty/io/AsyncEndPoint;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 148
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 149
    return-void
.end method

.method public setLowResourcesConnections(I)V
    .locals 0
    .param p1, "lowResourcesConnections"    # I

    .prologue
    .line 224
    iput p1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_lowResourcesConnections:I

    .line 225
    return-void
.end method

.method public setLowResourcesMaxIdleTime(I)V
    .locals 0
    .param p1, "lowResourcesMaxIdleTime"    # I

    .prologue
    .line 248
    iput p1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_lowResourcesMaxIdleTime:I

    .line 249
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->setLowResourcesMaxIdleTime(I)V

    .line 250
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 3
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->setMaxIdleTime(J)V

    .line 203
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->setMaxIdleTime(I)V

    .line 204
    return-void
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 2
    .param p1, "pool"    # Lorg/eclipse/jetty/util/thread/ThreadPool;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->removeBean(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->_manager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 95
    return-void
.end method
