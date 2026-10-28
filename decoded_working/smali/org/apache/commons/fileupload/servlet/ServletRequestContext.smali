.class public Lorg/apache/commons/fileupload/servlet/ServletRequestContext;
.super Ljava/lang/Object;
.source "ServletRequestContext.java"

# interfaces
.implements Lorg/apache/commons/fileupload/UploadContext;


# instance fields
.field private final request:Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 53
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 5

    .prologue
    .line 99
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string v4, "Content-length"

    invoke-interface {v3, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 103
    .local v1, "size":J
    :goto_0
    return-wide v1

    .line 100
    .end local v1    # "size":J
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v3

    int-to-long v1, v3

    .restart local v1    # "size":J
    goto :goto_0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    const-string v0, "ContentLength=%s, ContentType=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/servlet/ServletRequestContext;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
