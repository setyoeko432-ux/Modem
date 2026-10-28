.class public Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;
.super Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;
.source "WebSocketServletConnectionD00.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketServletConnection;


# instance fields
.field private final factory:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V
    .locals 8
    .param p1, "factory"    # Lorg/eclipse/jetty/websocket/WebSocketFactory;
    .param p2, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p3, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p4, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p5, "timestamp"    # J
    .param p7, "maxIdleTime"    # I
    .param p8, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->factory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public handshake(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V
    .locals 10
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x65

    .line 42
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "uri":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "query":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    :cond_0
    new-instance v6, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v6, v5}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpURI;->toString()Ljava/lang/String;

    move-result-object v5

    .line 49
    const-string v6, "Host"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "host":Ljava/lang/String;
    const-string v6, "Sec-WebSocket-Origin"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "origin":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 54
    const-string v6, "Origin"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    :cond_1
    if-eqz v3, :cond_2

    .line 58
    const-string v6, "\r\n"

    invoke-static {v3, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    :cond_2
    const-string v6, "Sec-WebSocket-Key1"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "key1":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 65
    const-string v6, "Sec-WebSocket-Key2"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "key2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->setHixieKeys(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v6, "Upgrade"

    const-string v7, "WebSocket"

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v6, "Connection"

    const-string v7, "Upgrade"

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v3, :cond_3

    .line 72
    const-string v6, "Sec-WebSocket-Origin"

    invoke-interface {p2, v6, v3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    const-string v7, "Sec-WebSocket-Location"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "wss://"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p3, :cond_4

    .line 77
    const-string v6, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v6, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    const-string v6, "WebSocket Protocol Handshake"

    invoke-interface {p2, v9, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 97
    .end local v2    # "key2":Ljava/lang/String;
    :goto_1
    return-void

    .line 74
    .restart local v2    # "key2":Ljava/lang/String;
    :cond_5
    const-string v6, "ws://"

    goto :goto_0

    .line 83
    .end local v2    # "key2":Ljava/lang/String;
    :cond_6
    const-string v6, "Upgrade"

    const-string v7, "WebSocket"

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v6, "Connection"

    const-string v7, "Upgrade"

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v6, "WebSocket-Origin"

    invoke-interface {p2, v6, v3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v7, "WebSocket-Location"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "wss://"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz p3, :cond_7

    .line 89
    const-string v6, "WebSocket-Protocol"

    invoke-interface {p2, v6, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_7
    const-string v6, "Web Socket Protocol Handshake"

    invoke-interface {p2, v9, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 92
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->onFrameHandshake()V

    .line 95
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->onWebsocketOpen()V

    goto :goto_1

    .line 86
    :cond_8
    const-string v6, "ws://"

    goto :goto_2
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->onClose()V

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->factory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->removeConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z

    .line 104
    return-void
.end method
