.class public Lorg/eclipse/jetty/websocket/WebSocketParserD00;
.super Ljava/lang/Object;
.source "WebSocketParserD00.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATE_DATA:I = 0x3

.field public static final STATE_LENGTH:I = 0x2

.field public static final STATE_SENTINEL_DATA:I = 0x1

.field public static final STATE_START:I


# instance fields
.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private final _handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private _length:I

.field private _opcode:B

.field private _state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;)V
    .locals 0
    .param p1, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "handler"    # Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 66
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 67
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 68
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 203
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 208
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 210
    :cond_1
    return-void
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

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
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x3

    const/4 v8, -0x1

    const/4 v12, 0x0

    .line 92
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v9, :cond_0

    .line 93
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v9}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 95
    :cond_0
    const/4 v7, 0x0

    .line 100
    .local v7, "progress":I
    :cond_1
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    .line 103
    .local v5, "length":I
    if-eqz v5, :cond_2

    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    if-ne v9, v11, :cond_b

    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    if-ge v5, v9, :cond_b

    .line 106
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 109
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v9

    if-nez v9, :cond_3

    .line 110
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "FULL"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 115
    :cond_3
    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9, v10}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    .line 116
    .local v3, "filled":I
    :goto_0
    if-gtz v3, :cond_6

    move v8, v7

    .line 194
    .end local v3    # "filled":I
    :cond_4
    :goto_1
    return v8

    :cond_5
    move v3, v8

    .line 115
    goto :goto_0

    .line 118
    .restart local v3    # "filled":I
    :cond_6
    add-int/2addr v7, v3

    .line 119
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v6, v5

    .line 131
    .end local v3    # "filled":I
    .end local v5    # "length":I
    .local v6, "length":I
    :goto_2
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "length":I
    .restart local v5    # "length":I
    if-lez v6, :cond_1

    .line 133
    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    packed-switch v9, :pswitch_data_0

    move v6, v5

    .line 194
    .end local v5    # "length":I
    .restart local v6    # "length":I
    goto :goto_2

    .line 121
    .end local v6    # "length":I
    .restart local v5    # "length":I
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/IOException;
    sget-object v9, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 124
    if-lez v7, :cond_4

    move v8, v7

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_0
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 137
    .local v0, "b":B
    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_opcode:B

    .line 138
    iget-byte v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_opcode:B

    if-gez v9, :cond_7

    .line 140
    iput v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    .line 141
    const/4 v9, 0x2

    iput v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    move v6, v5

    .end local v5    # "length":I
    .restart local v6    # "length":I
    goto :goto_2

    .line 145
    .end local v6    # "length":I
    .restart local v5    # "length":I
    :cond_7
    const/4 v9, 0x1

    iput v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    .line 146
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9, v12}, Lorg/eclipse/jetty/io/Buffer;->mark(I)V

    move v6, v5

    .line 148
    .end local v5    # "length":I
    .restart local v6    # "length":I
    goto :goto_2

    .line 151
    .end local v0    # "b":B
    .end local v6    # "length":I
    .restart local v5    # "length":I
    :pswitch_1
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 152
    .restart local v0    # "b":B
    and-int/lit16 v9, v0, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_b

    .line 154
    iput v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    .line 155
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v9

    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v4, v9, -0x1

    .line 156
    .local v4, "l":I
    add-int/lit8 v7, v7, 0x1

    .line 157
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_opcode:B

    iget-object v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v11, v4}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v11

    invoke-interface {v9, v12, v10, v11}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 158
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9, v8}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 159
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v8

    if-nez v8, :cond_8

    .line 161
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 162
    iput-object v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    :cond_8
    move v8, v7

    .line 164
    goto :goto_1

    .line 169
    .end local v0    # "b":B
    .end local v4    # "l":I
    :pswitch_2
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 170
    .restart local v0    # "b":B
    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    shl-int/lit8 v9, v9, 0x7

    and-int/lit8 v10, v0, 0x7f

    or-int/2addr v9, v10

    iput v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    .line 171
    if-ltz v0, :cond_b

    .line 173
    iput v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    .line 174
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9, v12}, Lorg/eclipse/jetty/io/Buffer;->mark(I)V

    move v6, v5

    .end local v5    # "length":I
    .restart local v6    # "length":I
    goto/16 :goto_2

    .line 179
    .end local v0    # "b":B
    .end local v6    # "length":I
    .restart local v5    # "length":I
    :pswitch_3
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v9

    if-gez v9, :cond_9

    .line 180
    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v9

    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    if-lt v9, v10, :cond_1

    .line 182
    :cond_9
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 183
    .local v1, "data":Lorg/eclipse/jetty/io/Buffer;
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_length:I

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 184
    iput v12, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_state:I

    .line 185
    add-int/lit8 v7, v7, 0x1

    .line 186
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_handler:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_opcode:B

    invoke-interface {v8, v12, v9, v1}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 188
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 190
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 191
    iput-object v13, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    :cond_a
    move v8, v7

    .line 194
    goto/16 :goto_1

    .end local v1    # "data":Lorg/eclipse/jetty/io/Buffer;
    :cond_b
    move v6, v5

    .end local v5    # "length":I
    .restart local v6    # "length":I
    goto/16 :goto_2

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
