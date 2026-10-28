.class Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "MovedContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/MovedContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Redirector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;Lorg/eclipse/jetty/server/handler/MovedContextHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/server/handler/MovedContextHandler;
    .param p2, "x1"    # Lorg/eclipse/jetty/server/handler/MovedContextHandler$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;-><init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;)V

    return-void
.end method


# virtual methods
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
    .line 106
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v3, v3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v1, v3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 110
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v3, v3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardPathInfo:Z

    if-nez v3, :cond_1

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_1
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "location":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v3, v3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardQuery:Z

    if-nez v3, :cond_2

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 118
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "q":Ljava/lang/String;
    const-string v3, "\r\n?&="

    const-string v4, "!"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .end local v2    # "q":Ljava/lang/String;
    :cond_2
    const-string v3, "Location"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v3, v3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 127
    const-string v3, "Expires"

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    invoke-interface {p4, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;->this$0:Lorg/eclipse/jetty/server/handler/MovedContextHandler;

    iget-boolean v3, v3, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_permanent:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x12d

    :goto_2
    invoke-interface {p4, v3}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 130
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 131
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 113
    .end local v0    # "location":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 129
    .restart local v0    # "location":Ljava/lang/StringBuilder;
    :cond_5
    const/16 v3, 0x12e

    goto :goto_2
.end method
