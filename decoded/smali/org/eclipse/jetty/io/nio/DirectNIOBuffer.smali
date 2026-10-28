.class public Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "DirectNIOBuffer.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/NIOBuffer;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _buf:Ljava/nio/ByteBuffer;

.field private _in:Ljava/nio/channels/ReadableByteChannel;

.field private _inStream:Ljava/io/InputStream;

.field private _out:Ljava/nio/channels/WritableByteChannel;

.field private _outStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 56
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 81
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 83
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_access:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :cond_0
    :goto_0
    invoke-static {v8}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 91
    :cond_1
    :goto_2
    invoke-static {v7}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v1

    .line 90
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 66
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 121
    move v0, p4

    .line 122
    .local v0, "l":I
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    sub-int v0, v2, p1

    .line 125
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    if-ltz v0, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v0

    .line 141
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v7, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "READONLY"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    .line 159
    .local v0, "array":[B
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    invoke-virtual {p0, p1, v0, v5, v6}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->poke(I[BII)I

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 166
    .local v3, "src_buf":Lorg/eclipse/jetty/io/Buffer;
    instance-of v5, v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    if-eqz v5, :cond_4

    .line 168
    check-cast v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    .end local v3    # "src_buf":Lorg/eclipse/jetty/io/Buffer;
    iget-object v4, v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 169
    .local v4, "src_bytebuf":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    if-ne v4, v5, :cond_2

    .line 170
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 173
    :cond_2
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 176
    .local v2, "space":I
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 177
    .local v1, "length":I
    if-le v1, v2, :cond_3

    .line 178
    move v1, v2

    .line 180
    :cond_3
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 183
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 188
    .end local v1    # "length":I
    .end local v2    # "space":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v5

    .line 194
    .end local v4    # "src_bytebuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "src_buf":Lorg/eclipse/jetty/io/Buffer;
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "READONLY"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index<0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    sub-int p4, v1, p1

    .line 208
    if-gez p4, :cond_2

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index>capacity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 218
    .local v0, "space":I
    if-le p4, v0, :cond_3

    .line 219
    move p4, v0

    .line 220
    :cond_3
    if-lez p4, :cond_4

    .line 221
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p4

    .end local v0    # "space":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method

.method public poke(IB)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 151
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 240
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    if-eq p1, v7, :cond_1

    .line 242
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 243
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 246
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->space()I

    move-result v7

    if-le p2, v7, :cond_3

    .line 247
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->space()I

    move-result p2

    .line 248
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v5

    .line 252
    .local v5, "p":I
    const/4 v2, 0x0

    .local v2, "len":I
    const/4 v6, 0x0

    .local v6, "total":I
    move v0, p2

    .line 253
    .local v0, "available":I
    const/4 v3, 0x0

    .local v3, "loop":I
    move v4, v3

    .line 254
    .end local v3    # "loop":I
    .local v4, "loop":I
    :goto_0
    if-ge v6, p2, :cond_c

    .line 256
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    add-int v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 259
    if-gez v2, :cond_6

    .line 261
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 262
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v4

    .line 278
    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    :cond_4
    :goto_1
    if-gez v2, :cond_9

    if-nez v6, :cond_9

    .line 279
    const/4 v6, -0x1

    .line 291
    .end local v6    # "total":I
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_5

    .line 293
    iput-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 296
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    return v6

    .line 265
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    .restart local v6    # "total":I
    :cond_6
    if-lez v2, :cond_8

    .line 267
    add-int/2addr v5, v2

    .line 268
    add-int/2addr v6, v2

    .line 269
    sub-int/2addr v0, v2

    .line 270
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    const/4 v3, 0x0

    .line 275
    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    :cond_7
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-lez v7, :cond_4

    move v4, v3

    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    goto :goto_0

    .line 273
    :cond_8
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    const/4 v7, 0x1

    if-le v4, v7, :cond_7

    goto :goto_1

    .line 291
    :cond_9
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_a

    .line 293
    iput-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 296
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 283
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :catch_0
    move-exception v1

    move v3, v4

    .line 285
    .end local v4    # "loop":I
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "loop":I
    :goto_3
    const/4 v7, 0x0

    :try_start_3
    iput-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 286
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 287
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v8}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b

    .line 293
    iput-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 296
    :cond_b
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v7

    .line 291
    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :catchall_1
    move-exception v7

    move v3, v4

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_4

    .line 283
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v3    # "loop":I
    .restart local v4    # "loop":I
    :cond_c
    move v3, v4

    .end local v4    # "loop":I
    .restart local v3    # "loop":I
    goto/16 :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    if-eq p1, v4, :cond_1

    .line 307
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 308
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 311
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    monitor-enter v5

    .line 315
    const/4 v2, 0x0

    .local v2, "loop":I
    move v3, v2

    .line 316
    .end local v2    # "loop":I
    .local v3, "loop":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->hasContent()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 318
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->getIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 320
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 321
    .local v1, "len":I
    if-gez v1, :cond_3

    move v2, v3

    .line 341
    .end local v1    # "len":I
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 344
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 346
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 349
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    return-void

    .line 323
    .end local v2    # "loop":I
    .restart local v1    # "len":I
    .restart local v3    # "loop":I
    :cond_3
    if-lez v1, :cond_5

    .line 325
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->skip(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    const/4 v2, 0x0

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :cond_4
    move v3, v2

    .line 330
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .line 328
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    goto :goto_1

    .line 333
    .end local v1    # "len":I
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 336
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 337
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_4
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v6

    if-nez v6, :cond_6

    .line 343
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 344
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 346
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4

    .line 349
    .end local v3    # "loop":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v3    # "loop":I
    :cond_7
    move v2, v3

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    goto :goto_1
.end method
