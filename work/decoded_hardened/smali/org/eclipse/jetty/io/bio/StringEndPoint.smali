.class public Lorg/eclipse/jetty/io/bio/StringEndPoint;
.super Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.source "StringEndPoint.java"


# instance fields
.field _bin:Ljava/io/ByteArrayInputStream;

.field _bout:Ljava/io/ByteArrayOutputStream;

.field _encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 34
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_in:Ljava/io/InputStream;

    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_out:Ljava/io/OutputStream;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/io/bio/StringEndPoint;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 75
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object v1

    .line 78
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;

    iget-object v3, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;-><init>(Lorg/eclipse/jetty/io/bio/StringEndPoint;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    .line 58
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    iput-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_in:Ljava/io/InputStream;

    .line 59
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    .line 60
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_out:Ljava/io/OutputStream;

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_ishut:Z

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_oshut:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 64
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
