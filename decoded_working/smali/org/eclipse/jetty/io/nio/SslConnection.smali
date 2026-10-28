.class public Lorg/eclipse/jetty/io/nio/SslConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SslConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/SslConnection$1;,
        Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;,
        Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;
    }
.end annotation


# static fields
.field private static final __ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private static final __buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _allocations:I

.field private _allowRenegotiate:Z

.field private _buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

.field private _connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

.field private final _engine:Ljavax/net/ssl/SSLEngine;

.field private _handshook:Z

.field private _inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private _ishut:Z

.field private final _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _oshut:Z

.field private _outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field private final _progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _session:Ljavax/net/ssl/SSLSession;

.field private final _sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

.field private _unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    sput-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "timeStamp"    # J

    .prologue
    .line 97
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 50
    const-string v0, "org.eclipse.jetty.io.nio.ssl"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    .line 100
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local p2    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 101
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->newSslEndPoint()Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/nio/AsyncConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/eclipse/jetty/io/nio/SslConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    return v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z

    return v0
.end method

.method static synthetic access$402(Lorg/eclipse/jetty/io/nio/SslConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z

    return p1
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object v0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SslConnection;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "x2"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    return v0
.end method

.method private allocateBuffers()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    .line 140
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_in:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_out:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_unwrap:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 150
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    :cond_1
    monitor-exit p0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeInbound()V
    .locals 2

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 439
    .local v0, "x":Ljavax/net/ssl/SSLException;
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 602
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 12
    .param p1, "toFill"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "toFlush"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 278
    monitor-enter p0

    const/4 v4, 0x0

    .line 282
    .local v4, "some_progress":Z
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->allocateBuffers()V

    .line 285
    if-nez p1, :cond_7

    .line 288
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 289
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 319
    :cond_0
    if-nez p2, :cond_1

    .line 320
    sget-object p2, Lorg/eclipse/jetty/io/nio/SslConnection;->__ZERO_BUFFER:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 323
    :cond_1
    const/4 v3, 0x1

    .line 324
    .local v3, "progress":Z
    :goto_0
    if-eqz v3, :cond_12

    .line 326
    const/4 v3, 0x0

    .line 329
    const/4 v1, 0x0

    .local v1, "filled":I
    const/4 v2, 0x0

    .line 333
    .local v2, "flushed":I
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->space()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    if-lez v1, :cond_2

    .line 334
    const/4 v3, 0x1

    .line 337
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-lez v2, :cond_3

    .line 338
    const/4 v3, 0x1

    .line 347
    :cond_3
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} {} {} filled={}/{} flushed={}/{}"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 408
    :cond_4
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_5

    .line 409
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->closeInbound()V

    .line 411
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_6

    .line 412
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 415
    :cond_6
    or-int/2addr v4, v3

    .line 416
    goto/16 :goto_0

    .line 292
    .end local v1    # "filled":I
    .end local v2    # "flushed":I
    .end local v3    # "progress":Z
    :cond_7
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v7

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 295
    const/4 v7, 0x0

    invoke-direct {p0, v7, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v3

    .line 298
    .restart local v3    # "progress":Z
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 301
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {p1, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 424
    :try_start_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 425
    if-eqz v4, :cond_8

    .line 426
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    move v3, v6

    .line 428
    .end local v3    # "progress":Z
    :cond_9
    :goto_2
    monitor-exit p0

    return v3

    .line 424
    .restart local v3    # "progress":Z
    :cond_a
    :try_start_4
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 425
    if-eqz v4, :cond_9

    .line 426
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 278
    .end local v3    # "progress":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 309
    :cond_b
    :try_start_5
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {p1, v8}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 424
    :try_start_6
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 425
    if-eqz v4, :cond_c

    .line 426
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    move v3, v6

    goto :goto_2

    .line 340
    .restart local v1    # "filled":I
    .restart local v2    # "flushed":I
    .restart local v3    # "progress":Z
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 343
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :try_start_8
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "{} {} {} filled={}/{} flushed={}/{}"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v11}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v11}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 424
    .end local v1    # "filled":I
    .end local v2    # "flushed":I
    .end local v3    # "progress":Z
    :catchall_2
    move-exception v6

    :try_start_9
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 425
    if-eqz v4, :cond_d

    .line 426
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_d
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 354
    .restart local v1    # "filled":I
    .restart local v2    # "flushed":I
    .restart local v3    # "progress":Z
    :pswitch_0
    :try_start_a
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 359
    :pswitch_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v6

    if-lez v6, :cond_e

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->unwrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 360
    const/4 v3, 0x1

    .line 363
    :cond_e
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->space()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->wrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 372
    :goto_3
    :pswitch_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v5

    .local v5, "task":Ljava/lang/Runnable;
    if-eqz v5, :cond_4

    .line 374
    const/4 v3, 0x1

    .line 375
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 384
    .end local v5    # "task":Ljava/lang/Runnable;
    :pswitch_3
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    if-nez v6, :cond_f

    .line 385
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto/16 :goto_1

    .line 386
    :cond_f
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection;->wrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 387
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 394
    :pswitch_4
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    if-nez v6, :cond_10

    .line 395
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto/16 :goto_1

    .line 396
    :cond_10
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, -0x1

    if-ne v1, v6, :cond_11

    .line 399
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->shutdownInput()V

    goto/16 :goto_1

    .line 401
    :cond_11
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->unwrap(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 402
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 419
    .end local v1    # "filled":I
    .end local v2    # "flushed":I
    :cond_12
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-ne p1, v6, :cond_13

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->isSuspended()Z

    move-result v6

    if-nez v6, :cond_13

    .line 420
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/AsyncEndPoint;->dispatch()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 424
    :cond_13
    :try_start_b
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 425
    if-eqz v4, :cond_14

    .line 426
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_14
    move v3, v4

    .line 428
    goto/16 :goto_2

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private releaseBuffers()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    .line 161
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allocations:I

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 171
    sget-object v0, Lorg/eclipse/jetty/io/nio/SslConnection;->__buffers:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_buffers:Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;

    .line 175
    :cond_0
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized unwrap(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 595
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 521
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 524
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 527
    .local v2, "in_buffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 531
    :try_start_3
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 532
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 533
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 536
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6, v2, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 537
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 538
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} unwrap {} {} consumed={} produced={}"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v7

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->skip(I)I

    .line 546
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 547
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {p1, v6}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 557
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 562
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 563
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 565
    :try_start_6
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 588
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} wrap default {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 518
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 549
    .restart local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_7
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 553
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 557
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 562
    :catchall_2
    move-exception v4

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4

    .line 563
    .end local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v4

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4

    .line 568
    .restart local v2    # "in_buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 569
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->clear()V

    .line 595
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    if-gtz v6, :cond_4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    if-lez v6, :cond_0

    :cond_4
    move v4, v5

    goto/16 :goto_0

    .line 573
    :pswitch_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} unwrap {} {}->{}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v10}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->toDetailString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->toDetailString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 577
    :pswitch_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_3

    .line 578
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    goto :goto_1

    .line 582
    :pswitch_3
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "unwrap CLOSE {} {}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_3

    .line 584
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized wrap(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->extractByteBuffer(Lorg/eclipse/jetty/io/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->compact()V

    .line 451
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 452
    .local v2, "out_buffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 456
    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 458
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 460
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6, v0, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 461
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 462
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "{} wrap {} {} consumed={} produced={}"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    invoke-interface {p1, v6}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 471
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->putIndex()I

    move-result v7

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->setPutIndex(I)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 481
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 486
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 487
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 489
    :try_start_5
    sget-object v6, Lorg/eclipse/jetty/io/nio/SslConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 509
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} wrap default {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 445
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 473
    .restart local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .restart local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljavax/net/ssl/SSLException;
    :try_start_6
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 477
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 481
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 486
    :catchall_2
    move-exception v4

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4

    .line 487
    .end local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    :catchall_3
    move-exception v4

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v4

    .line 492
    .restart local v2    # "out_buffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 498
    :pswitch_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_1

    .line 499
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_handshook:Z

    .line 513
    :cond_1
    :goto_0
    :pswitch_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    if-gtz v6, :cond_2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v6

    if-lez v6, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    monitor-exit p0

    return v4

    .line 503
    :pswitch_3
    :try_start_a
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "wrap CLOSE {} {}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_1

    .line 505
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    return-object v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 183
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->allocateBuffers()V

    .line 185
    const/4 v2, 0x1

    .line 187
    .local v2, "progress":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 189
    const/4 v2, 0x0

    .line 192
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v4, v5, :cond_0

    .line 193
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v2

    .line 196
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 197
    .local v1, "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    if-eq v1, v4, :cond_1

    if-eqz v1, :cond_1

    .line 199
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 200
    const/4 v2, 0x1

    .line 203
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "{} handle {} progress={}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    .end local v1    # "next":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .end local v2    # "progress":Z
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 210
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    iput-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    .line 215
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 223
    :cond_2
    :goto_1
    throw v4

    .line 208
    .restart local v2    # "progress":Z
    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SslConnection;->releaseBuffers()V

    .line 210
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    iput-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z

    .line 215
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/nio/AsyncConnection;->onInputShutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :cond_4
    :goto_2
    return-object p0

    .line 217
    :catch_0
    move-exception v3

    .line 219
    .local v3, "x":Ljava/lang/Throwable;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :try_start_3
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 221
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e2":Ljava/io/IOException;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 217
    .end local v0    # "e2":Ljava/io/IOException;
    .end local v2    # "progress":Z
    .end local v3    # "x":Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    .line 219
    .restart local v3    # "x":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "onInputShutdown failed"

    invoke-interface {v5, v6, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :try_start_4
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 221
    :catch_3
    move-exception v0

    .line 222
    .restart local v0    # "e2":Ljava/io/IOException;
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method protected newSslEndPoint()Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;-><init>(Lorg/eclipse/jetty/io/nio/SslConnection;)V

    return-object v0
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    .line 246
    .local v0, "connection":Lorg/eclipse/jetty/io/Connection;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 247
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->onClose()V

    .line 248
    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 6
    .param p1, "idleForMs"    # J

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "onIdleExpired {}ms on {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->close()V

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 265
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/io/AbstractConnection;->onIdleExpired(J)V

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    return-void
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0
    .param p1, "allowRenegotiate"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_allowRenegotiate:Z

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 616
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SslConnection;->_sslEndPoint:Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
