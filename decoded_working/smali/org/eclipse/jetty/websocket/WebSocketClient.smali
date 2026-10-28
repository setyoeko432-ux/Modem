.class public Lorg/eclipse/jetty/websocket/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketClient$1;,
        Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
    }
.end annotation


# static fields
.field private static final __log:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _bindAddress:Ljava/net/SocketAddress;

.field private final _cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

.field private _maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

.field private _maxBinaryMessageSize:I

.field private _maxIdleTime:I

.field private _maxTextMessageSize:I

.field private _origin:Ljava/lang/String;

.field private _protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketClient;->__log:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_cookies:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_extensions:Ljava/util/List;

    .line 87
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxIdleTime:I

    .line 88
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxTextMessageSize:I

    .line 89
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxBinaryMessageSize:I

    .line 104
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->start()V

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .prologue
    const/4 v1, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_cookies:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_extensions:Ljava/util/List;

    .line 87
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxIdleTime:I

    .line 88
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxTextMessageSize:I

    .line 89
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxBinaryMessageSize:I

    .line 117
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 119
    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketClient;->__log:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static toSocketAddress(Ljava/net/URI;)Ljava/net/InetSocketAddress;
    .locals 5
    .param p0, "uri"    # Ljava/net/URI;

    .prologue
    .line 378
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "ws"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "wss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad WebSocket scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 382
    .local v0, "port":I
    if-nez v0, :cond_1

    .line 383
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad WebSocket port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_1
    if-gez v0, :cond_2

    .line 385
    const-string v2, "ws"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x50

    .line 387
    :cond_2
    :goto_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 385
    :cond_3
    const/16 v0, 0x1bb

    goto :goto_0
.end method


# virtual methods
.method public getBindAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_bindAddress:Ljava/net/SocketAddress;

    return-object v0
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
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_cookies:Ljava/util/Map;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_extensions:Ljava/util/List;

    return-object v0
.end method

.method public getFactory()Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    return-object v0
.end method

.method public getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    return-object v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxBinaryMessageSize:I

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxIdleTime:I

    return v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxTextMessageSize:I

    return v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_origin:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public open(Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocket;)Ljava/util/concurrent/Future;
    .locals 8
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lorg/eclipse/jetty/websocket/WebSocket$Connection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Factory !started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketClient;->toSocketAddress(Ljava/net/URI;)Ljava/net/InetSocketAddress;

    move-result-object v6

    .line 342
    .local v6, "address":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .line 345
    .local v4, "channel":Ljava/nio/channels/SocketChannel;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 346
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_bindAddress:Ljava/net/SocketAddress;

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_bindAddress:Ljava/net/SocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 348
    :cond_1
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 350
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;Lorg/eclipse/jetty/websocket/WebSocketClient$1;)V

    .line 352
    .local v0, "holder":Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 353
    invoke-virtual {v4, v6}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 354
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getSelectorManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    return-object v0

    .line 358
    .end local v0    # "holder":Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;
    :catch_0
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/RuntimeException;
    invoke-static {v4}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/Closeable;)V

    .line 364
    throw v7

    .line 366
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    .line 369
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/Closeable;)V

    .line 372
    throw v7
.end method

.method public open(Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocket;JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p3, "maxConnectTime"    # J
    .param p5, "units"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketClient;->open(Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocket;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2, p3, p4, p5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 311
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 314
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 315
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 316
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 317
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 318
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 319
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 320
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBindAddress(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "bindAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_bindAddress:Ljava/net/SocketAddress;

    .line 148
    return-void
.end method

.method public setMaskGen(Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 0
    .param p1, "maskGen"    # Lorg/eclipse/jetty/websocket/MaskGen;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 249
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 0
    .param p1, "maxBinaryMessageSize"    # I

    .prologue
    .line 288
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxBinaryMessageSize:I

    .line 289
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 168
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxIdleTime:I

    .line 169
    return-void
.end method

.method public setMaxTextMessageSize(I)V
    .locals 0
    .param p1, "maxTextMessageSize"    # I

    .prologue
    .line 268
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_maxTextMessageSize:I

    .line 269
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_origin:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->_protocol:Ljava/lang/String;

    .line 189
    return-void
.end method
