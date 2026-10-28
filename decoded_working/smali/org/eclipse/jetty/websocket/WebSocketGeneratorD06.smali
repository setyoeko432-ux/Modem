.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;
.super Ljava/lang/Object;
.source "WebSocketGeneratorD06.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;


# instance fields
.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private _m:I

.field private final _mask:[B

.field private final _maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

.field private _opsent:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_mask:[B

    .line 47
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 48
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "maskGen"    # Lorg/eclipse/jetty/websocket/MaskGen;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_mask:[B

    .line 54
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 55
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 56
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 57
    return-void
.end method

.method private declared-synchronized bufferPut(B)V
    .locals 4
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_mask:[B

    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_m:I

    rem-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bufferPut([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 172
    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_mask:[B

    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_m:I

    rem-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 211
    const/4 v1, 0x0

    .line 226
    :cond_0
    monitor-exit p0

    return v1

    .line 212
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->flushBuffer()I

    move-result v1

    .line 213
    .local v1, "result":I
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 214
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v0

    .line 219
    .local v0, "ready":Z
    if-nez v0, :cond_2

    .line 220
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Write timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "ready":Z
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 222
    .restart local v0    # "ready":Z
    .restart local v1    # "result":I
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->flushBuffer()I

    move-result v2

    add-int/2addr v1, v2

    .line 223
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

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
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 205
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addFrame(BB[BII)V
    .locals 11
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
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v8

    int-to-long v0, v8

    .line 65
    .local v0, "blockFor":J
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v8, :cond_0

    .line 66
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v8}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    :goto_0
    iput-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 68
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->isLastFrame(I)Z

    move-result v4

    .line 69
    .local v4, "last":Z
    and-int/lit8 v8, p1, 0xf

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0xf

    and-int/2addr v8, p2

    int-to-byte p2, v8

    .line 71
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v8, :cond_8

    const/16 v7, 0xe

    .line 75
    .local v7, "space":I
    :cond_1
    :goto_1
    iget-boolean v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_opsent:Z

    if-eqz v8, :cond_2

    const/4 p2, 0x0

    .line 76
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_opsent:Z

    .line 78
    move/from16 v5, p5

    .line 79
    .local v5, "payload":I
    add-int v8, v5, v7

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v9

    if-le v8, v9, :cond_9

    .line 82
    and-int/lit8 v8, p2, 0x7f

    int-to-byte p2, v8

    .line 83
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v8

    sub-int v5, v8, v7

    .line 89
    :cond_3
    :goto_2
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v8

    if-gt v8, v7, :cond_4

    .line 90
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->expelBuffer(J)I

    .line 93
    :cond_4
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v8, :cond_5

    .line 95
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_mask:[B

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/websocket/MaskGen;->genMask([B)V

    .line 96
    const/4 v8, 0x0

    iput v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_m:I

    .line 97
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_mask:[B

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 101
    :cond_5
    const v8, 0xffff

    if-le v5, v8, :cond_a

    .line 103
    const/16 v8, 0xa

    new-array v8, v8, [B

    const/4 v9, 0x0

    aput-byte p2, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x7f

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x6

    shr-int/lit8 v10, v5, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x7

    shr-int/lit8 v10, v5, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/16 v9, 0x8

    shr-int/lit8 v10, v5, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/16 v9, 0x9

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    invoke-direct {p0, v8}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->bufferPut([B)V

    .line 130
    :goto_3
    move v6, v5

    .line 131
    .local v6, "remaining":I
    :cond_6
    :goto_4
    if-lez v6, :cond_10

    .line 133
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 134
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v8

    if-ge v6, v8, :cond_c

    move v2, v6

    .line 136
    .local v2, "chunk":I
    :goto_5
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v8, :cond_d

    .line 138
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v2, :cond_e

    .line 139
    sub-int v8, v5, v6

    add-int/2addr v8, p4

    add-int/2addr v8, v3

    aget-byte v8, p3, v8

    invoke-direct {p0, v8}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->bufferPut(B)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 66
    .end local v2    # "chunk":I
    .end local v3    # "i":I
    .end local v4    # "last":Z
    .end local v5    # "payload":I
    .end local v6    # "remaining":I
    .end local v7    # "space":I
    :cond_7
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v8}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    goto/16 :goto_0

    .line 71
    .restart local v4    # "last":Z
    :cond_8
    const/16 v7, 0xa

    goto/16 :goto_1

    .line 85
    .restart local v5    # "payload":I
    .restart local v7    # "space":I
    :cond_9
    if-eqz v4, :cond_3

    .line 86
    or-int/lit8 v8, p2, -0x80

    int-to-byte p2, v8

    goto/16 :goto_2

    .line 115
    :cond_a
    const/16 v8, 0x7e

    if-lt v5, v8, :cond_b

    .line 117
    const/4 v8, 0x4

    new-array v8, v8, [B

    const/4 v9, 0x0

    aput-byte p2, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x7e

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    invoke-direct {p0, v8}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->bufferPut([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 63
    .end local v0    # "blockFor":J
    .end local v4    # "last":Z
    .end local v5    # "payload":I
    .end local v7    # "space":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 125
    .restart local v0    # "blockFor":J
    .restart local v4    # "last":Z
    .restart local v5    # "payload":I
    .restart local v7    # "space":I
    :cond_b
    :try_start_1
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->bufferPut(B)V

    .line 126
    int-to-byte v8, v5

    invoke-direct {p0, v8}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->bufferPut(B)V

    goto :goto_3

    .line 134
    .restart local v6    # "remaining":I
    :cond_c
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    goto :goto_5

    .line 142
    .restart local v2    # "chunk":I
    :cond_d
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sub-int v9, v5, v6

    add-int/2addr v9, p4

    invoke-interface {v8, p3, v9, v2}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 144
    :cond_e
    sub-int/2addr v6, v2

    .line 145
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v8

    if-lez v8, :cond_f

    .line 148
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->flushBuffer()I

    goto :goto_4

    .line 153
    :cond_f
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->expelBuffer(J)I

    .line 154
    if-nez v6, :cond_6

    .line 157
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->flushBuffer()I

    goto/16 :goto_4

    .line 161
    .end local v2    # "chunk":I
    :cond_10
    add-int/2addr p4, v5

    .line 162
    sub-int p5, p5, v5

    .line 164
    if-gtz p5, :cond_1

    .line 165
    if-nez v4, :cond_11

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_opsent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :cond_11
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public declared-synchronized flush()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->flushBuffer()I

    move-result v0

    .line 189
    .local v0, "flushed":I
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return v0

    .line 188
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
    .line 183
    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->expelBuffer(J)I
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
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

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
