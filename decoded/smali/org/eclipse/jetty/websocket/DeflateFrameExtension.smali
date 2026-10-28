.class public Lorg/eclipse/jetty/websocket/DeflateFrameExtension;
.super Lorg/eclipse/jetty/websocket/AbstractExtension;
.source "DeflateFrameExtension.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _deflater:Ljava/util/zip/Deflater;

.field private _inflater:Ljava/util/zip/Inflater;

.field private _minLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "x-deflate-frame"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/AbstractExtension;-><init>(Ljava/lang/String;)V

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_minLength:I

    .line 46
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 16
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
    .line 118
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->isControl(B)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_minLength:I

    move/from16 v0, p5

    if-ge v0, v3, :cond_1

    .line 120
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->clearFlag(BI)B

    move-result v4

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-super/range {v3 .. v8}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 163
    :goto_0
    return-void

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_deflater:Ljava/util/zip/Deflater;

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 130
    move/from16 v0, p5

    new-array v6, v0, [B

    .line 131
    .local v6, "out":[B
    const/4 v14, 0x0

    .line 134
    .local v14, "out_offset":I
    const v3, 0xffff

    move/from16 v0, p5

    if-le v0, v3, :cond_2

    .line 136
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .local v15, "out_offset":I
    const/16 v3, 0x7f

    aput-byte v3, v6, v14

    .line 137
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    const/4 v3, 0x0

    aput-byte v3, v6, v15

    .line 138
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    const/4 v3, 0x0

    aput-byte v3, v6, v14

    .line 139
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    const/4 v3, 0x0

    aput-byte v3, v6, v15

    .line 140
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    const/4 v3, 0x0

    aput-byte v3, v6, v14

    .line 141
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    shr-int/lit8 v3, p5, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v6, v15

    .line 142
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    shr-int/lit8 v3, p5, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v6, v14

    .line 143
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    shr-int/lit8 v3, p5, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v6, v15

    .line 144
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v6, v14

    move v14, v15

    .line 157
    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_deflater:Ljava/util/zip/Deflater;

    sub-int v4, p5, v14

    invoke-virtual {v3, v6, v14, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v13

    .line 159
    .local v13, "l":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->setFlag(BI)B

    move-result v4

    const/4 v7, 0x0

    add-int v8, v13, v14

    move-object/from16 v3, p0

    move/from16 v5, p2

    invoke-super/range {v3 .. v8}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    goto/16 :goto_0

    .line 146
    .end local v13    # "l":I
    :cond_2
    const/16 v3, 0x7e

    move/from16 v0, p5

    if-lt v0, v3, :cond_3

    .line 148
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    const/16 v3, 0x7e

    aput-byte v3, v6, v14

    .line 149
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    shr-int/lit8 v3, p5, 0x8

    int-to-byte v3, v3

    aput-byte v3, v6, v15

    .line 150
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v6, v14

    move v14, v15

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    goto :goto_1

    .line 154
    :cond_3
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "out_offset":I
    .restart local v15    # "out_offset":I
    and-int/lit8 v3, p5, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v6, v14

    move v14, v15

    .end local v15    # "out_offset":I
    .restart local v14    # "out_offset":I
    goto :goto_1

    .line 162
    .restart local v13    # "l":I
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->clearFlag(BI)B

    move-result v8

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-super/range {v7 .. v12}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    goto/16 :goto_0
.end method

.method public init(Ljava/util/Map;)Z
    .locals 2
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
    .line 51
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "minLength"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "minLength"

    iget v1, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_minLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/websocket/AbstractExtension;->init(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "minLength"

    iget v1, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_minLength:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getInitParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_minLength:I

    .line 57
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_deflater:Ljava/util/zip/Deflater;

    .line 58
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_inflater:Ljava/util/zip/Inflater;

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 10
    .param p1, "flags"    # B
    .param p2, "opcode"    # B
    .param p3, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v7, 0x1

    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v6

    invoke-interface {v6, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->isControl(B)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, p1, v7}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->isFlag(BI)Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/websocket/AbstractExtension;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 110
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v6

    if-nez v6, :cond_2

    .line 78
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p3

    .line 80
    :cond_2
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v6

    and-int/lit16 v5, v6, 0xff

    .line 81
    .local v5, "length":I
    const/16 v6, 0x7e

    if-lt v5, v6, :cond_4

    .line 83
    const/16 v6, 0x7f

    if-ne v5, v6, :cond_3

    const/16 v0, 0x8

    .line 84
    .local v0, "b":I
    :goto_1
    const/4 v5, 0x0

    move v1, v0

    .line 85
    .end local v0    # "b":I
    .local v1, "b":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    if-lez v1, :cond_4

    .line 86
    mul-int/lit16 v6, v5, 0x100

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int v5, v6, v7

    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_2

    .line 83
    .end local v1    # "b":I
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 91
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_inflater:Ljava/util/zip/Inflater;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v7

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v8

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 92
    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v2, v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 95
    .local v2, "buf":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    :goto_3
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v6

    if-lez v6, :cond_6

    .line 97
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->_inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v8

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    .line 98
    .local v4, "inflated":I
    if-nez v4, :cond_5

    .line 99
    new-instance v6, Ljava/util/zip/DataFormatException;

    const-string v7, "insufficient data"

    invoke-direct {v6, v7}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4    # "inflated":I
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/util/zip/DataFormatException;
    sget-object v6, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v6

    const/16 v7, 0x3ef

    invoke-virtual {v3}, Ljava/util/zip/DataFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v3    # "e":Ljava/util/zip/DataFormatException;
    .restart local v4    # "inflated":I
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    goto :goto_3

    .line 103
    .end local v4    # "inflated":I
    :cond_6
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->clearFlag(BI)B

    move-result v6

    invoke-super {p0, v6, p2, v2}, Lorg/eclipse/jetty/websocket/AbstractExtension;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
