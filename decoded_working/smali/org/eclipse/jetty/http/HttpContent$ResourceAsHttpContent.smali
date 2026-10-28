.class public Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;
.super Ljava/lang/Object;
.source "HttpContent.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceAsHttpContent"
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field final _etag:Lorg/eclipse/jetty/io/Buffer;

.field final _maxBuffer:I

.field final _mimeType:Lorg/eclipse/jetty/io/Buffer;

.field final _resource:Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "mimeType"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 62
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 1
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "mimeType"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "maxBuffer"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V
    .locals 2
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "mimeType"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "maxBuffer"    # I
    .param p4, "etag"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 81
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    .line 82
    iput p3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    .line 83
    if-eqz p4, :cond_0

    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_etag:Lorg/eclipse/jetty/io/Buffer;

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 1
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p2, "mimeType"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "etag"    # Z

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    .line 75
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_mimeType:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getETag()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_etag:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 7

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 116
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_maxBuffer:I

    int-to-long v3, v3

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 129
    if-eqz v2, :cond_1

    .line 133
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_1
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Couldn\'t close inputStream. Possible file handle leak"

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v0, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 119
    .local v0, "buffer":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->readFrom(Ljava/io/InputStream;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v2, :cond_1

    .line 133
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v3, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Couldn\'t close inputStream. Possible file handle leak"

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 125
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 133
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 138
    :cond_3
    :goto_1
    throw v3

    .line 135
    :catch_3
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Couldn\'t close inputStream. Possible file handle leak"

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 165
    return-void
.end method
