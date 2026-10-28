.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;
.super Ljava/lang/Object;
.source "WebSocketGeneratorD08.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;


# instance fields
.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private _closed:Z

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private final _lock:Ljava/util/concurrent/locks/Lock;

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
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "maskGen"    # Lorg/eclipse/jetty/websocket/MaskGen;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_mask:[B

    .line 52
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 53
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 54
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 55
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 12
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
    .line 72
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 75
    :try_start_0
    iget-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_closed:Z

    if-eqz v7, :cond_0

    .line 76
    new-instance v7, Lorg/eclipse/jetty/io/EofException;

    const-string v8, "Closed"

    invoke-direct {v7, v8}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 77
    :cond_0
    const/16 v7, 0x8

    if-ne p2, v7, :cond_1

    .line 78
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_closed:Z

    .line 80
    :cond_1
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v7, :cond_9

    const/4 v3, 0x1

    .line 82
    .local v3, "mask":Z
    :goto_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v7, :cond_2

    .line 83
    if-eqz v3, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 85
    :cond_2
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->isLastFrame(B)Z

    move-result v2

    .line 87
    .local v2, "last":Z
    if-eqz v3, :cond_b

    const/16 v6, 0xe

    .line 91
    .local v6, "space":I
    :cond_3
    :goto_2
    iget-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_opsent:Z

    if-eqz v7, :cond_4

    const/4 p2, 0x0

    .line 92
    :cond_4
    and-int/lit8 v7, p1, 0xf

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v8, p2, 0xf

    add-int/2addr v7, v8

    int-to-byte p2, v7

    .line 93
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_opsent:Z

    .line 95
    move/from16 v4, p5

    .line 96
    .local v4, "payload":I
    add-int v7, v4, v6

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v8

    if-le v7, v8, :cond_c

    .line 99
    and-int/lit8 v7, p2, 0x7f

    int-to-byte p2, v7

    .line 100
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v7

    sub-int v4, v7, v6

    .line 106
    :cond_5
    :goto_3
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-gt v7, v6, :cond_6

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    .line 109
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-gt v7, v6, :cond_6

    .line 110
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flush()I

    .line 114
    :cond_6
    const v7, 0xffff

    if-le v4, v7, :cond_e

    .line 116
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v7, 0xa

    new-array v9, v7, [B

    const/4 v7, 0x0

    aput-byte p2, v9, v7

    const/4 v10, 0x1

    if-eqz v3, :cond_d

    const/4 v7, -0x1

    :goto_4
    aput-byte v7, v9, v10

    const/4 v7, 0x2

    const/4 v10, 0x0

    aput-byte v10, v9, v7

    const/4 v7, 0x3

    const/4 v10, 0x0

    aput-byte v10, v9, v7

    const/4 v7, 0x4

    const/4 v10, 0x0

    aput-byte v10, v9, v7

    const/4 v7, 0x5

    const/4 v10, 0x0

    aput-byte v10, v9, v7

    const/4 v7, 0x6

    shr-int/lit8 v10, v4, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    const/4 v7, 0x7

    shr-int/lit8 v10, v4, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    const/16 v7, 0x8

    shr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    const/16 v7, 0x9

    and-int/lit16 v10, v4, 0xff

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 144
    :goto_5
    if-eqz v3, :cond_7

    .line 146
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_maskGen:Lorg/eclipse/jetty/websocket/MaskGen;

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_mask:[B

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/websocket/MaskGen;->genMask([B)V

    .line 147
    const/4 v7, 0x0

    iput v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_m:I

    .line 148
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_mask:[B

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 152
    :cond_7
    move v5, v4

    .line 153
    .local v5, "remaining":I
    :cond_8
    :goto_6
    if-lez v5, :cond_16

    .line 155
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 156
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-ge v5, v7, :cond_12

    move v0, v5

    .line 158
    .local v0, "chunk":I
    :goto_7
    if-eqz v3, :cond_13

    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 161
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sub-int v8, v4, v5

    add-int v8, v8, p4

    add-int/2addr v8, v1

    aget-byte v8, p3, v8

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_mask:[B

    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_m:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_m:I

    rem-int/lit8 v10, v10, 0x4

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 80
    .end local v0    # "chunk":I
    .end local v1    # "i":I
    .end local v2    # "last":Z
    .end local v3    # "mask":Z
    .end local v4    # "payload":I
    .end local v5    # "remaining":I
    .end local v6    # "space":I
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 83
    .restart local v3    # "mask":Z
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    goto/16 :goto_1

    .line 87
    .restart local v2    # "last":Z
    :cond_b
    const/16 v6, 0xa

    goto/16 :goto_2

    .line 102
    .restart local v4    # "payload":I
    .restart local v6    # "space":I
    :cond_c
    if-eqz v2, :cond_5

    .line 103
    or-int/lit16 v7, p2, 0x80

    int-to-byte p2, v7

    goto/16 :goto_3

    .line 116
    :cond_d
    const/16 v7, 0x7f

    goto/16 :goto_4

    .line 128
    :cond_e
    const/16 v7, 0x7e

    if-lt v4, v7, :cond_10

    .line 130
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v7, 0x4

    new-array v9, v7, [B

    const/4 v7, 0x0

    aput-byte p2, v9, v7

    const/4 v10, 0x1

    if-eqz v3, :cond_f

    const/4 v7, -0x2

    :goto_9
    aput-byte v7, v9, v10

    const/4 v7, 0x2

    shr-int/lit8 v10, v4, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    const/4 v7, 0x3

    and-int/lit16 v10, v4, 0xff

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_5

    :cond_f
    const/16 v7, 0x7e

    goto :goto_9

    .line 138
    :cond_10
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v7, 0x2

    new-array v9, v7, [B

    const/4 v7, 0x0

    aput-byte p2, v9, v7

    const/4 v10, 0x1

    if-eqz v3, :cond_11

    or-int/lit16 v7, v4, 0x80

    :goto_a
    int-to-byte v7, v7

    aput-byte v7, v9, v10

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_5

    :cond_11
    move v7, v4

    goto :goto_a

    .line 156
    .restart local v5    # "remaining":I
    :cond_12
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    goto :goto_7

    .line 164
    .restart local v0    # "chunk":I
    :cond_13
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sub-int v8, v4, v5

    add-int v8, v8, p4

    invoke-interface {v7, p3, v8, v0}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 166
    :cond_14
    sub-int/2addr v5, v0

    .line 167
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v7

    if-lez v7, :cond_15

    .line 170
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    goto/16 :goto_6

    .line 175
    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flush()I

    .line 176
    if-nez v5, :cond_8

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    goto/16 :goto_6

    .line 183
    .end local v0    # "chunk":I
    :cond_16
    add-int p4, p4, v4

    .line 184
    sub-int p5, p5, v4

    .line 186
    if-gtz p5, :cond_3

    .line 187
    if-nez v2, :cond_18

    const/4 v7, 0x1

    :goto_b
    iput-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_opsent:Z

    .line 189
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v7

    if-nez v7, :cond_17

    .line 191
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 192
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_17
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    return-void

    .line 187
    :cond_18
    const/4 v7, 0x0

    goto :goto_b
.end method

.method public flush()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    :goto_0
    return v5

    .line 234
    :cond_0
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 261
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 237
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    move-result v5

    .line 238
    .local v5, "result":I
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v6

    if-nez v6, :cond_4

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    .local v2, "now":J
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v6

    int-to-long v6, v6

    add-long v0, v2, v6

    .line 242
    .local v0, "end":J
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 244
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    sub-long v7, v0, v2

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v4

    .line 245
    .local v4, "ready":Z
    if-nez v4, :cond_3

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    cmp-long v6, v2, v0

    if-ltz v6, :cond_2

    .line 250
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Write timeout"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v0    # "end":J
    .end local v2    # "now":J
    .end local v4    # "ready":Z
    .end local v5    # "result":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 253
    .restart local v0    # "end":J
    .restart local v2    # "now":J
    .restart local v4    # "ready":Z
    .restart local v5    # "result":I
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    move-result v6

    add-int/2addr v5, v6

    .line 254
    goto :goto_1

    .line 256
    .end local v0    # "end":J
    .end local v2    # "now":J
    .end local v4    # "ready":Z
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->compact()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public flushBuffer()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return v0

    .line 208
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 211
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 214
    .local v0, "flushed":I
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_closed:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "flushed":I
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isBufferEmpty()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public returnBuffer()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 302
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    const-string v2, "%s@%x closed=%b buffer=%d"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->_closed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_0
.end method
