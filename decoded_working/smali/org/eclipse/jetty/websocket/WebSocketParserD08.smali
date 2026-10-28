.class public Lorg/eclipse/jetty/websocket/WebSocketParserD08;
.super Ljava/lang/Object;
.source "WebSocketParserD08.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketParserD08$1;,
        Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private _bytesNeeded:I

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private _flags:B

.field private _fragmentFrames:Z

.field private final _handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private _length:J

.field private _m:I

.field private final _mask:[B

.field private _masked:Z

.field private _opcode:B

.field private final _shouldBeMasked:Z

.field private _skip:Z

.field private _state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "handler"    # Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    .param p4, "shouldBeMasked"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_mask:[B

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_fragmentFrames:Z

    .line 84
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 85
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 86
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 87
    iput-boolean p4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_shouldBeMasked:Z

    .line 88
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 89
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 364
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 370
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 372
    :cond_1
    return-void
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeFragments()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_fragmentFrames:Z

    return v0
.end method

.method public parseNext()I
    .locals 15

    .prologue
    .line 131
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v10, :cond_0

    .line 132
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v10

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 134
    :cond_0
    const/4 v8, 0x0

    .line 135
    .local v8, "progress":Z
    const/4 v6, -0x1

    .line 138
    .local v6, "filled":I
    :cond_1
    if-nez v8, :cond_a

    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 140
    :cond_2
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 143
    .local v1, "available":I
    :cond_3
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v11, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_0
    if-ge v1, v10, :cond_9

    .line 146
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 149
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v10

    if-nez v10, :cond_8

    .line 152
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_fragmentFrames:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v11, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v10, v11, :cond_7

    .line 154
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    div-int/lit8 v11, v1, 0x4

    mul-int/lit8 v11, v11, 0x4

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 155
    .local v3, "data":Lorg/eclipse/jetty/io/Buffer;
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 156
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    if-eqz v10, :cond_6

    .line 158
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v10

    if-nez v10, :cond_4

    .line 159
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 160
    :cond_4
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    .line 161
    .local v0, "array":[B
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    .line 162
    .local v5, "end":I
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v7

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_6

    .line 163
    aget-byte v10, v0, v7

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_mask:[B

    iget v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_m:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_m:I

    rem-int/lit8 v12, v12, 0x4

    aget-byte v11, v11, v12

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v0, v7

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "array":[B
    .end local v3    # "data":Lorg/eclipse/jetty/io/Buffer;
    .end local v5    # "end":I
    .end local v7    # "i":I
    :cond_5
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto :goto_0

    .line 167
    .restart local v3    # "data":Lorg/eclipse/jetty/io/Buffer;
    :cond_6
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    .line 168
    const/4 v8, 0x1

    .line 169
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_flags:B

    and-int/lit16 v11, v11, 0xf7

    int-to-byte v11, v11

    iget-byte v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_opcode:B

    invoke-interface {v10, v11, v12, v3}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 171
    const/4 v10, 0x0

    iput-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_opcode:B

    .line 174
    .end local v3    # "data":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v10

    if-nez v10, :cond_8

    .line 175
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FULL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 181
    :cond_8
    :try_start_0
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v6, -0x1

    .line 182
    :goto_2
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 184
    if-gtz v6, :cond_3

    .line 195
    :cond_9
    :goto_3
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v11, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v10, v11, :cond_d

    const/4 v10, 0x1

    :goto_4
    if-ge v1, v10, :cond_e

    .line 358
    .end local v1    # "available":I
    :cond_a
    :goto_5
    if-eqz v8, :cond_b

    const/4 v6, 0x1

    .end local v6    # "filled":I
    :cond_b
    return v6

    .line 181
    .restart local v1    # "available":I
    .restart local v6    # "filled":I
    :cond_c
    :try_start_1
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_2

    .line 187
    :catch_0
    move-exception v4

    .line 189
    .local v4, "e":Ljava/io/IOException;
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 190
    const/4 v6, -0x1

    .line 191
    goto :goto_3

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto :goto_4

    .line 201
    :cond_e
    :goto_6
    :pswitch_0
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v11, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-eq v10, v11, :cond_19

    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v11, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v10, v11, :cond_f

    const/4 v10, 0x1

    :goto_7
    if-lt v1, v10, :cond_19

    .line 203
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$1;->$SwitchMap$org$eclipse$jetty$websocket$WebSocketParserD08$State:[I

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v11}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_6

    .line 206
    :pswitch_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_skip:Z

    .line 207
    iget-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_opcode:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_10

    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SEEK_EOF:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_8
    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 208
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->getNeeds()I

    move-result v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto :goto_6

    .line 201
    :cond_f
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto :goto_7

    .line 207
    :cond_10
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_8

    .line 212
    :pswitch_2
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    .line 213
    .local v2, "b":B
    add-int/lit8 v1, v1, -0x1

    .line 214
    and-int/lit8 v10, v2, 0xf

    int-to-byte v10, v10

    iput-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_opcode:B

    .line 215
    shr-int/lit8 v10, v2, 0x4

    and-int/lit8 v10, v10, 0xf

    int-to-byte v10, v10

    iput-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_flags:B

    .line 217
    iget-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_opcode:B

    invoke-static {v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->isControlFrame(B)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_flags:B

    invoke-static {v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->isLastFrame(B)Z

    move-result v10

    if-nez v10, :cond_11

    .line 219
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fragmented Control from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v11, 0x3ea

    const-string v12, "Fragmented control"

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 221
    const/4 v8, 0x1

    .line 222
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_skip:Z

    .line 225
    :cond_11
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 226
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->getNeeds()I

    move-result v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto/16 :goto_6

    .line 231
    .end local v2    # "b":B
    :pswitch_3
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    .line 232
    .restart local v2    # "b":B
    add-int/lit8 v1, v1, -0x1

    .line 233
    and-int/lit16 v10, v2, 0x80

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :goto_9
    iput-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    .line 234
    and-int/lit8 v10, v2, 0x7f

    int-to-byte v2, v10

    .line 236
    packed-switch v2, :pswitch_data_1

    .line 247
    and-int/lit8 v10, v2, 0x7f

    int-to-long v10, v10

    iput-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    .line 248
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    if-eqz v10, :cond_13

    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_a
    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 250
    :goto_b
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->getNeeds()I

    move-result v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto/16 :goto_6

    .line 233
    :cond_12
    const/4 v10, 0x0

    goto :goto_9

    .line 239
    :pswitch_4
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    .line 240
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_b

    .line 243
    :pswitch_5
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    .line 244
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_b

    .line 248
    :cond_13
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_a

    .line 254
    .end local v2    # "b":B
    :pswitch_6
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    .line 255
    .restart local v2    # "b":B
    add-int/lit8 v1, v1, -0x1

    .line 256
    iget-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    const-wide/16 v12, 0x100

    mul-long/2addr v10, v12

    and-int/lit16 v12, v2, 0xff

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    .line 257
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    if-nez v10, :cond_e

    .line 259
    iget-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_14

    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_fragmentFrames:Z

    if-nez v10, :cond_14

    .line 261
    const/4 v8, 0x1

    .line 262
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v11, 0x3eb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "frame size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 263
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_skip:Z

    .line 266
    :cond_14
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    if-eqz v10, :cond_15

    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_c
    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 267
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->getNeeds()I

    move-result v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto/16 :goto_6

    .line 266
    :cond_15
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_c

    .line 272
    .end local v2    # "b":B
    :pswitch_7
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v2

    .line 273
    .restart local v2    # "b":B
    add-int/lit8 v1, v1, -0x1

    .line 274
    iget-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    const-wide/16 v12, 0x100

    mul-long/2addr v10, v12

    and-int/lit16 v12, v2, 0xff

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    .line 275
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    if-nez v10, :cond_e

    .line 277
    iget-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    long-to-int v10, v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    .line 278
    iget-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_16

    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_fragmentFrames:Z

    if-nez v10, :cond_16

    .line 280
    const/4 v8, 0x1

    .line 281
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v11, 0x3eb

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "frame size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 282
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_skip:Z

    .line 285
    :cond_16
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    if-eqz v10, :cond_17

    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_d
    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 286
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->getNeeds()I

    move-result v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto/16 :goto_6

    .line 285
    :cond_17
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_d

    .line 291
    .end local v2    # "b":B
    :pswitch_8
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_mask:[B

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-interface {v10, v11, v12, v13}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    .line 292
    const/4 v10, 0x0

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_m:I

    .line 293
    add-int/lit8 v1, v1, -0x4

    .line 294
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 295
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v10}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->getNeeds()I

    move-result v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    goto/16 :goto_6

    .line 299
    :pswitch_9
    iget-wide v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_length:J

    long-to-int v10, v10

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    .line 300
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_skip:Z

    if-eqz v10, :cond_18

    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_e
    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto/16 :goto_6

    :cond_18
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_e

    .line 307
    :pswitch_a
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 308
    .local v9, "skip":I
    const/4 v8, 0x1

    .line 309
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10, v9}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 310
    sub-int/2addr v1, v9

    .line 311
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    sub-int/2addr v10, v9

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    .line 312
    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    if-nez v10, :cond_e

    .line 313
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto/16 :goto_6

    .line 317
    .end local v9    # "skip":I
    :pswitch_b
    const/4 v8, 0x1

    .line 318
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10, v1}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 319
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 324
    :cond_19
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v11, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v10, v11, :cond_1

    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    if-lt v1, v10, :cond_1

    .line 326
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    iget-boolean v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_shouldBeMasked:Z

    if-eq v10, v11, :cond_1a

    .line 328
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 329
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 330
    const/4 v8, 0x1

    .line 331
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v11, 0x3ea

    const-string v12, "bad mask"

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 335
    :cond_1a
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 336
    .restart local v3    # "data":Lorg/eclipse/jetty/io/Buffer;
    iget-boolean v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_masked:Z

    if-eqz v10, :cond_1c

    .line 338
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v10

    if-nez v10, :cond_1b

    .line 339
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 340
    :cond_1b
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    .line 341
    .restart local v0    # "array":[B
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    .line 342
    .restart local v5    # "end":I
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v7

    .restart local v7    # "i":I
    :goto_f
    if-ge v7, v5, :cond_1c

    .line 343
    aget-byte v10, v0, v7

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_mask:[B

    iget v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_m:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_m:I

    rem-int/lit8 v12, v12, 0x4

    aget-byte v11, v11, v12

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v0, v7

    .line 342
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 348
    .end local v0    # "array":[B
    .end local v5    # "end":I
    .end local v7    # "i":I
    :cond_1c
    const/4 v8, 0x1

    .line 349
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_flags:B

    iget-byte v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_opcode:B

    invoke-interface {v10, v11, v12, v3}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 350
    const/4 v10, 0x0

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_bytesNeeded:I

    .line 351
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto/16 :goto_5

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public returnBuffer()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 382
    :cond_0
    return-void
.end method

.method public setFakeFragments(Z)V
    .locals 0
    .param p1, "fakeFragments"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_fragmentFrames:Z

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    const-string v0, "%s@%x state=%s buffer=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
