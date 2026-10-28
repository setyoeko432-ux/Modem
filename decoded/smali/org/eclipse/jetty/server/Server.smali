.class public Lorg/eclipse/jetty/server/Server;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "Server.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Server$Graceful;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __version:Ljava/lang/String;


# instance fields
.field private final _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _connectors:[Lorg/eclipse/jetty/server/Connector;

.field private final _container:Lorg/eclipse/jetty/util/component/Container;

.field private _dumpAfterStart:Z

.field private _dumpBeforeStop:Z

.field private _graceful:I

.field private _sendDateHeader:Z

.field private _sendServerVersion:Z

.field private _sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

.field private _stopAtShutdown:Z

.field private _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _uncheckedPrintWriter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 65
    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Eclipse.org - Jetty"

    const-class v1, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "jetty.version"

    const-string v1, "8.y.z-SNAPSHOT"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/component/Container;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/component/Container;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 74
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 79
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 80
    iput v1, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 82
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 83
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 84
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 90
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/Server;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "port"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 73
    new-instance v1, Lorg/eclipse/jetty/util/component/Container;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/component/Container;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 74
    new-instance v1, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 78
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 79
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 80
    iput v2, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 82
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 83
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 84
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 99
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/Server;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 101
    new-instance v0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 102
    .local v0, "connector":Lorg/eclipse/jetty/server/Connector;
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->setPort(I)V

    .line 103
    new-array v1, v3, [Lorg/eclipse/jetty/server/Connector;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 4
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 73
    new-instance v1, Lorg/eclipse/jetty/util/component/Container;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/component/Container;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 74
    new-instance v1, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 78
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 79
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 80
    iput v2, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 82
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 83
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 84
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 112
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/Server;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 114
    new-instance v0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 115
    .local v0, "connector":Lorg/eclipse/jetty/server/Connector;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/Connector;->setHost(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/Connector;->setPort(I)V

    .line 117
    new-array v1, v3, [Lorg/eclipse/jetty/server/Connector;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 118
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 660
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Lorg/eclipse/jetty/server/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 661
    return-void
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 515
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->addBean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addConnector(Lorg/eclipse/jetty/server/Connector;)V
    .locals 2
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/server/Connector;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Connector;

    check-cast v0, [Lorg/eclipse/jetty/server/Connector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 175
    return-void
.end method

.method public addLifeCycle(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .param p1, "c"    # Lorg/eclipse/jetty/util/component/LifeCycle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Server;->addBean(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 556
    return-void
.end method

.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 265
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getStopAtShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/eclipse/jetty/util/component/LifeCycle;

    aput-object p0, v3, v6

    invoke-static {v3}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->register([Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 270
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/ShutdownMonitor;->getInstance()Lorg/eclipse/jetty/server/ShutdownMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->start()V

    .line 272
    sget-object v3, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jetty-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    sget-object v3, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpGenerator;->setServerVersion(Ljava/lang/String;)V

    .line 275
    new-instance v2, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 277
    .local v2, "mex":Lorg/eclipse/jetty/util/MultiException;
    iget-object v3, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v3, :cond_1

    .line 278
    new-instance v3, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/server/Server;->setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V

    .line 282
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 293
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .line 296
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 301
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->isDumpAfterStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->dumpStdErr()V

    .line 304
    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 305
    return-void
.end method

.method protected doStop()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 311
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->isDumpBeforeStop()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->dumpStdErr()V

    .line 314
    :cond_0
    new-instance v6, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v6}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 316
    .local v6, "mex":Lorg/eclipse/jetty/util/MultiException;
    iget v7, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    if-lez v7, :cond_3

    .line 318
    iget-object v7, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    if-eqz v7, :cond_1

    .line 320
    iget-object v7, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    array-length v4, v7

    .local v4, "i":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-lez v5, :cond_1

    .line 322
    sget-object v7, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Graceful shutdown {}"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v10, v10, v4

    aput-object v10, v9, v12

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lorg/eclipse/jetty/server/Connector;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 327
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "i":I
    :cond_1
    const-class v7, Lorg/eclipse/jetty/server/Server$Graceful;

    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 328
    .local v2, "contexts":[Lorg/eclipse/jetty/server/Handler;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_2

    .line 330
    aget-object v1, v2, v0

    check-cast v1, Lorg/eclipse/jetty/server/Server$Graceful;

    .line 331
    .local v1, "context":Lorg/eclipse/jetty/server/Server$Graceful;
    sget-object v7, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Graceful shutdown {}"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v12

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-interface {v1, v11}, Lorg/eclipse/jetty/server/Server$Graceful;->setShutdown(Z)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v1    # "context":Lorg/eclipse/jetty/server/Server$Graceful;
    :cond_2
    iget v7, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 337
    .end local v0    # "c":I
    .end local v2    # "contexts":[Lorg/eclipse/jetty/server/Handler;
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    if-eqz v7, :cond_4

    .line 339
    iget-object v7, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    array-length v4, v7

    .restart local v4    # "i":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_2
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-lez v5, :cond_4

    .line 340
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lorg/eclipse/jetty/server/Connector;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 343
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "i":I
    :cond_4
    :try_start_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    :goto_3
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 347
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getStopAtShutdown()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 348
    invoke-static {p0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 349
    :cond_5
    return-void

    .line 343
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Server;->dumpThis(Ljava/lang/Appendable;)V

    .line 630
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/Server;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 631
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectors()[Lorg/eclipse/jetty/server/Connector;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    return-object v0
.end method

.method public getContainer()Lorg/eclipse/jetty/util/component/Container;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    return-object v0
.end method

.method public getGracefulShutdown()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    return v0
.end method

.method public getMaxCookieVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public getSendDateHeader()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    return v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    return v0
.end method

.method public getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    return-object v0
.end method

.method public getStopAtShutdown()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_stopAtShutdown:Z

    return v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public handle(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "target":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 361
    .local v0, "request":Lorg/eclipse/jetty/server/Request;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    .line 363
    .local v1, "response":Lorg/eclipse/jetty/server/Response;
    sget-object v3, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    sget-object v3, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p0, v2, v0, v0, v1}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 367
    sget-object v3, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESPONSE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0, v2, v0, v0, v1}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public handleAsync(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 13
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 381
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    .line 382
    .local v0, "async":Lorg/eclipse/jetty/server/AsyncContinuation;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    move-result-object v6

    .line 384
    .local v6, "state":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    .line 385
    .local v1, "baseRequest":Lorg/eclipse/jetty/server/Request;
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v9

    invoke-interface {v9}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "contextPath":Ljava/lang/String;
    new-instance v8, Lorg/eclipse/jetty/http/HttpURI;

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 392
    .local v8, "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-virtual {v1, v8}, Lorg/eclipse/jetty/server/Request;->setUri(Lorg/eclipse/jetty/http/HttpURI;)V

    .line 393
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 396
    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/server/Request;->mergeQueryString(Ljava/lang/String;)V

    .line 399
    .end local v2    # "contextPath":Ljava/lang/String;
    .end local v8    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "target":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v4

    check-cast v4, Ljavax/servlet/http/HttpServletRequest;

    .line 401
    .local v4, "request":Ljavax/servlet/http/HttpServletRequest;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v5

    check-cast v5, Ljavax/servlet/http/HttpServletResponse;

    .line 403
    .local v5, "response":Ljavax/servlet/http/HttpServletResponse;
    sget-object v9, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 405
    sget-object v9, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REQUEST "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p0, v7, v1, v4, v5}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 407
    sget-object v9, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RESPONSE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0, v7, v1, v4, v5}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public isDumpAfterStart()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    return v0
.end method

.method public isDumpBeforeStop()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    return v0
.end method

.method public isUncheckedPrintWriter()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    return v0
.end method

.method public join()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->join()V

    .line 419
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public removeBean(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 541
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->removeBean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 544
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeConnector(Lorg/eclipse/jetty/server/Connector;)V
    .locals 1
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Connector;

    check-cast v0, [Lorg/eclipse/jetty/server/Connector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 185
    return-void
.end method

.method public removeLifeCycle(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .param p1, "c"    # Lorg/eclipse/jetty/util/component/LifeCycle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Server;->removeBean(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 591
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    return-void
.end method

.method public setConnectors([Lorg/eclipse/jetty/server/Connector;)V
    .locals 4
    .param p1, "connectors"    # [Lorg/eclipse/jetty/server/Connector;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 197
    aget-object v1, p1, v0

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/server/Connector;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    const-string v3, "connector"

    invoke-virtual {v1, p0, v2, p1, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    .line 202
    return-void
.end method

.method public setDumpAfterStart(Z)V
    .locals 0
    .param p1, "dumpAfterStart"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 241
    return-void
.end method

.method public setDumpBeforeStop(Z)V
    .locals 0
    .param p1, "dumpBeforeStop"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 257
    return-void
.end method

.method public setGracefulShutdown(I)V
    .locals 0
    .param p1, "timeoutMS"    # I

    .prologue
    .line 615
    iput p1, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 616
    return-void
.end method

.method public setMaxCookieVersion(I)V
    .locals 0
    .param p1, "maxCookieVersion"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method public setSendDateHeader(Z)V
    .locals 0
    .param p1, "sendDateHeader"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 465
    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0
    .param p1, "sendServerVersion"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 450
    return-void
.end method

.method public setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V
    .locals 6
    .param p1, "sessionIdManager"    # Lorg/eclipse/jetty/server/SessionIdManager;

    .prologue
    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->removeBean(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    const-string v4, "sessionIdManager"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 441
    iput-object p1, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    .line 442
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->addBean(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    return-void
.end method

.method public setStopAtShutdown(Z)V
    .locals 2
    .param p1, "stop"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_1

    .line 149
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_stopAtShutdown:Z

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/util/component/LifeCycle;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->register([Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 159
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_stopAtShutdown:Z

    .line 160
    return-void

    .line 157
    :cond_1
    invoke-static {p0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 6
    .param p1, "threadPool"    # Lorg/eclipse/jetty/util/thread/ThreadPool;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->removeBean(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    const-string v4, "threadpool"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 222
    iput-object p1, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->addBean(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    return-void
.end method

.method public setUncheckedPrintWriter(Z)V
    .locals 0
    .param p1, "unchecked"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 644
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
