.class public Lorg/eclipse/jetty/server/handler/HandlerList;
.super Lorg/eclipse/jetty/server/handler/HandlerCollection;
.source "HandlerList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
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
    .line 46
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerList;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 48
    .local v0, "handlers":[Lorg/eclipse/jetty/server/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerList;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 52
    aget-object v2, v0, v1

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 53
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 50
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
