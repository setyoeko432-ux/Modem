.class public Lorg/eclipse/jetty/server/HttpInput;
.super Ljavax/servlet/ServletInputStream;
.source "HttpInput.java"


# instance fields
.field protected final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field protected final _parser:Lorg/eclipse/jetty/http/HttpParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 36
    invoke-direct {p0}, Ljavax/servlet/ServletInputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    .line 39
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v3, [B

    .line 49
    .local v0, "bytes":[B
    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/jetty/server/HttpInput;->read([BII)I

    move-result v1

    .line 50
    .local v1, "read":I
    if-gez v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, -0x1

    .line 61
    .local v1, "l":I
    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    iget-object v3, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpParser;->blockForContent(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 62
    .local v0, "content":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    move-result v1

    .line 66
    :cond_0
    return v1

    .line 64
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isEarlyEOF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    const-string v3, "early EOF"

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
