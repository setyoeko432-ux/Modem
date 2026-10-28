.class public Lorg/eclipse/jetty/util/ReadLineInputStream;
.super Ljava/io/BufferedInputStream;
.source "ReadLineInputStream.java"


# instance fields
.field _seenCRLF:Z

.field _skipLF:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 103
    .local v0, "b":I
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    .line 106
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 107
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 109
    :cond_0
    monitor-exit p0

    return v0

    .line 102
    .end local v0    # "b":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    if-eqz v2, :cond_1

    if-lez p3, :cond_1

    .line 117
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    .line 118
    iget-boolean v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    if-eqz v2, :cond_1

    .line 120
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 121
    .local v0, "b":I
    if-ne v0, v1, :cond_0

    .line 132
    .end local v0    # "b":I
    :goto_0
    monitor-exit p0

    return v1

    .line 124
    .restart local v0    # "b":I
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 126
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    :try_start_1
    aput-byte v1, p1, p2

    .line 127
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    invoke-super {p0, p1, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "b":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 47
    iget-object v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/util/ReadLineInputStream;->mark(I)V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 53
    .local v0, "b":I
    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    if-gez v3, :cond_1

    .line 54
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Buffer size exceeded: no line terminator"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_1
    if-ne v0, v5, :cond_3

    .line 58
    iget v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 59
    .local v1, "m":I
    iput v5, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 60
    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    if-le v3, v1, :cond_2

    .line 61
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    iget v5, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    sub-int/2addr v5, v1

    sget-object v6, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 94
    :goto_1
    return-object v3

    .line 63
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 66
    .end local v1    # "m":I
    :cond_3
    const/16 v3, 0xd

    if-ne v0, v3, :cond_6

    .line 68
    iget v2, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    .line 71
    .local v2, "p":I
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    iget v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->count:I

    if-ge v3, v4, :cond_5

    .line 73
    iget-object v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    iget v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    aget-byte v3, v3, v4

    if-ne v3, v7, :cond_4

    .line 74
    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    .line 78
    :cond_4
    :goto_2
    iget v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 79
    .restart local v1    # "m":I
    iput v5, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 80
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1

    .line 77
    .end local v1    # "m":I
    :cond_5
    iput-boolean v6, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    goto :goto_2

    .line 83
    .end local v2    # "p":I
    :cond_6
    if-ne v0, v7, :cond_0

    .line 85
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    if-eqz v3, :cond_7

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_skipLF:Z

    .line 88
    iput-boolean v6, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->_seenCRLF:Z

    .line 89
    iget v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    goto :goto_0

    .line 92
    :cond_7
    iget v1, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 93
    .restart local v1    # "m":I
    iput v5, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->markpos:I

    .line 94
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->buf:[B

    iget v5, p0, Lorg/eclipse/jetty/util/ReadLineInputStream;->pos:I

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1
.end method
