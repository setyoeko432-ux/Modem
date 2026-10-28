.class public Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;
.super Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;
.source "AbstractSessionManagerMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "managedObject"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;-><init>(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getObjectContextBasis()Ljava/lang/String;
    .locals 6

    .prologue
    .line 37
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->_managed:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->_managed:Ljava/lang/Object;

    instance-of v4, v4, Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    if-eqz v4, :cond_1

    .line 39
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->_managed:Ljava/lang/Object;

    check-cast v3, Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 41
    .local v3, "manager":Lorg/eclipse/jetty/server/session/AbstractSessionManager;
    const/4 v0, 0x0

    .line 42
    .local v0, "basis":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v2

    .line 43
    .local v2, "handler":Lorg/eclipse/jetty/server/session/SessionHandler;
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    const-class v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4, v5, v2}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 49
    .local v1, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/jmx/AbstractSessionManagerMBean;->getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .end local v1    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    .end local v0    # "basis":Ljava/lang/String;
    .end local v2    # "handler":Lorg/eclipse/jetty/server/session/SessionHandler;
    .end local v3    # "manager":Lorg/eclipse/jetty/server/session/AbstractSessionManager;
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->getObjectContextBasis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
