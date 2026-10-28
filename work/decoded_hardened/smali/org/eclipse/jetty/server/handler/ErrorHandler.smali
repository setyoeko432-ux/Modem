.class public Lorg/eclipse/jetty/server/handler/ErrorHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "ErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;
    }
.end annotation


# static fields
.field public static final ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _cacheControl:Ljava/lang/String;

.field _showMessageInTitle:Z

.field _showStacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    .line 55
    const-string v0, "must-revalidate,no-cache,no-store"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    .line 281
    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMessageInTitle()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 11
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 63
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 64
    .local v0, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "method":Ljava/lang/String;
    const-string v7, "GET"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "POST"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "HEAD"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 110
    :goto_0
    return-void

    .line 71
    :cond_0
    instance-of v7, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;

    if-eqz v7, :cond_3

    move-object v7, p0

    .line 73
    check-cast v7, Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;

    invoke-interface {v7, p3}, Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;->getErrorPage(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "error_page":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 76
    const-string v7, "org.eclipse.jetty.server.error_page"

    invoke-interface {p3, v7}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 77
    .local v5, "old_error_page":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 79
    :cond_1
    const-string v7, "org.eclipse.jetty.server.error_page"

    invoke-interface {p3, v7, v3}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v7

    invoke-interface {v7, v3}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/Dispatcher;

    .line 84
    .local v1, "dispatcher":Lorg/eclipse/jetty/server/Dispatcher;
    if-eqz v1, :cond_2

    .line 86
    :try_start_0
    invoke-virtual {v1, p3, p4}, Lorg/eclipse/jetty/server/Dispatcher;->error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljavax/servlet/ServletException;
    sget-object v7, Lorg/eclipse/jetty/server/handler/ErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "EXCEPTION "

    invoke-interface {v7, v8, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v2    # "e":Ljavax/servlet/ServletException;
    :cond_2
    :try_start_1
    sget-object v7, Lorg/eclipse/jetty/server/handler/ErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No error page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .end local v1    # "dispatcher":Lorg/eclipse/jetty/server/Dispatcher;
    .end local v3    # "error_page":Ljava/lang/String;
    .end local v5    # "old_error_page":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 101
    const-string v7, "text/html;charset=ISO-8859-1"

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 102
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 103
    const-string v7, "Cache-Control"

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    invoke-interface {p4, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    new-instance v6, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v7, 0x1000

    invoke-direct {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 105
    .local v6, "writer":Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p3, v6, v7, v8}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 106
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 107
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v7

    invoke-interface {p4, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 108
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    goto/16 :goto_0
.end method

.method protected handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public isShowStacks()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setShowMessageInTitle(Z)V
    .locals 0
    .param p1, "showMessageInTitle"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    .line 239
    return-void
.end method

.method public setShowStacks(Z)V
    .locals 0
    .param p1, "showStacks"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    .line 230
    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    if-nez p2, :cond_1

    .line 278
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 257
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 272
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 255
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method protected writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "showStacks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p4, :cond_0

    .line 124
    invoke-static {p3}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p4

    .line 126
    :cond_0
    const-string v0, "<html>\n<head>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 128
    const-string v0, "</head>\n<body>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 130
    const-string v0, "\n</body>\n</html>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "showStacks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    .local v5, "uri":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p5, :cond_0

    .line 157
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 158
    :cond_0
    const-string v0, "<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x14

    if-ge v6, v0, :cond_1

    .line 160
    const-string v0, "<br/>                                                \n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method protected writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    const-string v0, "<title>Error "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    if-eqz v0, :cond_0

    .line 143
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 144
    invoke-virtual {p0, p2, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 146
    :cond_0
    const-string v0, "</title>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v0, "<h2>HTTP ERROR "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 168
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 169
    const-string v0, "</h2>\n<p>Problem accessing "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p2, p5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 171
    const-string v0, ". Reason:\n<pre>    "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p2, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 173
    const-string v0, "</pre></p>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 4
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v3, "javax.servlet.error.exception"

    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 181
    .local v2, "th":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    .line 183
    const-string v3, "<h3>Caused by:</h3><pre>"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 185
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 186
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 188
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 189
    const-string v3, "</pre>\n"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 192
    goto :goto_0

    .line 193
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :cond_0
    return-void
.end method
