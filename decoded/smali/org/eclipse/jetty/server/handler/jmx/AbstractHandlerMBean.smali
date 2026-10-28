.class public Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "AbstractHandlerMBean.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "managedObject"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 99
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 100
    .local v1, "idx":I
    if-gez v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v2

    .line 101
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :cond_0
    const-string v2, "ROOT"

    .line 105
    .end local v1    # "idx":I
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 119
    :cond_2
    :goto_1
    return-object v2

    .line 100
    .restart local v1    # "idx":I
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    .end local v1    # "idx":I
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getObjectContextBasis()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "basis":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    instance-of v4, v4, Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v4, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 69
    .end local v0    # "basis":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "basis":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    instance-of v4, v4, Lorg/eclipse/jetty/server/handler/AbstractHandler;

    if-eqz v4, :cond_2

    .line 54
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v2, Lorg/eclipse/jetty/server/handler/AbstractHandler;

    .line 55
    .local v2, "handler":Lorg/eclipse/jetty/server/handler/AbstractHandler;
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/AbstractHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v3

    .line 56
    .local v3, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v3, :cond_2

    .line 58
    const-class v4, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3, v4, v2}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 62
    .local v1, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .end local v1    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v2    # "handler":Lorg/eclipse/jetty/server/handler/AbstractHandler;
    .end local v3    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_2
    if-nez v0, :cond_0

    .line 69
    .end local v0    # "basis":Ljava/lang/String;
    :cond_3
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectContextBasis()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getObjectNameBasis()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v2, :cond_0

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 82
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/jmx/AbstractHandlerMBean;->getContextName(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :cond_0
    if-eqz v1, :cond_1

    .line 89
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectNameBasis()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
