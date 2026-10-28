.class public Lorg/eclipse/jetty/server/handler/HandlerCollection;
.super Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.source "HandlerCollection.java"


# instance fields
.field private volatile _handlers:[Lorg/eclipse/jetty/server/Handler;

.field private final _mutableWhenRunning:Z

.field private _parallelStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 49
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_mutableWhenRunning:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "mutableWhenRunning"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    .line 60
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_mutableWhenRunning:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/HandlerCollection;)[Lorg/eclipse/jetty/server/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method


# virtual methods
.method public addHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 2
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/server/Handler;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    check-cast v0, [Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 283
    return-void
.end method

.method public destroy()V
    .locals 7

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStopped()Z

    move-result v5

    if-nez v5, :cond_0

    .line 309
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "!STOPPED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 310
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getChildHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 311
    .local v2, "children":[Lorg/eclipse/jetty/server/Handler;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 312
    move-object v0, v2

    .local v0, "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 313
    .local v1, "child":Lorg/eclipse/jetty/server/Handler;
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "child":Lorg/eclipse/jetty/server/Handler;
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->destroy()V

    .line 315
    return-void
.end method

.method protected doStart()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v4, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 190
    .local v4, "mex":Lorg/eclipse/jetty/util/MultiException;
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_1

    .line 192
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    if-eqz v0, :cond_2

    .line 194
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 195
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 196
    .local v2, "loader":Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 198
    move v3, v7

    .line 199
    .local v3, "h":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v8

    new-instance v0, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/HandlerCollection$1;-><init>(Lorg/eclipse/jetty/server/handler/HandlerCollection;Ljava/lang/ClassLoader;ILorg/eclipse/jetty/util/MultiException;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "h":I
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 234
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v7    # "i":I
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStart()V

    .line 235
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 236
    return-void

    .line 227
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    aget-object v0, v0, v7

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 230
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected doStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 246
    .local v3, "mex":Lorg/eclipse/jetty/util/MultiException;
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 250
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lorg/eclipse/jetty/server/Handler;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 246
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 253
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 299
    .local v0, "handlers":[Lorg/eclipse/jetty/server/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 300
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p1, p2}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object p1
.end method

.method public getHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
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
    .line 146
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    const/4 v2, 0x0

    .line 150
    .local v2, "mex":Lorg/eclipse/jetty/util/MultiException;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 154
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 164
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_0

    .line 167
    new-instance v2, Lorg/eclipse/jetty/util/MultiException;

    .end local v2    # "mex":Lorg/eclipse/jetty/util/MultiException;
    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 168
    .restart local v2    # "mex":Lorg/eclipse/jetty/util/MultiException;
    :cond_0
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 174
    new-instance v3, Ljavax/servlet/ServletException;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/util/MultiException;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 176
    :cond_2
    new-instance v3, Ljavax/servlet/ServletException;

    invoke-direct {v3, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 180
    .end local v1    # "i":I
    .end local v2    # "mex":Lorg/eclipse/jetty/util/MultiException;
    :cond_3
    return-void
.end method

.method public isParallelStart()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    return v0
.end method

.method public removeHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 2
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 290
    .local v0, "handlers":[Lorg/eclipse/jetty/server/Handler;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 291
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/server/Handler;

    check-cast v1, [Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setHandlers([Lorg/eclipse/jetty/server/Handler;)V
    .locals 7
    .param p1, "handlers"    # [Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 79
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_mutableWhenRunning:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "STARTED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    if-nez v5, :cond_2

    const/4 v3, 0x0

    .line 83
    .local v3, "old_handlers":[Lorg/eclipse/jetty/server/Handler;
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    .line 85
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    .line 86
    .local v4, "server":Lorg/eclipse/jetty/server/Server;
    new-instance v2, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 87
    .local v2, "mex":Lorg/eclipse/jetty/util/MultiException;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eqz p1, :cond_3

    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 89
    aget-object v5, p1, v1

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Handler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v5

    if-eq v5, v4, :cond_1

    .line 90
    aget-object v5, p1, v1

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    .end local v1    # "i":I
    .end local v2    # "mex":Lorg/eclipse/jetty/util/MultiException;
    .end local v3    # "old_handlers":[Lorg/eclipse/jetty/server/Handler;
    .end local v4    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {v5}, [Lorg/eclipse/jetty/server/Handler;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/eclipse/jetty/server/Handler;

    move-object v3, v5

    goto :goto_0

    .line 93
    .restart local v1    # "i":I
    .restart local v2    # "mex":Lorg/eclipse/jetty/util/MultiException;
    .restart local v3    # "old_handlers":[Lorg/eclipse/jetty/server/Handler;
    .restart local v4    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v5

    const-string v6, "handler"

    invoke-virtual {v5, p0, v3, p1, v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_6

    array-length v5, v3

    if-ge v1, v5, :cond_6

    .line 99
    aget-object v5, v3, v1

    if-eqz v5, :cond_5

    .line 103
    :try_start_0
    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Handler;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 104
    aget-object v5, v3, v1

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Handler;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowRuntime()V

    .line 114
    return-void
.end method

.method public setParallelStart(Z)V
    .locals 0
    .param p1, "parallelStart"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_parallelStart:Z

    .line 136
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 7
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "STARTED"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    .line 264
    .local v2, "old_server":Lorg/eclipse/jetty/server/Server;
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 266
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 267
    .local v0, "h":[Lorg/eclipse/jetty/server/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_1

    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 268
    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_2

    .line 271
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/HandlerCollection;->_handlers:[Lorg/eclipse/jetty/server/Handler;

    const-string v6, "handler"

    invoke-virtual {v3, p0, v4, v5, v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_2
    return-void
.end method
