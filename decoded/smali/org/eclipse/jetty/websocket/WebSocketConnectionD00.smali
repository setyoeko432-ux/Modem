.class public Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "WebSocketConnectionD00.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketConnection;
.implements Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;
    }
.end annotation


# static fields
.field public static final LENGTH_FRAME:B = -0x80t

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final SENTINEL_FRAME:B


# instance fields
.field private final _generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

.field private _hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private _key1:Ljava/lang/String;

.field private _key2:Ljava/lang/String;

.field private final _parser:Lorg/eclipse/jetty/websocket/WebSocketParser;

.field private final _protocol:Ljava/lang/String;

.field private final _websocket:Lorg/eclipse/jetty/websocket/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V
    .locals 3
    .param p1, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p4, "timestamp"    # J
    .param p6, "maxIdleTime"    # I
    .param p7, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p2, p4, p5}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0, p6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 61
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 62
    iput-object p7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_protocol:Ljava/lang/String;

    .line 64
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-direct {v0, p3, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .line 65
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;

    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$FrameHandlerD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;)V

    invoke-direct {v0, p3, p2, v1}, Lorg/eclipse/jetty/websocket/WebSocketParserD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParser;

    .line 66
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private checkWriteable()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 306
    :cond_0
    return-void
.end method

.method private doTheHixieHixieShake()V
    .locals 6

    .prologue
    .line 190
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_key1:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->hixieCrypt(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_key2:Ljava/lang/String;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->hixieCrypt(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->asArray()[B

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->doTheHixieHixieShake(JJ[B)[B

    move-result-object v0

    .line 194
    .local v0, "result":[B
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 195
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put([B)I

    .line 196
    return-void
.end method

.method public static doTheHixieHixieShake(JJ[B)[B
    .locals 11
    .param p0, "key1"    # J
    .param p2, "key2"    # J
    .param p4, "key3"    # [B

    .prologue
    const/16 v10, 0x18

    const/16 v9, 0x10

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 330
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 331
    .local v2, "md":Ljava/security/MessageDigest;
    const/16 v3, 0x10

    new-array v1, v3, [B

    .line 333
    .local v1, "fodder":[B
    const/4 v3, 0x0

    shr-long v4, p0, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 334
    const/4 v3, 0x1

    shr-long v4, p0, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 335
    const/4 v3, 0x2

    shr-long v4, p0, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 336
    const/4 v3, 0x3

    and-long v4, v6, p0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 337
    const/4 v3, 0x4

    shr-long v4, p2, v10

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 338
    const/4 v3, 0x5

    shr-long v4, p2, v9

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 339
    const/4 v3, 0x6

    shr-long v4, p2, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 340
    const/4 v3, 0x7

    and-long v4, v6, p2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 341
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-static {p4, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 343
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 345
    .end local v1    # "fodder":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static hixieCrypt(Ljava/lang/String;)J
    .locals 11
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 314
    const-wide/16 v4, 0x0

    .line 315
    .local v4, "number":J
    const/4 v6, 0x0

    .line 316
    .local v6, "spaces":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 318
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    const-wide/16 v7, 0xa

    mul-long/2addr v7, v4

    add-int/lit8 v9, v1, -0x30

    int-to-long v9, v9

    add-long v4, v7, v9

    .line 316
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/16 v7, 0x20

    if-ne v1, v7, :cond_0

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 323
    .end local v1    # "c":C
    :cond_2
    int-to-long v7, v6

    div-long v7, v4, v7

    return-wide v7
.end method


# virtual methods
.method public binaryOpcode()B
    .locals 1

    .prologue
    .line 448
    const/16 v0, -0x80

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 281
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public continuationOpcode()B
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->close()V

    .line 273
    return-void
.end method

.method public fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParser;->fill(Lorg/eclipse/jetty/io/Buffer;)V

    .line 298
    return-void
.end method

.method public finMask()B
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 0

    .prologue
    .line 71
    return-object p0
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
    .line 493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, -0x1

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v7, :cond_b

    .line 93
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketParser;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 94
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 96
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    .line 97
    .local v5, "l":I
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x8

    if-le v5, v7, :cond_0

    .line 98
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v7

    rsub-int/lit8 v5, v7, 0x8

    .line 99
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v8

    invoke-interface {v0, v8, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 100
    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 104
    .end local v5    # "l":I
    :cond_1
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 111
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->doTheHixieHixieShake()V

    .line 112
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    .line 113
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 114
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 130
    :cond_2
    :goto_0
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v7, v7, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v7, :cond_3

    .line 131
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v7, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    invoke-interface {v7, p0}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 132
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v7, p0}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 171
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 175
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    .line 178
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_4
    :goto_2
    return-object p0

    .line 119
    .restart local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    .line 120
    .local v3, "filled":I
    if-gez v3, :cond_8

    .line 122
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 123
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v3    # "filled":I
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :cond_6
    :goto_3
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 170
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v8}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 171
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 175
    :goto_4
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    :cond_7
    throw v7

    .line 126
    .restart local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v3    # "filled":I
    :cond_8
    if-nez v3, :cond_1

    .line 168
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 171
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 175
    :goto_5
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    goto :goto_2

    .line 173
    :cond_9
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    goto :goto_5

    .end local v3    # "filled":I
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    goto :goto_1

    .line 137
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_b
    const/4 v6, 0x1

    .line 139
    .local v6, "progress":Z
    :cond_c
    :goto_6
    if-eqz v6, :cond_f

    .line 141
    :try_start_5
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    move-result v4

    .line 142
    .local v4, "flushed":I
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketParser;->parseNext()I

    move-result v3

    .line 144
    .restart local v3    # "filled":I
    if-gtz v4, :cond_d

    if-lez v3, :cond_e

    :cond_d
    const/4 v6, 0x1

    .line 146
    :goto_7
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 148
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v7, v7, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v7, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-eqz v7, :cond_c

    .line 149
    const/4 v6, 0x1

    goto :goto_6

    .line 144
    :cond_e
    const/4 v6, 0x0

    goto :goto_7

    .line 168
    .end local v3    # "filled":I
    .end local v4    # "flushed":I
    :cond_f
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v7}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 171
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 175
    :goto_8
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    goto/16 :goto_2

    .line 173
    :cond_10
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    goto :goto_8

    .line 160
    .end local v6    # "progress":Z
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 162
    .local v2, "e2":Ljava/io/IOException;
    :try_start_6
    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    :cond_11
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    goto/16 :goto_4
.end method

.method public isAllowFrameFragmentation()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public isBinary(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 468
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClose(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public isContinuation(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public isControl(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_parser:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketParser;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

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

.method public isMessageComplete(B)Z
    .locals 1
    .param p1, "flags"    # B

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public isMore(B)Z
    .locals 1
    .param p1, "flags"    # B

    .prologue
    .line 244
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPing(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public isPong(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public isText(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 463
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    const/16 v1, 0x3e8

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 220
    return-void
.end method

.method protected onFrameHandshake()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    return-void
.end method

.method protected onWebsocketOpen()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_websocket:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V

    .line 402
    return-void
.end method

.method public sendControl(B[BII)V
    .locals 0
    .param p1, "code"    # B
    .param p2, "content"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public sendFrame(BB[BII)V
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
    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/4 v1, 0x0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 260
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    .line 261
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 228
    .local v3, "data":[B
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    array-length v5, v3

    move v2, v1

    move v4, v1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 230
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    .line 231
    return-void
.end method

.method public sendMessage([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/4 v1, 0x0

    const/16 v2, -0x80

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_generator:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 238
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->checkWriteable()V

    .line 239
    return-void
.end method

.method public setAllowFrameFragmentation(Z)V
    .locals 0
    .param p1, "allowFragmentation"    # Z

    .prologue
    .line 508
    return-void
.end method

.method public setHixieKeys(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_key1:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_key2:Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_hixieBytes:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 81
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 369
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxTextMessageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 353
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->close()V

    .line 292
    return-void
.end method

.method public textOpcode()B
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method
