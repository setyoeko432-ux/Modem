.class public Lorg/eclipse/jetty/server/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Response$NullOutput;
    }
.end annotation


# static fields
.field public static final HTTP_ONLY_COMMENT:Ljava/lang/String; = "__HTTP_ONLY__"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NONE:I = 0x0

.field public static final SET_INCLUDE_HEADER_PREFIX:Ljava/lang/String; = "org.eclipse.jetty.server.include."

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2


# instance fields
.field private _cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private _characterEncoding:Ljava/lang/String;

.field private final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _contentType:Ljava/lang/String;

.field private _explicitEncoding:Z

.field private _locale:Ljava/util/Locale;

.field private _mimeType:Ljava/lang/String;

.field private volatile _outputState:I

.field private _reason:Ljava/lang/String;

.field private _status:I

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/eclipse/jetty/server/Response;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 113
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 114
    return-void
.end method

.method public static getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;
    .locals 1
    .param p0, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 89
    instance-of v0, p0, Lorg/eclipse/jetty/server/Response;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lorg/eclipse/jetty/server/Response;

    .line 92
    .end local p0    # "response":Ljavax/servlet/http/HttpServletResponse;
    :goto_0
    return-object p0

    .restart local p0    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 13
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 150
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "comment":Ljava/lang/String;
    const/4 v11, 0x0

    .line 153
    .local v11, "http_only":Z
    if-eqz v7, :cond_0

    .line 155
    const-string v0, "__HTTP_ONLY__"

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 156
    .local v12, "i":I
    if-ltz v12, :cond_0

    .line 158
    const/4 v11, 0x1

    .line 159
    const-string v0, "__HTTP_ONLY__"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v7, 0x0

    .line 164
    .end local v12    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getMaxAge()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getSecure()Z

    move-result v8

    if-nez v11, :cond_1

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->isHttpOnly()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getVersion()I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 173
    return-void

    .line 164
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1
    .param p1, "cookie"    # Lorg/eclipse/jetty/http/HttpCookie;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 142
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 520
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->addDateField(Ljava/lang/String;J)V

    .line 522
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 595
    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 604
    :cond_1
    :goto_0
    return-void

    .line 601
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->addLongField(Ljava/lang/String;J)V

    .line 629
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 632
    :cond_0
    return-void
.end method

.method public complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->completeResponse()V

    .line 1253
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 190
    iget-object v10, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    .line 191
    .local v4, "request":Lorg/eclipse/jetty/server/Request;
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v6

    .line 192
    .local v6, "sessionManager":Lorg/eclipse/jetty/server/SessionManager;
    if-nez v6, :cond_1

    .line 277
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 195
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 196
    .local v9, "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->isCheckingRemoteSessionIdEncoding()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 198
    new-instance v9, Lorg/eclipse/jetty/http/HttpURI;

    .end local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-direct {v9, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, ""

    .line 201
    :cond_2
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v2

    .line 202
    .local v2, "port":I
    if-gez v2, :cond_3

    .line 203
    const-string v10, "https"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v2, 0x1bb

    .line 204
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v10

    if-ne v10, v2, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 210
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "port":I
    :cond_4
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "sessionURLPrefix":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 214
    if-nez p1, :cond_6

    .line 215
    const/4 p1, 0x0

    goto :goto_0

    .line 203
    .end local v7    # "sessionURLPrefix":Ljava/lang/String;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "port":I
    :cond_5
    const/16 v2, 0x50

    goto :goto_1

    .line 218
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "port":I
    .restart local v7    # "sessionURLPrefix":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->isUsingCookies()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->isRequestedSessionIdFromCookie()Z

    move-result v10

    if-nez v10, :cond_8

    :cond_7
    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionManager;->isUsingURLs()Z

    move-result v10

    if-nez v10, :cond_b

    .line 220
    :cond_8
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 221
    .local v3, "prefix":I
    if-eq v3, v13, :cond_0

    .line 223
    const-string v10, "?"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 224
    .local v8, "suffix":I
    if-gez v8, :cond_9

    .line 225
    const-string v10, "#"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 227
    :cond_9
    if-gt v8, v3, :cond_a

    .line 228
    invoke-virtual {p1, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 229
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 235
    .end local v3    # "prefix":I
    .end local v8    # "suffix":I
    :cond_b
    invoke-virtual {v4, v12}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 238
    .local v5, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v5, :cond_0

    .line 242
    invoke-interface {v6, v5}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 245
    invoke-interface {v6, v5}, Lorg/eclipse/jetty/server/SessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "id":Ljava/lang/String;
    if-nez v9, :cond_c

    .line 248
    new-instance v9, Lorg/eclipse/jetty/http/HttpURI;

    .end local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-direct {v9, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v9    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_c
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 253
    .restart local v3    # "prefix":I
    if-eq v3, v13, :cond_f

    .line 255
    const-string v10, "?"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 256
    .restart local v8    # "suffix":I
    if-gez v8, :cond_d

    .line 257
    const-string v10, "#"

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 259
    :cond_d
    if-gt v8, v3, :cond_e

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 261
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 266
    .end local v8    # "suffix":I
    :cond_f
    const/16 v10, 0x3f

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 267
    .restart local v8    # "suffix":I
    if-gez v8, :cond_10

    .line 268
    const/16 v10, 0x23

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 269
    :cond_10
    if-gez v8, :cond_13

    .line 271
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "https"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "http"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_12

    const-string v10, "/"

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v10, ""

    goto :goto_2

    .line 277
    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "https"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "http"

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_14
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_15

    const-string v10, "/"

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    const-string v10, ""

    goto :goto_3
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    .line 1067
    return-void
.end method

.method public fwdReset()V
    .locals 1

    .prologue
    .line 1141
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 1144
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 1145
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 665
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()J
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1262
    :cond_0
    const-wide/16 v0, -0x1

    .line 1263
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentWritten()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 2
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
    .line 556
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 557
    .local v0, "fields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNamesCollection()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
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
    .line 573
    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 574
    .local v0, "fields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 575
    .local v1, "i":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 576
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 577
    .end local v1    # "i":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public getHttpFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 690
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v1, v2, :cond_0

    .line 691
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WRITER"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 694
    .local v0, "out":Ljavax/servlet/ServletOutputStream;
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 695
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method getSetCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1233
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 716
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v1, v2, :cond_0

    .line 717
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "STREAM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    if-nez v1, :cond_4

    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 725
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 728
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-static {v1}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_1
    if-nez v0, :cond_2

    .line 732
    const-string v0, "ISO-8859-1"

    .line 734
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setCharacterEncoding(Ljava/lang/String;)V

    .line 738
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 740
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_4
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 741
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    return-object v1
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isResponseCommitted()Z

    move-result v0

    return v0
.end method

.method public isOutputing()Z
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriting()Z
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    const/16 v0, 0xc8

    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 124
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 126
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 128
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 129
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 130
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 132
    iput v2, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 133
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 1075
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1076
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 1077
    const/16 v5, 0xc8

    iput v5, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 1078
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 1080
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    .line 1082
    .local v3, "response_fields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 1083
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, "connection":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1086
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1087
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 1089
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 1091
    .local v0, "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1087
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1096
    :sswitch_0
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 1100
    :sswitch_1
    const-string v5, "HTTP/1.0"

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1101
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v6, "keep-alive"

    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1104
    :sswitch_2
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v6, "TE"

    invoke-virtual {v3, v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1110
    .end local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v2    # "i":I
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1093
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public reset(Z)V
    .locals 6
    .param p1, "preserveCookies"    # Z

    .prologue
    .line 1115
    if-nez p1, :cond_1

    .line 1116
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 1131
    :cond_0
    return-void

    .line 1119
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v2

    .line 1121
    .local v2, "response_fields":Lorg/eclipse/jetty/http/HttpFields;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1122
    .local v0, "cookieValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "Set-Cookie"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    .line 1123
    .local v4, "vals":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1124
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1126
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 1128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1129
    .local v3, "v":Ljava/lang/String;
    const-string v5, "Set-Cookie"

    invoke-virtual {v2, v5, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    .line 1153
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->resetBuffer()V

    .line 1156
    return-void
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
    .line 416
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->sendProcessing()V

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 12
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xce

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 311
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 408
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 315
    sget-object v6, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Committed before "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 318
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 319
    const-string v6, "Expires"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v6, "Last-Modified"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v6, "Cache-Control"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "Content-Type"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "Content-Length"

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iput v10, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 326
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 328
    if-nez p2, :cond_2

    .line 329
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 332
    :cond_2
    const/16 v6, 0xcc

    if-eq p1, v6, :cond_b

    const/16 v6, 0x130

    if-eq p1, v6, :cond_b

    if-eq p1, v11, :cond_b

    const/16 v6, 0xc8

    if-lt p1, v6, :cond_b

    .line 337
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    .line 339
    .local v3, "request":Lorg/eclipse/jetty/server/Request;
    const/4 v1, 0x0

    .line 340
    .local v1, "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 341
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v1

    .line 343
    :cond_3
    if-nez v1, :cond_4

    .line 344
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v6

    const-class v7, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/server/Server;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    check-cast v1, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .line 345
    .restart local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    :cond_4
    if-eqz v1, :cond_6

    .line 347
    const-string v6, "javax.servlet.error.status_code"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    const-string v6, "javax.servlet.error.message"

    invoke-virtual {v3, v6, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v6, "javax.servlet.error.request_uri"

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v6, "javax.servlet.error.servlet_name"

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getServletName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v7

    invoke-virtual {v1, v9, v6, v7, p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 407
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .end local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .end local v3    # "request":Lorg/eclipse/jetty/server/Request;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_0

    .line 355
    .restart local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .restart local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .restart local v3    # "request":Lorg/eclipse/jetty/server/Request;
    :cond_6
    const-string v6, "Cache-Control"

    const-string v7, "must-revalidate,no-cache,no-store"

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v6, "text/html;charset=ISO-8859-1"

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 357
    new-instance v5, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 358
    .local v5, "writer":Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
    if-eqz p2, :cond_7

    .line 360
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-static {p2, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 361
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {p2, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 362
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {p2, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 364
    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 367
    const-string v6, "&"

    const-string v7, "&amp;"

    invoke-static {v4, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    const-string v6, "<"

    const-string v7, "&lt;"

    invoke-static {v4, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    const-string v6, ">"

    const-string v7, "&gt;"

    invoke-static {v4, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    :cond_8
    const-string v6, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"/>\n"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v6, "<title>Error "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 375
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(C)V

    .line 376
    if-nez p2, :cond_9

    .line 377
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 378
    :cond_9
    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 379
    const-string v6, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 381
    const-string v6, "</h2>\n<p>Problem accessing "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 383
    const-string v6, ". Reason:\n<pre>    "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 385
    const-string v6, "</pre>"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 386
    const-string v6, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 388
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v6, 0x14

    if-ge v2, v6, :cond_a

    .line 389
    const-string v6, "\n                                                "

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 390
    :cond_a
    const-string v6, "\n</body>\n</html>\n"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 393
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 394
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 395
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    goto/16 :goto_1

    .line 398
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .end local v1    # "error_handler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .end local v2    # "i":I
    .end local v3    # "request":Lorg/eclipse/jetty/server/Request;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "writer":Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
    :cond_b
    if-eq p1, v11, :cond_5

    .line 400
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 401
    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 402
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 403
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 404
    iput-object v9, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto/16 :goto_1
.end method

.method public sendProcessing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isExpecting102Processing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 10
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v8, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 502
    :goto_0
    return-void

    .line 445
    :cond_0
    if-nez p1, :cond_1

    .line 446
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 448
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 450
    iget-object v8, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 451
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 466
    new-instance v7, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v7, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 467
    .local v7, "uri":Lorg/eclipse/jetty/http/HttpURI;
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "canonical":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 470
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 455
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_2
    iget-object v8, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    .line 456
    .restart local v5    # "path":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v4, v5

    .line 457
    .local v4, "parent":Ljava/lang/String;
    :goto_2
    invoke-static {v4, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 458
    if-nez p1, :cond_4

    .line 459
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "path cannot be above root"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 456
    .end local v4    # "parent":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 460
    .restart local v4    # "parent":Ljava/lang/String;
    :cond_4
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 461
    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 471
    .end local v4    # "parent":Ljava/lang/String;
    .restart local v1    # "canonical":Ljava/lang/String;
    .restart local v7    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_6
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 473
    iget-object v8, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpURI;->getParam()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "param":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 478
    const/16 v8, 0x3b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_7
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "query":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 484
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_8
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "fragment":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 490
    const/16 v8, 0x23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 497
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v2    # "fragment":Ljava/lang/String;
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "uri":Lorg/eclipse/jetty/http/HttpURI;
    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 498
    const-string v8, "Location"

    invoke-virtual {p0, v8, p1}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/16 v8, 0x12e

    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 500
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_0
.end method

.method public setBufferSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 1046
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1047
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed or content written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/http/Generator;->increaseContentBufferSize(I)V

    .line 1049
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 9
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 750
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget v5, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 755
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 757
    if-nez p1, :cond_5

    .line 760
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 762
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 763
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_2

    .line 764
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 770
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 771
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 765
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 766
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 768
    :cond_3
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 773
    :cond_4
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_5
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 780
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 782
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 783
    .local v1, "i0":I
    if-gez v1, :cond_7

    .line 785
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 786
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_6

    .line 788
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 789
    .local v0, "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_6

    .line 791
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 792
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 796
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_6
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 799
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :cond_7
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v6, "charset="

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 805
    .local v2, "i1":I
    if-gez v2, :cond_8

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 818
    :goto_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 811
    :cond_8
    add-int/lit8 v4, v2, 0x8

    .line 812
    .local v4, "i8":I
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 813
    .local v3, "i2":I
    if-gez v3, :cond_9

    .line 814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_2

    .line 816
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_2
.end method

.method public setContentLength(I)V
    .locals 5
    .param p1, "len"    # I

    .prologue
    .line 834
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 837
    if-lez p1, :cond_0

    .line 839
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    const-string v2, "Content-Length"

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 840
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isAllContentWritten()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 843
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 844
    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 848
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 10
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 880
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1038
    .end local p1    # "contentType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 887
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_3

    .line 889
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v5, :cond_2

    .line 890
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 891
    :cond_2
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 892
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 893
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 894
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 899
    :cond_3
    const/16 v5, 0x3b

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 901
    .local v1, "i0":I
    if-lez v1, :cond_13

    .line 906
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 907
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 910
    const-string v5, "charset="

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 911
    .local v2, "i1":I
    if-ltz v2, :cond_11

    .line 913
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 914
    add-int/lit8 v4, v2, 0x8

    .line 915
    .local v4, "i8":I
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 917
    .local v3, "i2":I
    iget v5, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 920
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_4

    if-ltz v3, :cond_5

    :cond_4
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_8

    .line 922
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_7

    .line 924
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 925
    .local v0, "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_6

    .line 927
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 928
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 932
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 933
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 938
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 939
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 942
    :cond_8
    if-gez v3, :cond_9

    .line 944
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 945
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 949
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 950
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    :cond_a
    add-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_b

    if-ltz v3, :cond_c

    :cond_b
    add-int/lit8 v5, v1, 0x2

    if-ne v2, v5, :cond_f

    if-gez v3, :cond_f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_f

    .line 956
    :cond_c
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 957
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 959
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_e

    .line 961
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 962
    .restart local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_d

    .line 964
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 965
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 969
    :cond_d
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 970
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_e
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 976
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    :cond_f
    if-lez v3, :cond_10

    .line 981
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 982
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 983
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_10
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 988
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 989
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 994
    .end local v3    # "i2":I
    .end local v4    # "i8":I
    :cond_11
    iput-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 995
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v5, :cond_12

    .end local p1    # "contentType":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 996
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    .restart local p1    # "contentType":Ljava/lang/String;
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1001
    .end local v2    # "i1":I
    :cond_13
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1002
    sget-object v5, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 1004
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 1006
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_15

    .line 1008
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 1009
    .restart local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v0, :cond_14

    .line 1011
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1012
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1016
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1017
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    .end local v0    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v7, ";= "

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1023
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    :cond_16
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v5, :cond_17

    .line 1028
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1029
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1033
    :cond_17
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1034
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 510
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Ljava/lang/String;J)V

    .line 512
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "org.eclipse.jetty.server.include."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 541
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    if-nez p2, :cond_3

    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0

    .line 547
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 615
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 618
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1174
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 1178
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1180
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    if-nez v3, :cond_0

    iget v3, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v3, :cond_0

    .line 1183
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1186
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1190
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1193
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1196
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1197
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1198
    .local v1, "semi":I
    if-gez v1, :cond_2

    .line 1200
    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1209
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 1210
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1205
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setLongContentLength(J)V
    .locals 2
    .param p1, "len"    # J

    .prologue
    .line 868
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 871
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "sc"    # I

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 641
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "sc"    # I
    .param p2, "sm"    # Ljava/lang/String;

    .prologue
    .line 649
    if-gtz p1, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    iput p1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 654
    iput-object p2, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 656
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    goto :goto_0
.end method
