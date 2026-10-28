.class final Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "SelectChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectorSelectorManager"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/server/nio/SelectChannelConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
    .param p2, "x1"    # Lorg/eclipse/jetty/server/nio/SelectChannelConnector$1;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;-><init>(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;)V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    .line 298
    .local v0, "pool":Lorg/eclipse/jetty/util/thread/ThreadPool;
    if-nez v0, :cond_0

    .line 299
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    .line 300
    :cond_0
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 307
    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->access$100(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 314
    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 2
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/ConnectedEndPoint;
    .param p2, "oldConnection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/ConnectedEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->access$200(Lorg/eclipse/jetty/server/nio/SelectChannelConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    .line 320
    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 325
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    return-object v0
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "sKey"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector$ConnectorSelectorManager;->this$0:Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    move-result-object v0

    return-object v0
.end method
