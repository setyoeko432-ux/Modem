.class public Lorg/eclipse/jetty/websocket/WebSocketParserD06;
.super Ljava/lang/Object;
.source "WebSocketParserD06.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketParserD06$1;,
        Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;
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

.field private final _handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private _length:J

.field private _m:I

.field private final _mask:[B

.field private final _masked:Z

.field private _opcode:B

.field private _state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "handler"    # Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    .param p4, "masked"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 83
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 84
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 85
    iput-boolean p4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    .line 86
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 87
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 301
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 303
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 306
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 308
    :cond_1
    return-void
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

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

.method public parseNext()I
    .locals 17

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v12, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v12}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 114
    :cond_0
    const/4 v11, 0x0

    .line 115
    .local v11, "total_filled":I
    const/4 v7, 0x0

    .line 120
    .local v7, "events":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 123
    .local v2, "available":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v13, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    :goto_1
    if-ge v2, v12, :cond_8

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v12

    if-nez v12, :cond_3

    .line 130
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FULL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v14}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    goto :goto_1

    .line 135
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12, v13}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v8

    .line 136
    .local v8, "filled":I
    :goto_2
    if-gtz v8, :cond_6

    .line 137
    add-int v12, v11, v7

    if-lez v12, :cond_4

    add-int v8, v11, v7

    .line 293
    .end local v8    # "filled":I
    :cond_4
    :goto_3
    return v8

    .line 135
    :cond_5
    const/4 v8, -0x1

    goto :goto_2

    .line 138
    .restart local v8    # "filled":I
    :cond_6
    add-int/2addr v11, v8

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 141
    .end local v8    # "filled":I
    :catch_0
    move-exception v5

    .line 143
    .local v5, "e":Ljava/io/IOException;
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 144
    add-int v12, v11, v7

    if-lez v12, :cond_7

    add-int v12, v11, v7

    :goto_4
    move v8, v12

    goto :goto_3

    :cond_7
    const/4 v12, -0x1

    goto :goto_4

    .line 152
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v13, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-eq v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v13, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-ne v12, v13, :cond_9

    const/4 v12, 0x1

    :goto_6
    if-lt v2, v12, :cond_12

    .line 154
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$1;->$SwitchMap$org$eclipse$jetty$websocket$WebSocketParserD06$State:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v13}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_5

    .line 157
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    if-eqz v12, :cond_a

    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    :goto_7
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v12}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->getNeeds()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    goto :goto_5

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    goto :goto_6

    .line 157
    :cond_a
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto :goto_7

    .line 162
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-interface {v12, v13, v14, v15}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    .line 163
    add-int/lit8 v2, v2, -0x4

    .line 164
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v12}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->getNeeds()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    .line 166
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    goto :goto_5

    .line 170
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 171
    .local v3, "b":B
    add-int/lit8 v2, v2, -0x1

    .line 172
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    if-eqz v12, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v12, v3

    int-to-byte v3, v12

    .line 174
    :cond_b
    and-int/lit8 v12, v3, 0xf

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_opcode:B

    .line 175
    shr-int/lit8 v12, v3, 0x4

    and-int/lit8 v12, v12, 0xf

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_flags:B

    .line 177
    move-object/from16 v0, p0

    iget-byte v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_opcode:B

    invoke-static {v12}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->isControlFrame(I)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-byte v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_flags:B

    invoke-static {v12}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->isLastFrame(I)Z

    move-result v12

    if-nez v12, :cond_c

    .line 179
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 180
    add-int/lit8 v7, v7, 0x1

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v13, 0x3ea

    const-string v14, "fragmented control"

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 186
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v12}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->getNeeds()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    goto/16 :goto_5

    .line 184
    :cond_c
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto :goto_8

    .line 190
    .end local v3    # "b":B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 191
    .restart local v3    # "b":B
    add-int/lit8 v2, v2, -0x1

    .line 192
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    if-eqz v12, :cond_d

    .line 193
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v12, v3

    int-to-byte v3, v12

    .line 194
    :cond_d
    packed-switch v3, :pswitch_data_1

    .line 207
    and-int/lit8 v12, v3, 0x7f

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    .line 208
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    .line 209
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 197
    :pswitch_4
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    .line 198
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v12}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->getNeeds()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    goto/16 :goto_5

    .line 202
    :pswitch_5
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    .line 203
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v12}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->getNeeds()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    goto/16 :goto_5

    .line 214
    .end local v3    # "b":B
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 215
    .restart local v3    # "b":B
    add-int/lit8 v2, v2, -0x1

    .line 216
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    if-eqz v12, :cond_e

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v12, v3

    int-to-byte v3, v12

    .line 218
    :cond_e
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    const-wide/16 v14, 0x100

    mul-long/2addr v12, v14

    and-int/lit16 v14, v3, 0xff

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    .line 219
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    if-nez v12, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    .line 222
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v14}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_f

    .line 224
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 225
    add-int/lit8 v7, v7, 0x1

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v13, 0x3ec

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "frame size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v15}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 230
    :cond_f
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 236
    .end local v3    # "b":B
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 237
    .restart local v3    # "b":B
    add-int/lit8 v2, v2, -0x1

    .line 238
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    if-eqz v12, :cond_10

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v12, v3

    int-to-byte v3, v12

    .line 240
    :cond_10
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    const-wide/16 v14, 0x100

    mul-long/2addr v12, v14

    and-int/lit16 v14, v3, 0xff

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    .line 241
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    if-nez v12, :cond_8

    .line 243
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    .line 244
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v14}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_11

    .line 246
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 247
    add-int/lit8 v7, v7, 0x1

    .line 248
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v13, 0x3ec

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "frame size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_length:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v15}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 252
    :cond_11
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 258
    .end local v3    # "b":B
    :pswitch_8
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 259
    .local v10, "skip":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12, v10}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 260
    sub-int/2addr v2, v10

    .line 261
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    sub-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    .line 262
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    if-nez v12, :cond_8

    .line 263
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 268
    .end local v10    # "skip":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v13, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    if-lt v2, v12, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    invoke-interface {v12, v13}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 271
    .local v4, "data":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_masked:Z

    if-eqz v12, :cond_14

    .line 273
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v12

    if-nez v12, :cond_13

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 275
    :cond_13
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    .line 276
    .local v1, "array":[B
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    .line 277
    .local v6, "end":I
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v9

    .local v9, "i":I
    :goto_9
    if-ge v9, v6, :cond_14

    .line 278
    aget-byte v12, v1, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_mask:[B

    move-object/from16 v0, p0

    iget v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_m:I

    rem-int/lit8 v14, v14, 0x4

    aget-byte v13, v13, v14

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v1, v9

    .line 277
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 282
    .end local v1    # "array":[B
    .end local v6    # "end":I
    .end local v9    # "i":I
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    move-object/from16 v0, p0

    iget-byte v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_flags:B

    move-object/from16 v0, p0

    iget-byte v14, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_opcode:B

    invoke-interface {v12, v13, v14, v4}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 284
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_bytesNeeded:I

    .line 285
    sget-object v12, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_state:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v12

    if-nez v12, :cond_15

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 290
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 293
    :cond_15
    add-int v8, v11, v7

    goto/16 :goto_3

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
