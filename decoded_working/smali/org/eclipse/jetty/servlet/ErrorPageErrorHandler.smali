.class public Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
.super Lorg/eclipse/jetty/server/handler/ErrorHandler;
.source "ErrorPageErrorHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    }
.end annotation


# static fields
.field public static final GLOBAL_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page.global"


# instance fields
.field private final _errorPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;",
            ">;"
        }
    .end annotation
.end field

.field private final _errorPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public addErrorPage(IILjava/lang/String;)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    new-instance v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;-><init>(Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public addErrorPage(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public addErrorPage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "exception":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public addErrorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionClassName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStart()V

    .line 186
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    .line 187
    return-void
.end method

.method public getErrorPage(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 8
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "error_page":Ljava/lang/String;
    const-string v6, "javax.servlet.error.exception_type"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 59
    .local v3, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljavax/servlet/ServletException;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "error_page":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 62
    .restart local v2    # "error_page":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 64
    const-string v6, "javax.servlet.error.exception"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 65
    .local v5, "th":Ljava/lang/Throwable;
    :goto_0
    instance-of v6, v5, Ljavax/servlet/ServletException;

    if-eqz v6, :cond_0

    .line 66
    check-cast v5, Ljavax/servlet/ServletException;

    .end local v5    # "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    .restart local v5    # "th":Ljava/lang/Throwable;
    goto :goto_0

    .line 67
    :cond_0
    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 72
    .end local v5    # "th":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 74
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "error_page":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 75
    .restart local v2    # "error_page":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 78
    :cond_2
    if-nez v2, :cond_3

    .line 81
    const-string v6, "javax.servlet.error.status_code"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 84
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "error_page":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 87
    .restart local v2    # "error_page":Ljava/lang/String;
    if-nez v2, :cond_3

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 90
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 92
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    .line 93
    .local v1, "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->isInRange(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 95
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 104
    .end local v0    # "code":Ljava/lang/Integer;
    .end local v1    # "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .end local v4    # "i":I
    :cond_3
    if-nez v2, :cond_4

    .line 106
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    const-string v7, "org.eclipse.jetty.server.error_page.global"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "error_page":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 109
    .restart local v2    # "error_page":Ljava/lang/String;
    :cond_4
    return-object v2

    .line 90
    .restart local v0    # "code":Ljava/lang/Integer;
    .restart local v1    # "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .restart local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public getErrorPages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    return-object v0
.end method

.method public setErrorPages(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "errorPages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    :cond_0
    return-void
.end method
