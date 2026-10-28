.class public Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.source "NetworkTrafficSelectChannelEndPoint.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/io/NetworkTrafficListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;ILjava/util/List;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .param p4, "maxIdleTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;",
            "Ljava/nio/channels/SelectionKey;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/io/NetworkTrafficListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    .local p5, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/io/NetworkTrafficListener;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 41
    iput-object p5, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 48
    .local v0, "read":I
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyIncoming(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 49
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 56
    .local v0, "position":I
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 57
    .local v1, "written":I
    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V

    .line 58
    return v1
.end method

.method protected gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "header"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "bbuf0"    # Ljava/nio/ByteBuffer;
    .param p3, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p4, "bbuf1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 65
    .local v2, "headerPosition":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 66
    .local v1, "headerLength":I
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 67
    .local v0, "bufferPosition":I
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 68
    .local v3, "written":I
    if-le v3, v1, :cond_0

    move v4, v1

    :goto_0
    invoke-virtual {p0, p1, v2, v4}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V

    .line 69
    if-le v3, v1, :cond_1

    sub-int v4, v3, v1

    :goto_1
    invoke-virtual {p0, p3, v0, v4}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V

    .line 70
    return v3

    :cond_0
    move v4, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public notifyClosed()V
    .locals 4

    .prologue
    .line 133
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 139
    .local v1, "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->closed(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 143
    .local v2, "x":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public notifyIncoming(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 5
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "read"    # I

    .prologue
    .line 93
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-lez p2, :cond_0

    .line 95
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 99
    .local v1, "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asReadOnlyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 100
    .local v2, "view":Lorg/eclipse/jetty/io/Buffer;
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v4, v2}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->incoming(Ljava/net/Socket;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v2    # "view":Lorg/eclipse/jetty/io/Buffer;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "x":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public notifyOpened()V
    .locals 4

    .prologue
    .line 75
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 81
    .local v1, "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->opened(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 85
    .local v2, "x":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public notifyOutgoing(Lorg/eclipse/jetty/io/Buffer;II)V
    .locals 5
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "position"    # I
    .param p3, "written"    # I

    .prologue
    .line 112
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-lez p3, :cond_0

    .line 114
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .line 118
    .local v1, "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asReadOnlyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 119
    .local v2, "view":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v2, p2}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 120
    add-int v4, p2, p3

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 121
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-interface {v1, v4, v2}, Lorg/eclipse/jetty/io/NetworkTrafficListener;->outgoing(Ljava/net/Socket;Lorg/eclipse/jetty/io/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v2    # "view":Lorg/eclipse/jetty/io/Buffer;
    :catch_0
    move-exception v3

    .line 125
    .local v3, "x":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/eclipse/jetty/io/NetworkTrafficListener;
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
