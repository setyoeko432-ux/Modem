.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;
.super Ljava/lang/Object;
.source "WebSocketGeneratorD00.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;


# instance fields
.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 45
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 46
    return-void
.end method

.method private declared-synchronized bufferPut(BJ)V
    .locals 1
    .param p1, "datum"    # B
    .param p2, "blockFor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->expelBuffer(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized expelBuffer(J)I
    .locals 4
    .param p1, "blockFor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 150
    const/4 v1, 0x0

    .line 165
    :cond_0
    monitor-exit p0

    return v1

    .line 151
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->flushBuffer()I

    move-result v1

    .line 152
    .local v1, "result":I
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 153
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v0

    .line 158
    .local v0, "ready":Z
    if-nez v0, :cond_2

    .line 159
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Write timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v0    # "ready":Z
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 161
    .restart local v0    # "ready":Z
    .restart local v1    # "result":I
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->flushBuffer()I

    move-result v2

    add-int/2addr v1, v2

    .line 162
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized flushBuffer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 144
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isLengthFrame(B)Z
    .locals 2
    .param p1, "frame"    # B

    .prologue
    .line 108
    monitor-enter p0

    and-int/lit8 v0, p1, -0x80

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addFrame(BB[BII)V
    .locals 9
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
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v7

    int-to-long v0, v7

    .line 52
    .local v0, "blockFor":J
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_0

    .line 53
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 55
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-nez v7, :cond_1

    .line 56
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->expelBuffer(J)I

    .line 58
    :cond_1
    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->bufferPut(BJ)V

    .line 60
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->isLengthFrame(B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    new-instance v7, Ljava/math/BigInteger;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v5, v7, 0x1

    .line 70
    .local v5, "lengthBytes":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_2

    .line 72
    mul-int/lit8 v7, v3, 0x7

    shr-int v7, p5, v7

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v4, v7

    .line 73
    .local v4, "lengthByte":B
    invoke-direct {p0, v4, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->bufferPut(BJ)V

    .line 70
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 75
    .end local v4    # "lengthByte":B
    :cond_2
    and-int/lit8 v7, p5, 0x7f

    int-to-byte v7, v7

    invoke-direct {p0, v7, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->bufferPut(BJ)V

    .line 78
    .end local v3    # "i":I
    .end local v5    # "lengthBytes":I
    :cond_3
    move v6, p5

    .line 79
    .local v6, "remaining":I
    :cond_4
    :goto_1
    if-lez v6, :cond_9

    .line 81
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-ge v6, v7, :cond_6

    move v2, v6

    .line 82
    .local v2, "chunk":I
    :goto_2
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sub-int v8, p5, v6

    add-int/2addr v8, p4

    invoke-interface {v7, p3, v8, v2}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 83
    sub-int/2addr v6, v2

    .line 84
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-lez v7, :cond_7

    .line 86
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->isLengthFrame(B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 87
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 89
    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->flushBuffer()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 50
    .end local v0    # "blockFor":J
    .end local v2    # "chunk":I
    .end local v6    # "remaining":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 81
    .restart local v0    # "blockFor":J
    .restart local v6    # "remaining":I
    :cond_6
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    goto :goto_2

    .line 94
    .restart local v2    # "chunk":I
    :cond_7
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->expelBuffer(J)I

    .line 95
    if-nez v6, :cond_4

    .line 97
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->isLengthFrame(B)Z

    move-result v7

    if-nez v7, :cond_8

    .line 98
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, -0x1

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 100
    :cond_8
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->flushBuffer()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    .end local v2    # "chunk":I
    :cond_9
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized flush()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->flushBuffer()I

    move-result v0

    .line 128
    .local v0, "flushed":I
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return v0

    .line 127
    .end local v0    # "flushed":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush(I)I
    .locals 2
    .param p1, "blockFor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->expelBuffer(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBufferEmpty()Z
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
