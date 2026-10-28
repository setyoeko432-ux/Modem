.class public Lorg/eclipse/jetty/server/handler/RequestLogHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "RequestLogHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/RequestLogHandler$NullRequestLog;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _requestLog:Lorg/eclipse/jetty/server/RequestLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/RequestLogHandler;)Lorg/eclipse/jetty/server/RequestLog;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/RequestLogHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    return-object v0
.end method


# virtual methods
.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "!RequestLog"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$NullRequestLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/handler/RequestLogHandler$NullRequestLog;-><init>(Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    .line 165
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->start()V

    .line 167
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->stop()V

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    instance-of v0, v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler$NullRequestLog;

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    .line 180
    :cond_0
    return-void
.end method

.method public getRequestLog()Lorg/eclipse/jetty/server/RequestLog;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
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
    .line 60
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    .line 61
    .local v0, "continuation":Lorg/eclipse/jetty/server/AsyncContinuation;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jetty/server/Request;->setDispatchTime(J)V

    .line 68
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v1

    sget-object v2, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v1, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v1, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;

    invoke-direct {v1, p0, p2, p4}, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/RequestLogHandler;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 95
    .end local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_1
    :goto_0
    return-void

    .line 92
    .restart local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    check-cast p4, Lorg/eclipse/jetty/server/Response;

    .end local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v1, p2, p4}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    goto :goto_0

    .line 72
    .restart local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v2

    sget-object v3, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v2, v3}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    new-instance v2, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;

    invoke-direct {v2, p0, p2, p4}, Lorg/eclipse/jetty/server/handler/RequestLogHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/RequestLogHandler;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 92
    .end local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_3
    :goto_1
    throw v1

    .restart local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    check-cast p4, Lorg/eclipse/jetty/server/Response;

    .end local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v2, p2, p4}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    goto :goto_1
.end method

.method public setRequestLog(Lorg/eclipse/jetty/server/RequestLog;)V
    .locals 7
    .param p1, "requestLog"    # Lorg/eclipse/jetty/server/RequestLog;

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v4, "logimpl"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 114
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :cond_2
    return-void

    .line 106
    :catch_0
    move-exception v6

    .line 108
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 124
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 12
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v4, "logimpl"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 140
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v10, "logimpl"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0
.end method
