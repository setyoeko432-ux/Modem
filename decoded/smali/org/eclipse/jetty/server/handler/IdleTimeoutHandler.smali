.class public Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "IdleTimeoutHandler.java"


# instance fields
.field private _applyToAsync:Z

.field private _idleTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_idleTimeoutMs:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_applyToAsync:Z

    return-void
.end method


# virtual methods
.method public getIdleTimeoutMs()J
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_idleTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
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
    .line 84
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 85
    .local v0, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 88
    .local v1, "endp":Lorg/eclipse/jetty/io/EndPoint;
    :goto_0
    if-nez v1, :cond_2

    .line 89
    const/4 v2, -0x1

    .line 98
    .local v2, "idle_timeout":I
    :goto_1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v1, :cond_0

    .line 104
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_applyToAsync:Z

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;

    invoke-direct {v4, p0, v1, v2}, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;Lorg/eclipse/jetty/io/EndPoint;I)V

    invoke-interface {v3, v4}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    .line 137
    :cond_0
    :goto_2
    return-void

    .line 85
    .end local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    .end local v2    # "idle_timeout":I
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    goto :goto_0

    .line 92
    .restart local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :cond_2
    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v2

    .line 93
    .restart local v2    # "idle_timeout":I
    iget v3, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_idleTimeoutMs:I

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    goto :goto_1

    .line 133
    :cond_3
    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 104
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_applyToAsync:Z

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;

    invoke-direct {v5, p0, v1, v2}, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;Lorg/eclipse/jetty/io/EndPoint;I)V

    invoke-interface {v4, v5}, Ljavax/servlet/AsyncContext;->addListener(Ljavax/servlet/AsyncListener;)V

    .line 133
    :cond_4
    :goto_3
    throw v3

    :cond_5
    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    goto :goto_3
.end method

.method public isApplyToAsync()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_applyToAsync:Z

    return v0
.end method

.method public setApplyToAsync(Z)V
    .locals 0
    .param p1, "applyToAsync"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_applyToAsync:Z

    .line 65
    return-void
.end method

.method public setIdleTimeoutMs(I)V
    .locals 0
    .param p1, "_idleTimeoutMs"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->_idleTimeoutMs:I

    .line 78
    return-void
.end method
