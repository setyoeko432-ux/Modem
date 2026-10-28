.class public Ljavax/servlet/http/HttpServletResponseWrapper;
.super Ljavax/servlet/ServletResponseWrapper;
.source "HttpServletResponseWrapper.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljavax/servlet/ServletResponseWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    .line 87
    return-void
.end method

.method private _getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Ljavax/servlet/ServletResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    return-object v0
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 98
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 99
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 188
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getHeaderNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->getHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getStatus()I

    move-result v0

    return v0
.end method

.method public sendError(I)V
    .locals 1
    .param p1, "sc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 165
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 180
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 181
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 228
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 229
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->_getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    .line 242
    return-void
.end method
