.class public Lorg/eclipse/jetty/websocket/WebSocketFactory;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "WebSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _acceptor:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

.field private _buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final _extensionClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private _maxBinaryMessageSize:I

.field private _maxIdleTime:I

.field private _maxTextMessageSize:I

.field private _minVersion:I

.field private final connections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/websocket/WebSocketServletConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;)V
    .locals 2
    .param p1, "acceptor"    # Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    .prologue
    .line 88
    const/high16 v0, 0x10000

    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;I)V
    .locals 1
    .param p1, "acceptor"    # Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;
    .param p2, "bufferSize"    # I

    .prologue
    .line 93
    const/16 v0, 0xd

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;II)V
    .locals 3
    .param p1, "acceptor"    # Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;
    .param p2, "bufferSize"    # I
    .param p3, "minVersion"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->connections:Ljava/util/Queue;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_extensionClasses:Ljava/util/Map;

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_extensionClasses:Ljava/util/Map;

    const-string v1, "identity"

    const-class v2, Lorg/eclipse/jetty/websocket/IdentityExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_extensionClasses:Ljava/util/Map;

    const-string v1, "fragment"

    const-class v2, Lorg/eclipse/jetty/websocket/FragmentExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_extensionClasses:Ljava/util/Map;

    const-string v1, "x-deflate-frame"

    const-class v2, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const v0, 0x493e0

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    .line 82
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxTextMessageSize:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxBinaryMessageSize:I

    .line 98
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 99
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_acceptor:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    .line 100
    const/16 v0, 0xd

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    .line 101
    return-void
.end method

.method private newExtension(Ljava/lang/String;)Lorg/eclipse/jetty/websocket/Extension;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 438
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_extensionClasses:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 439
    .local v1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/websocket/Extension;>;"
    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/websocket/Extension;>;"
    :goto_0
    return-object v2

    .line 442
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketFactory;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptWebSocket(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 12
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 351
    const-string v10, "websocket"

    const-string v11, "Upgrade"

    invoke-interface {p1, v11}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 353
    const-string v10, "Origin"

    invoke-interface {p1, v10}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "origin":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 355
    const-string v10, "Sec-WebSocket-Origin"

    invoke-interface {p1, v10}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 356
    :cond_0
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_acceptor:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    invoke-interface {v10, p1, v4}, Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;->checkOrigin(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 358
    const/16 v10, 0x193

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 400
    .end local v4    # "origin":Ljava/lang/String;
    :cond_1
    :goto_0
    return v9

    .line 363
    .restart local v4    # "origin":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .line 366
    .local v8, "websocket":Lorg/eclipse/jetty/websocket/WebSocket;
    const-string v10, "Sec-WebSocket-Protocol"

    invoke-interface {p1, v10}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v7

    .line 367
    .local v7, "protocols":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 368
    .local v6, "protocol":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 370
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 371
    .local v1, "candidate":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->parseProtocols(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 373
    .local v5, "p":Ljava/lang/String;
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_acceptor:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    invoke-interface {v10, p1, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;->doWebSocketConnect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/eclipse/jetty/websocket/WebSocket;

    move-result-object v8

    .line 374
    if-eqz v8, :cond_4

    .line 376
    move-object v6, v5

    .line 377
    goto :goto_1

    .line 371
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 383
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "candidate":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "p":Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 386
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_acceptor:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    const/4 v11, 0x0

    invoke-interface {v10, p1, v11}, Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;->doWebSocketConnect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/eclipse/jetty/websocket/WebSocket;

    move-result-object v8

    .line 388
    if-nez v8, :cond_6

    .line 390
    const/16 v10, 0x1f7

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 396
    :cond_6
    invoke-virtual {p0, p1, p2, v8, v6}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->upgrade(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/websocket/WebSocket;Ljava/lang/String;)V

    .line 397
    const/4 v9, 0x1

    goto :goto_0
.end method

.method protected addConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/websocket/WebSocketServletConnection;

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->connections:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected closeConnections()V
    .locals 3

    .prologue
    .line 462
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->connections:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;

    .line 463
    .local v0, "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->shutdown()V

    goto :goto_0

    .line 464
    .end local v0    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->closeConnections()V

    .line 206
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getExtensionClassesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_extensionClasses:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxBinaryMessageSize:I

    return v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxTextMessageSize:I

    return v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    return v0
.end method

.method public initExtensions(Ljava/util/List;III)Ljava/util/List;
    .locals 14
    .param p2, "maxDataOpcodes"    # I
    .param p3, "maxControlOpcodes"    # I
    .param p4, "maxReservedBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "requested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 408
    .local v7, "rExt":Ljava/lang/String;
    new-instance v8, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v10, ";"

    invoke-direct {v8, v7, v10}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .local v8, "tok":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "extName":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 411
    .local v6, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 413
    new-instance v5, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "="

    invoke-direct {v5, v10, v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v5, "nv":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "value":Ljava/lang/String;
    :goto_2
    invoke-interface {v6, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 415
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 419
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nv":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_2
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->newExtension(Ljava/lang/String;)Lorg/eclipse/jetty/websocket/Extension;

    move-result-object v1

    .line 421
    .local v1, "extension":Lorg/eclipse/jetty/websocket/Extension;
    if-eqz v1, :cond_0

    .line 424
    invoke-interface {v1, v6}, Lorg/eclipse/jetty/websocket/Extension;->init(Ljava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 426
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketFactory;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "add {} {}"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    .end local v0    # "extName":Ljava/lang/String;
    .end local v1    # "extension":Lorg/eclipse/jetty/websocket/Extension;
    .end local v6    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "rExt":Ljava/lang/String;
    .end local v8    # "tok":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_3
    sget-object v10, Lorg/eclipse/jetty/websocket/WebSocketFactory;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "extensions={}"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    return-object v2
.end method

.method protected parseProtocols(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    if-nez p1, :cond_0

    .line 338
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    .line 345
    :goto_0
    return-object v1

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 340
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 341
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    goto :goto_0

    .line 342
    :cond_2
    const-string v2, "\\s*,\\s*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "passed":[Ljava/lang/String;
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 344
    .local v1, "protocols":[Ljava/lang/String;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected removeConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/websocket/WebSocketServletConnection;

    .prologue
    .line 457
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->connections:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->getBufferSize()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 163
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 164
    :cond_0
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 0
    .param p1, "maxBinaryMessageSize"    # I

    .prologue
    .line 199
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxBinaryMessageSize:I

    .line 200
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 142
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    .line 143
    return-void
.end method

.method public setMaxTextMessageSize(I)V
    .locals 0
    .param p1, "maxTextMessageSize"    # I

    .prologue
    .line 181
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxTextMessageSize:I

    .line 182
    return-void
.end method

.method public setMinVersion(I)V
    .locals 0
    .param p1, "minVersion"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    .line 115
    return-void
.end method

.method public upgrade(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/websocket/WebSocket;Ljava/lang/String;)V
    .locals 21
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "websocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p4, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v4, "websocket"

    const-string v5, "Upgrade"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "!Upgrade:websocket"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 225
    :cond_0
    const-string v4, "HTTP/1.1"

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "!HTTP/1.1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_1
    const-string v4, "Sec-WebSocket-Version"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v13

    .line 229
    .local v13, "draft":I
    if-gez v13, :cond_2

    .line 231
    const-string v4, "Sec-WebSocket-Draft"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v13

    .line 234
    :cond_2
    move/from16 v18, v13

    .line 235
    .local v18, "requestedVersion":I
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v17

    .line 236
    .local v17, "http":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    move-object/from16 v0, v17

    instance-of v4, v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    if-eqz v4, :cond_3

    .line 237
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Websockets not supported on blocking connectors"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/io/ConnectedEndPoint;

    .line 240
    .local v6, "endp":Lorg/eclipse/jetty/io/ConnectedEndPoint;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v16, "extensions_requested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Sec-WebSocket-Extensions"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v14

    .line 243
    .local v14, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    new-instance v19, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v19, "tok":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v19    # "tok":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    if-ge v13, v4, :cond_6

    .line 254
    const v13, 0x7fffffff

    .line 255
    :cond_6
    packed-switch v13, :pswitch_data_0

    .line 290
    :pswitch_0
    const-string v20, "13"

    .line 291
    .local v20, "versions":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    const/16 v5, 0x8

    if-gt v4, v5, :cond_7

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 293
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    const/4 v5, 0x6

    if-gt v4, v5, :cond_8

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 295
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    if-gtz v4, :cond_9

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 298
    :cond_9
    const-string v4, "Sec-WebSocket-Version"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v4, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v15, "err":Ljava/lang/StringBuilder;
    const-string v4, "Unsupported websocket client version specification "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    if-ltz v18, :cond_a

    .line 304
    const-string v4, "["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :goto_1
    const-string v4, ", configured minVersion ["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_minVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v4, ", reported supported versions ["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketFactory;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    new-instance v4, Lorg/eclipse/jetty/http/HttpException;

    const/16 v5, 0x190

    const-string v7, "Unsupported websocket version specification"

    invoke-direct {v4, v5, v7}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 260
    .end local v15    # "err":Ljava/lang/StringBuilder;
    .end local v20    # "versions":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    invoke-direct/range {v3 .. v11}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    .line 316
    .local v3, "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->addConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z

    .line 319
    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxBinaryMessageSize:I

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxBinaryMessageSize(I)V

    .line 320
    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxTextMessageSize:I

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxTextMessageSize(I)V

    .line 323
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-interface {v3, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->handshake(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V

    .line 324
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 327
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V

    .line 328
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser;->getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V

    .line 331
    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketFactory;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Websocket upgrade {} {} {} {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    invoke-interface {v4, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    const-string v4, "org.eclipse.jetty.io.Connection"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    return-void

    .line 270
    .end local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    :pswitch_2
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    invoke-direct/range {v3 .. v11}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    .line 271
    .restart local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    goto :goto_2

    .line 276
    .end local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    :pswitch_3
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v5, v7}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->initExtensions(Ljava/util/List;III)Ljava/util/List;

    move-result-object v12

    .line 277
    .local v12, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD08;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    invoke-direct/range {v3 .. v13}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V

    .line 278
    .restart local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    goto/16 :goto_2

    .line 282
    .end local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    .end local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    :pswitch_4
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v5, v7}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->initExtensions(Ljava/util/List;III)Ljava/util/List;

    move-result-object v12

    .line 283
    .restart local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_buffers:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->_maxIdleTime:I

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    invoke-direct/range {v3 .. v13}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V

    .line 284
    .restart local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    goto/16 :goto_2

    .line 306
    .end local v3    # "connection":Lorg/eclipse/jetty/websocket/WebSocketServletConnection;
    .end local v12    # "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    .restart local v15    # "err":Ljava/lang/StringBuilder;
    .restart local v20    # "versions":Ljava/lang/String;
    :cond_a
    const-string v4, "<Unspecified, likely a pre-draft version of websocket>"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
