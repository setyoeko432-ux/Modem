.class public Lorg/eclipse/jetty/server/handler/GzipHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "GzipHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _bufferSize:I

.field protected _excluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _mimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _minGzipSize:I

.field protected _vary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/eclipse/jetty/server/handler/GzipHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 69
    const/16 v0, 0x2000

    iput v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    .line 70
    const/16 v0, 0x100

    iput v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_minGzipSize:I

    .line 71
    const-string v0, "Accept-Encoding, User-Agent"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_vary:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/eclipse/jetty/server/handler/GzipHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    return v0
.end method

.method public getExcluded()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_excluded:Ljava/util/Set;

    return-object v0
.end method

.method public getMimeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getMinGzipSize()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_minGzipSize:I

    return v0
.end method

.method public getVary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_vary:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 7
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
    .line 243
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/GzipHandler;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    const-string v5, "accept-encoding"

    invoke-interface {p3, v5}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "ae":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    const-string v5, "Content-Encoding"

    invoke-interface {p4, v5}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "HEAD"

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 249
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_excluded:Ljava/util/Set;

    if-eqz v5, :cond_1

    .line 251
    const-string v5, "User-Agent"

    invoke-interface {p3, v5}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "ua":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_excluded:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 304
    .end local v0    # "ae":Ljava/lang/String;
    .end local v3    # "ua":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 259
    .restart local v0    # "ae":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p3, p4}, Lorg/eclipse/jetty/server/handler/GzipHandler;->newGzipResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    move-result-object v4

    .line 261
    .local v4, "wrappedResponse":Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
    const/4 v2, 0x1

    .line 264
    .local v2, "exceptional":Z
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v5, p1, p2, p3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    const/4 v2, 0x0

    .line 269
    invoke-static {p3}, Lorg/eclipse/jetty/continuation/ContinuationSupport;->getContinuation(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/continuation/Continuation;

    move-result-object v1

    .line 270
    .local v1, "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    invoke-interface {v1}, Lorg/eclipse/jetty/continuation/Continuation;->isSuspended()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jetty/continuation/Continuation;->isResponseWrapped()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    new-instance v5, Lorg/eclipse/jetty/server/handler/GzipHandler$1;

    invoke-direct {v5, p0, v4}, Lorg/eclipse/jetty/server/handler/GzipHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;)V

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/continuation/Continuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    goto :goto_0

    .line 290
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 292
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 293
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->finish()V

    goto :goto_0

    .line 269
    .end local v1    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    :catchall_0
    move-exception v5

    invoke-static {p3}, Lorg/eclipse/jetty/continuation/ContinuationSupport;->getContinuation(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/continuation/Continuation;

    move-result-object v1

    .line 270
    .restart local v1    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    invoke-interface {v1}, Lorg/eclipse/jetty/continuation/Continuation;->isSuspended()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Lorg/eclipse/jetty/continuation/Continuation;->isResponseWrapped()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 272
    new-instance v6, Lorg/eclipse/jetty/server/handler/GzipHandler$1;

    invoke-direct {v6, p0, v4}, Lorg/eclipse/jetty/server/handler/GzipHandler$1;-><init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;)V

    invoke-interface {v1, v6}, Lorg/eclipse/jetty/continuation/Continuation;->addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V

    .line 297
    :goto_1
    throw v5

    .line 290
    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v6

    if-nez v6, :cond_5

    .line 292
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 293
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_1

    .line 296
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->finish()V

    goto :goto_1

    .line 301
    .end local v1    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .end local v2    # "exceptional":Z
    .end local v4    # "wrappedResponse":Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
    :cond_6
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method protected newGzipResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
    .locals 1
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 315
    new-instance v0, Lorg/eclipse/jetty/server/handler/GzipHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jetty/server/handler/GzipHandler$2;-><init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-object v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 354
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 210
    iput p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_bufferSize:I

    .line 211
    return-void
.end method

.method public setExcluded(Ljava/lang/String;)V
    .locals 3
    .param p1, "excluded"    # Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_excluded:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    .local v0, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_excluded:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0    # "tok":Ljava/util/StringTokenizer;
    :cond_0
    return-void
.end method

.method public setExcluded(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_excluded:Ljava/util/Set;

    .line 145
    return-void
.end method

.method public setMimeTypes(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeTypes"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 115
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    .line 116
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    .local v0, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "tok":Ljava/util/StringTokenizer;
    :cond_0
    return-void
.end method

.method public setMimeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_mimeTypes:Ljava/util/Set;

    .line 102
    return-void
.end method

.method public setMinGzipSize(I)V
    .locals 0
    .param p1, "minGzipSize"    # I

    .prologue
    .line 233
    iput p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_minGzipSize:I

    .line 234
    return-void
.end method

.method public setVary(Ljava/lang/String;)V
    .locals 0
    .param p1, "vary"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/GzipHandler;->_vary:Ljava/lang/String;

    .line 188
    return-void
.end method
