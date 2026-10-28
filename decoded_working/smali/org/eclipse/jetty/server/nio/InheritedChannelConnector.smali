.class public Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "InheritedChannelConnector.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    return-void
.end method


# virtual methods
.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    .line 57
    .local v0, "channel":Ljava/nio/channels/Channel;
    instance-of v2, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_2

    .line 58
    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    .end local v0    # "channel":Ljava/nio/channels/Channel;
    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 62
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v2, :cond_1

    .line 71
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->open()V

    .line 72
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    return-void

    .line 60
    .restart local v0    # "channel":Ljava/nio/channels/Channel;
    :cond_2
    :try_start_2
    sget-object v2, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to use System.inheritedChannel() ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Trying a new ServerSocketChannel at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "channel":Ljava/nio/channels/Channel;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Need at least Java 5 to use socket inherited from xinetd/inetd."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
