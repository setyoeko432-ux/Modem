.class public Ljavax/servlet/ServletRequestWrapper;
.super Ljava/lang/Object;
.source "ServletRequestWrapper.java"

# interfaces
.implements Ljavax/servlet/ServletRequest;


# instance fields
.field private request:Ljavax/servlet/ServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletRequest;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    .line 92
    return-void
.end method


# virtual methods
.method public getAsyncContext()Ljavax/servlet/AsyncContext;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispatcherType()Ljavax/servlet/DispatcherType;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getLocales()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getReader()Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getServerPort()I

    move-result v0

    return v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public isAsyncStarted()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->isAsyncStarted()Z

    move-result v0

    return v0
.end method

.method public isAsyncSupported()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->isAsyncSupported()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 3
    .param p1, "wrappedType"    # Ljava/lang/Class;

    .prologue
    .line 550
    const-class v0, Ljavax/servlet/ServletRequest;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a subinterface of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljavax/servlet/ServletRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    .line 557
    :cond_1
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    instance-of v0, v0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    check-cast v0, Ljavax/servlet/ServletRequestWrapper;

    invoke-virtual {v0, p1}, Ljavax/servlet/ServletRequestWrapper;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrapperFor(Ljavax/servlet/ServletRequest;)Z
    .locals 1
    .param p1, "wrapped"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 524
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    if-ne v0, p1, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    instance-of v0, v0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    check-cast v0, Ljavax/servlet/ServletRequestWrapper;

    invoke-virtual {v0, p1}, Ljavax/servlet/ServletRequestWrapper;->isWrapperFor(Ljavax/servlet/ServletRequest;)Z

    move-result v0

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 283
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setRequest(Ljavax/servlet/ServletRequest;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    .line 112
    return-void
.end method

.method public startAsync()Ljavax/servlet/AsyncContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0}, Ljavax/servlet/ServletRequest;->startAsync()Ljavax/servlet/AsyncContext;

    move-result-object v0

    return-object v0
.end method

.method public startAsync(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljavax/servlet/AsyncContext;
    .locals 1
    .param p1, "servletRequest"    # Ljavax/servlet/ServletRequest;
    .param p2, "servletResponse"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Ljavax/servlet/ServletRequestWrapper;->request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->startAsync(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljavax/servlet/AsyncContext;

    move-result-object v0

    return-object v0
.end method
