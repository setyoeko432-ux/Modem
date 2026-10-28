.class public Lorg/eclipse/jetty/server/handler/MovedContextHandler;
.super Lorg/eclipse/jetty/server/handler/ContextHandler;
.source "MovedContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/MovedContextHandler$1;,
        Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;
    }
.end annotation


# instance fields
.field _discardPathInfo:Z

.field _discardQuery:Z

.field _expires:Ljava/lang/String;

.field _newContextURL:Ljava/lang/String;

.field _permanent:Z

.field final _redirector:Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 49
    new-instance v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;-><init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;Lorg/eclipse/jetty/server/handler/MovedContextHandler$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_redirector:Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;

    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_redirector:Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->setAllowNullPathInfo(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "newContextURL"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;)V

    .line 57
    iput-object p3, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 58
    new-instance v0, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;-><init>(Lorg/eclipse/jetty/server/handler/MovedContextHandler;Lorg/eclipse/jetty/server/handler/MovedContextHandler$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_redirector:Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_redirector:Lorg/eclipse/jetty/server/handler/MovedContextHandler$Redirector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    return-object v0
.end method

.method public getNewContextURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    return-object v0
.end method

.method public isDiscardPathInfo()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardPathInfo:Z

    return v0
.end method

.method public isDiscardQuery()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardQuery:Z

    return v0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_permanent:Z

    return v0
.end method

.method public setDiscardPathInfo(Z)V
    .locals 0
    .param p1, "discardPathInfo"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardPathInfo:Z

    .line 70
    return-void
.end method

.method public setDiscardQuery(Z)V
    .locals 0
    .param p1, "discardQuery"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_discardQuery:Z

    .line 100
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0
    .param p1, "expires"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_expires:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setNewContextURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "newContextURL"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPermanent(Z)V
    .locals 0
    .param p1, "permanent"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/MovedContextHandler;->_permanent:Z

    .line 90
    return-void
.end method
