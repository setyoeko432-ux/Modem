.class Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;
.super Ljava/lang/Object;
.source "BlockingChannelConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 91
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const-wide/16 v5, 0x190

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    .local v3, "now":J
    iget-object v5, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;->this$0:Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;

    .line 99
    .local v1, "endp":Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;
    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->checkIdleTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 102
    .end local v1    # "endp":Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "now":J
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
