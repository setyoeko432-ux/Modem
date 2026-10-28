.class public Lorg/eclipse/jetty/server/handler/HotSwapHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.source "HotSwapHandler.java"


# instance fields
.field private volatile _handler:Lorg/eclipse/jetty/server/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "!STOPPED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 169
    .local v0, "child":Lorg/eclipse/jetty/server/Handler;
    if-eqz v0, :cond_1

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 172
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 174
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->destroy()V

    .line 175
    return-void
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStart()V

    .line 108
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
    .line 117
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStop()V

    .line 118
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public getHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/server/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 5
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter handler is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 79
    .local v1, "old_handler":Lorg/eclipse/jetty/server/Handler;
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 80
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    .line 81
    .local v2, "server":Lorg/eclipse/jetty/server/Server;
    invoke-interface {p1, v2}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->addBean(Ljava/lang/Object;)Z

    .line 84
    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v3

    const-string v4, "handler"

    invoke-virtual {v3, p0, v1, p1, v4}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :cond_1
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->removeBean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_2
    return-void

    .line 94
    .end local v1    # "old_handler":Lorg/eclipse/jetty/server/Handler;
    .end local v2    # "server":Lorg/eclipse/jetty/server/Server;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 6
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    .line 137
    .local v1, "old_server":Lorg/eclipse/jetty/server/Server;
    if-ne p1, v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RUNNING"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 146
    .local v0, "h":Lorg/eclipse/jetty/server/Handler;
    if-eqz v0, :cond_3

    .line 147
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 149
    :cond_3
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    const-string v5, "handler"

    invoke-virtual {v2, p0, v3, v4, v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
