.class public Lorg/eclipse/jetty/websocket/FragmentExtension;
.super Lorg/eclipse/jetty/websocket/AbstractExtension;
.source "FragmentExtension.java"


# instance fields
.field private _maxLength:I

.field private _minFragments:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "fragment"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/AbstractExtension;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_minFragments:I

    .line 32
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 14
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
    .line 49
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    move/from16 v0, p2

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->isControl(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v13, 0x1

    .line 57
    .local v13, "fragments":I
    :goto_1
    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    move/from16 v0, p5

    if-le v0, v1, :cond_1

    .line 59
    add-int/lit8 v13, v13, 0x1

    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->finMask()B

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    int-to-byte v2, v1

    iget v6, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    move-object v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-super/range {v1 .. v6}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 61
    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    sub-int p5, p5, v1

    .line 62
    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    add-int p4, p4, v1

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->continuationOpcode()B

    move-result p2

    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_minFragments:I

    if-ge v13, v1, :cond_2

    .line 68
    div-int/lit8 v6, p5, 0x2

    .line 69
    .local v6, "frag":I
    add-int/lit8 v13, v13, 0x1

    .line 70
    and-int/lit8 v1, p1, 0x7

    int-to-byte v2, v1

    move-object v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-super/range {v1 .. v6}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 71
    sub-int p5, p5, v6

    .line 72
    add-int p4, p4, v6

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->continuationOpcode()B

    move-result p2

    .line 74
    goto :goto_2

    .line 76
    .end local v6    # "frag":I
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->finMask()B

    move-result v1

    or-int/2addr v1, p1

    int-to-byte v8, v1

    move-object v7, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-super/range {v7 .. v12}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    goto :goto_0
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
    .line 37
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/eclipse/jetty/websocket/AbstractExtension;->init(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "maxLength"

    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getInitParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_maxLength:I

    .line 40
    const-string v0, "minFragments"

    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_minFragments:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getInitParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->_minFragments:I

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
