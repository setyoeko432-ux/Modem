.class Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;
.super Ljava/lang/Object;
.source "WebSocketConnectionD00.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameHandlerD00"
.end annotation


# instance fields
.field final _websocket:Lorg/eclipse/jetty/websocket/WebSocket;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;)V
    .locals 0
    .param p1, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 411
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 438
    return-void
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 5
    .param p1, "flags"    # B
    .param p2, "opcode"    # B
    .param p3, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 417
    :try_start_0
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    .line 419
    .local v0, "array":[B
    if-nez p2, :cond_1

    .line 421
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v2, v2, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    const-string v3, "UTF-8"

    invoke-interface {p3, v3}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    .line 434
    .end local v0    # "array":[B
    :cond_0
    :goto_0
    return-void

    .line 426
    .restart local v0    # "array":[B
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v2, v2, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v0    # "array":[B
    :catch_0
    move-exception v1

    .line 432
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
