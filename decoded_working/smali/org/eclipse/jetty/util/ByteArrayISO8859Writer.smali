.class public Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
.super Ljava/io/Writer;
.source "ByteArrayISO8859Writer.java"


# instance fields
.field private _bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field private _buf:[B

.field private _fixed:Z

.field private _size:I

.field private _writer:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 48
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 57
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_fixed:Z

    .line 65
    return-void
.end method

.method private writeEncoded([CII)V
    .locals 5
    .param p1, "ca"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 214
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    .line 218
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write([CII)V

    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    iget-object v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    .line 223
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_bout:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    .line 245
    return-void
.end method

.method public ensureSpareCapacity(I)V
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 251
    iget v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 253
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_fixed:Z

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v1, v1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    new-array v0, v1, [B

    .line 256
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    .line 259
    .end local v0    # "buf":[B
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public getBuf()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    return-object v0
.end method

.method public getByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    iget v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    new-array v0, v1, [B

    .line 266
    .local v0, "data":[B
    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public resetWriter()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    .line 234
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    .line 95
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    return v0
.end method

.method public spareCapacity()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write(C)V
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 115
    if-ltz p1, :cond_0

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 116
    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-array v0, v2, [C

    aput-char p1, v0, v3

    .line 120
    .local v0, "ca":[C
    invoke-direct {p0, v0, v3, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 169
    const-string v3, "null"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;II)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 174
    .local v2, "length":I
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    if-ltz v0, :cond_2

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_2

    .line 179
    iget-object v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sub-int v4, v2, v1

    invoke-direct {p0, v3, v1, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 196
    add-int v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 197
    .local v0, "c":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_0

    .line 198
    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-direct {p0, v2, v3, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    .line 205
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public write([C)V
    .locals 5
    .param p1, "ca"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 132
    aget-char v0, p1, v1

    .line 133
    .local v0, "c":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    .line 141
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public write([CII)V
    .locals 5
    .param p1, "ca"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 151
    add-int v2, p2, v1

    aget-char v0, p1, v2

    .line 152
    .local v0, "c":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_0

    .line 153
    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeEncoded([CII)V

    .line 160
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->_size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    return-void
.end method
