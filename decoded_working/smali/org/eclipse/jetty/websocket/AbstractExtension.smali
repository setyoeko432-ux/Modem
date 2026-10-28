.class public Lorg/eclipse/jetty/websocket/AbstractExtension;
.super Ljava/lang/Object;
.source "AbstractExtension.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/Extension;


# static fields
.field private static final __mask:[I


# instance fields
.field private _connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

.field private _inbound:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private final _name:Ljava/lang/String;

.field private _outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

.field private final _parameters:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/websocket/AbstractExtension;->__mask:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_name:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 6
    .param p1, "flags"    # B
    .param p2, "opcode"    # B
    .param p3, "content"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 121
    return-void
.end method

.method public bind(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Lorg/eclipse/jetty/websocket/WebSocketGenerator;)V
    .locals 0
    .param p1, "connection"    # Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
    .param p2, "incoming"    # Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    .param p3, "outgoing"    # Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 78
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_inbound:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 79
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .line 80
    return-void
.end method

.method public clearFlag(BI)B
    .locals 3
    .param p1, "flags"    # B
    .param p2, "rsv"    # I

    .prologue
    .line 133
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rsv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/websocket/AbstractExtension;->__mask:[I

    aget v0, v0, p2

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_inbound:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method public flush()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    move-result v0

    return v0
.end method

.method public getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    .end local p2    # "dft":I
    :goto_0
    return p2

    .restart local p2    # "dft":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    .end local p2    # "dft":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "dft":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterizedName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "name":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "param":Ljava/lang/String;
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ";="

    invoke-static {v3, v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    .end local v2    # "param":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public init(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    return v0
.end method

.method public isFlag(BI)Z
    .locals 3
    .param p1, "flags"    # B
    .param p2, "rsv"    # I

    .prologue
    const/4 v0, 0x1

    .line 140
    if-lt p2, v0, :cond_0

    const/4 v1, 0x3

    if-le p2, v1, :cond_1

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rsv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/websocket/AbstractExtension;->__mask:[I

    aget v1, v1, p2

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "flags"    # B
    .param p2, "opcode"    # B
    .param p3, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/AbstractExtension;->_inbound:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 100
    return-void
.end method

.method public setFlag(BI)B
    .locals 4
    .param p1, "flags"    # B
    .param p2, "rsv"    # I

    .prologue
    .line 125
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/4 v1, 0x3

    if-le p2, v1, :cond_1

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rsv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/websocket/AbstractExtension;->__mask:[I

    aget v1, v1, p2

    or-int/2addr v1, p1

    int-to-byte v0, v1

    .line 128
    .local v0, "b":B
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/AbstractExtension;->getParameterizedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
