.class public Ljavax/servlet/http/HttpServletRequestWrapper;
.super Ljavax/servlet/ServletRequestWrapper;
.source "HttpServletRequestWrapper.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljavax/servlet/ServletRequestWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    .line 87
    return-void
.end method

.method private _getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method


# virtual methods
.method public authenticate(Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 1
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->authenticate(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v0

    return v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
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
    .line 140
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;

    move-result-object v0

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParts()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "create"    # Z

    .prologue
    .line 259
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromCookie()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromUrl()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdValid()Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->isUserInRole(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletRequest;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public logout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->_getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->logout()V

    .line 339
    return-void
.end method
