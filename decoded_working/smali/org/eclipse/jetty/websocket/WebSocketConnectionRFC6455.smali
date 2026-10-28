.class public Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "WebSocketConnectionRFC6455.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$WSFrameHandler;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$WSFrameConnection;
    }
.end annotation


# static fields
.field static final CLOSE_BAD_DATA:I = 0x3eb

.field static final CLOSE_BAD_PAYLOAD:I = 0x3ef

.field static final CLOSE_FAILED_TLS_HANDSHAKE:I = 0x3f7

.field static final CLOSE_MESSAGE_TOO_LARGE:I = 0x3f1

.field static final CLOSE_NORMAL:I = 0x3e8

.field static final CLOSE_NO_CLOSE:I = 0x3ee

.field static final CLOSE_NO_CODE:I = 0x3ed

.field static final CLOSE_POLICY_VIOLATION:I = 0x3f0

.field static final CLOSE_PROTOCOL:I = 0x3ea

.field static final CLOSE_REQUIRED_EXTENSION:I = 0x3f2

.field static final CLOSE_SERVER_ERROR:I = 0x3f3

.field static final CLOSE_SHUTDOWN:I = 0x3e9

.field static final CLOSE_UNDEFINED:I = 0x3ec

.field static final FLAG_FIN:I = 0x8

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final MAGIC:[B

.field static final OP_BINARY:B = 0x2t

.field static final OP_CLOSE:B = 0x8t

.field static final OP_CONTINUATION:B = 0x0t

.field static final OP_CONTROL:B = 0x8t

.field static final OP_EXT_CTRL:B = 0xbt

.field static final OP_EXT_DATA:B = 0x3t

.field static final OP_PING:B = 0x9t

.field static final OP_PONG:B = 0xat

.field static final OP_TEXT:B = 0x1t

.field static final VERSION:I = 0xd


# instance fields
.field private volatile _closeCode:I

.field private volatile _closeMessage:Ljava/lang/String;

.field private volatile _closedIn:Z

.field private volatile _closedOut:Z

.field private final _connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

.field private final _context:Ljava/lang/ClassLoader;

.field private final _draft:I

.field private final _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final _generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

.field private _maxBinaryMessageSize:I

.field private _maxTextMessageSize:I

.field private final _onBinaryMessage:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

.field private final _onControl:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

.field private final _onFrame:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

.field private final _onTextMessage:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

.field private final _outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

.field private final _parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

.field private final _protocol:Ljava/lang/String;

.field private final _webSocket:Lorg/eclipse/jetty/websocket/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const-class v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v1}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 136
    :try_start_0
    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->MAGIC:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V
    .locals 11
    .param p1, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p4, "timestamp"    # J
    .param p6, "maxIdleTime"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .param p9, "draft"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/websocket/WebSocketBuffers;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    .local p8, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 9
    .param p1, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p4, "timestamp"    # J
    .param p6, "maxIdleTime"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .param p9, "draft"    # I
    .param p10, "maskgen"    # Lorg/eclipse/jetty/websocket/MaskGen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/websocket/WebSocketBuffers;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;I",
            "Lorg/eclipse/jetty/websocket/MaskGen;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    .local p8, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    invoke-direct {p0, p2, p4, p5}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 129
    const/4 v6, -0x1

    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_maxTextMessageSize:I

    .line 130
    const/4 v6, -0x1

    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_maxBinaryMessageSize:I

    .line 144
    new-instance v6, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$WSFrameConnection;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$WSFrameConnection;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;)V

    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_context:Ljava/lang/ClassLoader;

    .line 162
    move/from16 v0, p9

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_draft:I

    .line 163
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6, p6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 165
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 166
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v6, v6, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    :goto_0
    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onFrame:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    .line 167
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v6, v6, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    :goto_1
    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onTextMessage:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    .line 168
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v6, v6, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    :goto_2
    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onBinaryMessage:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    .line 169
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v6, v6, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    :goto_3
    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onControl:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    .line 170
    new-instance v6, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v0, p10

    invoke-direct {v6, p3, v7, v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    .line 172
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    .line 173
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$WSFrameHandler;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$WSFrameHandler;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;)V

    .line 174
    .local v3, "frameHandler":Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "e":I
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/Extension;

    .line 179
    .local v2, "extension":Lorg/eclipse/jetty/websocket/Extension;
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_4

    move-object v7, v3

    :goto_5
    if-nez v1, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    :goto_6
    invoke-interface {v2, v8, v7, v6}, Lorg/eclipse/jetty/websocket/Extension;->bind(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Lorg/eclipse/jetty/websocket/WebSocketGenerator;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 184
    goto :goto_4

    .line 166
    .end local v1    # "e":I
    .end local v2    # "extension":Lorg/eclipse/jetty/websocket/Extension;
    .end local v3    # "frameHandler":Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 167
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 168
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 169
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 179
    .restart local v1    # "e":I
    .restart local v2    # "extension":Lorg/eclipse/jetty/websocket/Extension;
    .restart local v3    # "frameHandler":Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v6, v1, 0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    move-object v7, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v1, -0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    goto :goto_6

    .line 187
    .end local v1    # "e":I
    .end local v2    # "extension":Lorg/eclipse/jetty/websocket/Extension;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    :goto_7
    iput-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .line 188
    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    move-object v5, v3

    .line 190
    .local v5, "inbound":Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    :goto_8
    new-instance v7, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    if-nez p10, :cond_b

    const/4 v6, 0x1

    :goto_9
    invoke-direct {v7, p3, p2, v5, v6}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V

    iput-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    .line 192
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_protocol:Ljava/lang/String;

    .line 194
    return-void

    .line 187
    .end local v5    # "inbound":Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    :cond_9
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    goto :goto_7

    .line 188
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    move-object v5, v6

    goto :goto_8

    .line 190
    .restart local v5    # "inbound":Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    :cond_b
    const/4 v6, 0x0

    goto :goto_9
.end method

.method static synthetic access$1000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_maxTextMessageSize:I

    return v0
.end method

.method static synthetic access$1102(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;I)I
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_maxTextMessageSize:I

    return p1
.end method

.method static synthetic access$1200(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_maxBinaryMessageSize:I

    return v0
.end method

.method static synthetic access$1202(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;I)I
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_maxBinaryMessageSize:I

    return p1
.end method

.method static synthetic access$1300(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedOut:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onFrame:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onControl:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onTextMessage:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onBinaryMessage:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    return v0
.end method

.method static synthetic access$3000(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->checkWriteable()V

    return-void
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method private checkWriteable()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 413
    :cond_0
    return-void
.end method

.method public static hashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 957
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 958
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 959
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->MAGIC:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 960
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 962
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static isControlFrame(B)Z
    .locals 1
    .param p0, "opcode"    # B

    .prologue
    .line 109
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLastFrame(B)Z
    .locals 1
    .param p0, "flags"    # B

    .prologue
    .line 104
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeIn(ILjava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 308
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "ClosedIn {} {} {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    monitor-enter p0

    .line 314
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedOut:Z

    .line 315
    .local v0, "closed_out":Z
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    .line 316
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    if-nez v3, :cond_3

    .line 317
    .local v1, "tell_app":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 319
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    .line 320
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeMessage:Ljava/lang/String;

    .line 322
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-nez v0, :cond_1

    .line 327
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeOut(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :cond_1
    if-eqz v1, :cond_2

    .line 332
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 334
    :cond_2
    return-void

    .end local v1    # "tell_app":Z
    :cond_3
    move v1, v2

    .line 316
    goto :goto_0

    .line 322
    .end local v0    # "closed_out":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 331
    .restart local v0    # "closed_out":Z
    .restart local v1    # "tell_app":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 332
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v3, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    :cond_4
    throw v2
.end method

.method public closeOut(ILjava/lang/String;)V
    .locals 12
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x3ee

    const/16 v10, 0x3ed

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 339
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "ClosedOut {} {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x2

    aput-object p2, v2, v4

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-boolean v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedOut:Z

    .line 346
    .local v6, "closed_out":Z
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedOut:Z

    .line 347
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    if-nez v0, :cond_7

    .line 348
    .local v8, "tell_app":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 350
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    .line 351
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeMessage:Ljava/lang/String;

    .line 353
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v8, :cond_1

    .line 358
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    :cond_1
    if-nez v6, :cond_6

    .line 369
    if-ltz p1, :cond_2

    if-eq p1, v10, :cond_2

    if-eq p1, v11, :cond_2

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_8

    .line 372
    :cond_2
    const/4 p1, -0x1

    .line 379
    :cond_3
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_4

    const-string p2, ""

    .end local p2    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 380
    .local v3, "bytes":[B
    const/4 v0, 0x0

    div-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 381
    const/4 v0, 0x1

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-lez p1, :cond_5

    array-length v5, v3

    :cond_5
    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    .end local v3    # "bytes":[B
    :cond_6
    :goto_2
    return-void

    .end local v8    # "tell_app":Z
    .restart local p2    # "message":Ljava/lang/String;
    :cond_7
    move v8, v5

    .line 347
    goto :goto_0

    .line 353
    .end local v6    # "closed_out":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 374
    .restart local v6    # "closed_out":Z
    .restart local v8    # "tell_app":Z
    :cond_8
    if-nez p1, :cond_3

    .line 376
    const/16 p1, 0x3e8

    goto :goto_1

    .line 386
    .end local p2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 388
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 362
    .end local v7    # "e":Ljava/io/IOException;
    .restart local p2    # "message":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v0

    .line 364
    if-nez v6, :cond_d

    .line 369
    if-ltz p1, :cond_9

    if-eq p1, v10, :cond_9

    if-eq p1, v11, :cond_9

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_e

    .line 372
    :cond_9
    const/4 p1, -0x1

    .line 379
    :cond_a
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_b

    const-string p2, ""

    .end local p2    # "message":Ljava/lang/String;
    :cond_b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 380
    .restart local v3    # "bytes":[B
    const/4 v0, 0x0

    div-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 381
    const/4 v0, 0x1

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-lez p1, :cond_c

    array-length v5, v3

    :cond_c
    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 389
    .end local v3    # "bytes":[B
    :cond_d
    :goto_4
    throw v9

    .line 374
    .restart local p2    # "message":Ljava/lang/String;
    :cond_e
    if-nez p1, :cond_a

    .line 376
    const/16 p1, 0x3e8

    goto :goto_3

    .line 386
    .end local p2    # "message":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 388
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 403
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->fill(Lorg/eclipse/jetty/io/Buffer;)V

    .line 404
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_extensions:Ljava/util/List;

    goto :goto_0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x3ee

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 215
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 216
    .local v5, "oldcontext":Ljava/lang/ClassLoader;
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_context:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 220
    const/4 v6, 0x1

    .line 222
    .local v6, "progress":Z
    :cond_0
    :goto_0
    if-eqz v6, :cond_3

    .line 224
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    move-result v4

    .line 225
    .local v4, "flushed":I
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->parseNext()I

    move-result v3

    .line 227
    .local v3, "filled":I
    if-gtz v4, :cond_1

    if-lez v3, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 228
    :goto_1
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 230
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v7, v7, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v7, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 231
    const/4 v6, 0x1

    goto :goto_0

    .line 227
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 249
    .end local v3    # "filled":I
    .end local v4    # "flushed":I
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 250
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->returnBuffer()V

    .line 251
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->returnBuffer()V

    .line 252
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 254
    iget-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedOut:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 255
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 262
    :cond_4
    :goto_2
    return-object p0

    .line 256
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    if-nez v7, :cond_6

    .line 257
    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeIn(ILjava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_6
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->checkWriteable()V

    goto :goto_2

    .line 234
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 239
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :cond_7
    :goto_3
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 250
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v8}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->returnBuffer()V

    .line 251
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    invoke-virtual {v8}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->returnBuffer()V

    .line 252
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 254
    iget-boolean v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedOut:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v8}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 255
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 259
    :cond_8
    :goto_4
    throw v7

    .line 241
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e2":Ljava/io/IOException;
    :try_start_3
    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    :cond_9
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    if-nez v8, :cond_a

    .line 257
    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeIn(ILjava/lang/String;)V

    goto :goto_4

    .line 259
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->checkWriteable()V

    goto :goto_4
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_outbound:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 4

    .prologue
    const/16 v3, 0x3ee

    .line 295
    monitor-enter p0

    .line 297
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 298
    .local v0, "closed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 299
    const/16 v1, 0x3ee

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closeCode:I

    .line 300
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-eqz v0, :cond_1

    .line 302
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    const-string v2, "closed"

    invoke-interface {v1, v3, v2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 303
    :cond_1
    return-void

    .line 297
    .end local v0    # "closed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onFrameHandshake()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onFrame:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_onFrame:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 421
    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 3
    .param p1, "idleForMs"    # J

    .prologue
    .line 282
    const/16 v0, 0x3e8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeOut(ILjava/lang/String;)V

    .line 283
    return-void
.end method

.method public onInputShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_closedIn:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 270
    :cond_0
    return-void
.end method

.method protected onWebSocketOpen()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_webSocket:Lorg/eclipse/jetty/websocket/WebSocket;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V

    .line 426
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_connection:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 396
    .local v0, "connection":Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    if-eqz v0, :cond_0

    .line 397
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->close(ILjava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 972
    const-string v0, "%s p=%s g=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
