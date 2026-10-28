.class Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "WebSocketClientFactory.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeConnection"
.end annotation


# instance fields
.field private _accept:Ljava/lang/String;

.field private final _endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _error:Ljava/lang/String;

.field private final _future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

.field private _handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private final _key:Ljava/lang/String;

.field private final _parser:Lorg/eclipse/jetty/http/HttpParser;

.field final synthetic this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/io/AsyncEndPoint;Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;)V
    .locals 5
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;
    .param p3, "future"    # Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    .prologue
    .line 364
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 366
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 367
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    .line 369
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 370
    .local v1, "bytes":[B
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 371
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_key:Ljava/lang/String;

    .line 373
    new-instance v0, Lorg/eclipse/jetty/io/SimpleBuffers;

    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->access$200(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jetty/io/SimpleBuffers;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 374
    .local v0, "buffers":Lorg/eclipse/jetty/io/Buffers;
    new-instance v2, Lorg/eclipse/jetty/http/HttpParser;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    new-instance v4, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection$1;

    invoke-direct {v4, p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection$1;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V

    invoke-direct {v2, v0, v3, v4}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    .line 409
    return-void
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object v0
.end method

.method static synthetic access$602(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_accept:Ljava/lang/String;

    return-object p1
.end method

.method private handshake()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 413
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-nez v9, :cond_6

    .line 415
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v9}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 416
    .local v7, "path":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 417
    :cond_0
    const-string v7, "/"

    .line 419
    :cond_1
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v9}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v11}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 422
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v9}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getOrigin()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "origin":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    .local v8, "request":Ljava/lang/StringBuilder;
    const-string v9, "GET "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " HTTP/1.1\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Host: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v11}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v11}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Upgrade: websocket\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Connection: Upgrade\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Sec-WebSocket-Key: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_key:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    if-eqz v6, :cond_3

    .line 434
    const-string v9, "Origin: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_3
    const-string v9, "Sec-WebSocket-Version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0xd

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v9}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getProtocol()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 439
    const-string v9, "Sec-WebSocket-Protocol: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v11}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_4
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v9}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getCookies()Ljava/util/Map;

    move-result-object v1

    .line 442
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 444
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, "cookie":Ljava/lang/String;
    const-string v9, "Cookie: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\"\\\n\r\t\u000c\u0008%+ ;="

    invoke-static {v0, v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "\"\\\n\r\t\u000c\u0008%+ ;="

    invoke-static {v9, v12}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    new-instance v9, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Z)V

    iput-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 461
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "origin":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "request":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v9}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v5

    .line 462
    .local v5, "len":I
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {v9, v11}, Lorg/eclipse/jetty/io/AsyncEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    .line 463
    .local v3, "flushed":I
    if-gez v3, :cond_7

    .line 464
    new-instance v9, Ljava/io/IOException;

    const-string v11, "incomplete handshake"

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v3    # "flushed":I
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    .line 468
    .local v2, "e":Ljava/io/IOException;
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v9, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->handshakeFailed(Ljava/lang/Throwable;)V

    .line 470
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v9}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_1
    return v9

    :cond_8
    move v9, v10

    goto :goto_1
.end method

.method private newWebSocketConnection()Lorg/eclipse/jetty/websocket/WebSocketConnection;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "newWebSocketConnection()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientConnection;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    iget-object v1, v1, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->_client:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getFactory()Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getWebSocket()Lorg/eclipse/jetty/websocket/WebSocket;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->access$200(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getMaxIdleTime()I

    move-result v7

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v8}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getProtocol()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xd

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v11}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientConnection;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V

    return-object v0
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 477
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_handshake:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 478
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->handshake()Z

    move-result v2

    if-nez v2, :cond_3

    .line 514
    :cond_2
    :goto_0
    return-object p0

    .line 481
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isInputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete handshake response"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->handshakeFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 488
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 490
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_accept:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 492
    const-string v2, "No Sec-WebSocket-Accept"

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    .line 513
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    goto :goto_0

    .line 494
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_key:Ljava/lang/String;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->hashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_accept:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 496
    const-string v2, "Bad Sec-WebSocket-Accept"

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    goto :goto_1

    .line 500
    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->newWebSocketConnection()Lorg/eclipse/jetty/websocket/WebSocketConnection;

    move-result-object v0

    .line 502
    .local v0, "connection":Lorg/eclipse/jetty/websocket/WebSocketConnection;
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 503
    .local v1, "header":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 504
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V

    .line 505
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->access$200(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 507
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->onConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)V

    move-object p0, v0

    .line 509
    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    new-instance v1, Ljava/net/ProtocolException;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_error:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->handshakeFailed(Ljava/lang/Throwable;)V

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_future:Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClient$WebSocketFuture;->handshakeFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$HandshakeConnection;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 536
    return-void
.end method
