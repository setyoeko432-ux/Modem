.class public abstract Lorg/eclipse/jetty/websocket/WebSocketServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "WebSocketServlet.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;


# instance fields
.field private final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private _webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method


# virtual methods
.method public checkOrigin(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Z
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "origin"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "x":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    const-string v4, "bufferSize"

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "bs":Ljava/lang/String;
    new-instance v5, Lorg/eclipse/jetty/websocket/WebSocketFactory;

    if-nez v0, :cond_4

    const/16 v4, 0x2000

    :goto_0
    invoke-direct {v5, p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;I)V

    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    .line 69
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v4}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->start()V

    .line 71
    const-string v4, "maxIdleTime"

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "max":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 73
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMaxIdleTime(I)V

    .line 75
    :cond_0
    const-string v4, "maxTextMessageSize"

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMaxTextMessageSize(I)V

    .line 79
    :cond_1
    const-string v4, "maxBinaryMessageSize"

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMaxBinaryMessageSize(I)V

    .line 83
    :cond_2
    const-string v4, "minVersion"

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "min":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 85
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMinVersion(I)V

    .line 95
    :cond_3
    return-void

    .line 68
    .end local v1    # "max":Ljava/lang/String;
    .end local v2    # "min":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 87
    .end local v0    # "bs":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "x":Ljavax/servlet/ServletException;
    throw v3

    .line 91
    .end local v3    # "x":Ljavax/servlet/ServletException;
    :catch_1
    move-exception v3

    .line 93
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v3}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->_webSocketFactory:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->acceptWebSocket(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method
