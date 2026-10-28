.class public Lorg/eclipse/jetty/server/HttpWriter;
.super Ljava/io/Writer;
.source "HttpWriter.java"


# static fields
.field public static final MAX_OUTPUT_CHARS:I = 0x200

.field private static final WRITE_CONV:I = 0x0

.field private static final WRITE_ISO1:I = 0x1

.field private static final WRITE_UTF8:I = 0x2


# instance fields
.field final _generator:Lorg/eclipse/jetty/http/AbstractGenerator;

.field final _out:Lorg/eclipse/jetty/server/HttpOutput;

.field _surrogate:I

.field _writeMode:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/HttpOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/eclipse/jetty/server/HttpOutput;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 56
    return-void
.end method

.method private getConverter()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v2, v2, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iget-object v3, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v3, v3, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    .line 86
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 93
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iput-object p1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-instance v1, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 79
    :cond_2
    return-void

    .line 65
    :cond_3
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jetty/server/HttpOutput;->_converter:Ljava/io/Writer;

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x200

    .line 99
    :goto_0
    if-le p3, v2, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2, v2}, Lorg/eclipse/jetty/server/HttpWriter;->write(Ljava/lang/String;II)V

    .line 102
    add-int/lit16 p2, p2, 0x200

    .line 103
    add-int/lit16 p3, p3, -0x200

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v1, v1, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    new-array v2, v2, [C

    iput-object v2, v1, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    iget-object v0, v1, Lorg/eclipse/jetty/server/HttpOutput;->_chars:[C

    .line 111
    .local v0, "chars":[C
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 112
    invoke-virtual {p0, v0, v3, p3}, Lorg/eclipse/jetty/server/HttpWriter;->write([CII)V

    .line 113
    return-void
.end method

.method public write([CII)V
    .locals 11
    .param p1, "s"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v8, p0, Lorg/eclipse/jetty/server/HttpWriter;->_out:Lorg/eclipse/jetty/server/HttpOutput;

    .line 121
    .local v8, "out":Lorg/eclipse/jetty/server/HttpOutput;
    :goto_0
    if-lez p3, :cond_16

    .line 123
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->reset()V

    .line 124
    const/16 v9, 0x200

    if-le p3, v9, :cond_0

    const/16 v4, 0x200

    .line 126
    .local v4, "chars":I
    :goto_1
    iget v9, p0, Lorg/eclipse/jetty/server/HttpWriter;->_writeMode:I

    packed-switch v9, :pswitch_data_0

    .line 285
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .end local v4    # "chars":I
    :cond_0
    move v4, p3

    .line 124
    goto :goto_1

    .line 130
    .restart local v4    # "chars":I
    :pswitch_0
    invoke-direct {p0}, Lorg/eclipse/jetty/server/HttpWriter;->getConverter()Ljava/io/Writer;

    move-result-object v6

    .line 131
    .local v6, "converter":Ljava/io/Writer;
    invoke-virtual {v6, p1, p2, v4}, Ljava/io/Writer;->write([CII)V

    .line 132
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 288
    .end local v6    # "converter":Ljava/io/Writer;
    :cond_1
    :goto_2
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9, v8}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    .line 289
    sub-int/2addr p3, v4

    .line 290
    add-int/2addr p2, v4

    .line 291
    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    .line 139
    .local v0, "buffer":[B
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    .line 141
    .local v1, "bytes":I
    array-length v9, v0

    sub-int/2addr v9, v1

    if-le v4, v9, :cond_2

    .line 142
    array-length v9, v0

    sub-int v4, v9, v1

    .line 144
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    move v2, v1

    .end local v1    # "bytes":I
    .local v2, "bytes":I
    :goto_3
    if-ge v7, v4, :cond_4

    .line 146
    add-int v9, p2, v7

    aget-char v3, p1, v9

    .line 147
    .local v3, "c":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    const/16 v9, 0x100

    if-ge v3, v9, :cond_3

    .end local v3    # "c":I
    :goto_4
    int-to-byte v9, v3

    aput-byte v9, v0, v2

    .line 144
    add-int/lit8 v7, v7, 0x1

    move v2, v1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    goto :goto_3

    .line 147
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    .restart local v3    # "c":I
    :cond_3
    const/16 v3, 0x3f

    goto :goto_4

    .line 149
    .end local v1    # "bytes":I
    .end local v3    # "c":I
    .restart local v2    # "bytes":I
    :cond_4
    if-ltz v2, :cond_1

    .line 150
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_2

    .line 157
    .end local v0    # "buffer":[B
    .end local v2    # "bytes":I
    .end local v7    # "i":I
    :pswitch_2
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    .line 158
    .restart local v0    # "buffer":[B
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    .line 160
    .restart local v1    # "bytes":I
    add-int v9, v1, v4

    array-length v10, v0

    if-le v9, v10, :cond_5

    .line 161
    array-length v9, v0

    sub-int v4, v9, v1

    .line 163
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "i":I
    move v2, v1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :goto_5
    if-ge v7, v4, :cond_17

    .line 165
    add-int v9, p2, v7

    aget-char v5, p1, v9

    .line 168
    .local v5, "code":I
    iget v9, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    if-nez v9, :cond_7

    .line 171
    int-to-char v9, v5

    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 173
    iput v5, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    move v1, v2

    .line 163
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    :cond_6
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move v2, v1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    goto :goto_5

    .line 178
    :cond_7
    int-to-char v9, v5

    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 180
    iget v9, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    int-to-char v9, v9

    int-to-char v10, v5

    invoke-static {v9, v10}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 190
    :cond_8
    :goto_7
    and-int/lit8 v9, v5, -0x80

    if-nez v9, :cond_b

    .line 193
    array-length v9, v0

    if-lt v2, v9, :cond_a

    .line 195
    move v4, v7

    move v1, v2

    .line 281
    .end local v2    # "bytes":I
    .end local v5    # "code":I
    .restart local v1    # "bytes":I
    :goto_8
    iget-object v9, v8, Lorg/eclipse/jetty/server/HttpOutput;->_bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v9, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto/16 :goto_2

    .line 185
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    .restart local v5    # "code":I
    :cond_9
    iget v5, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 186
    const/4 v9, 0x0

    iput v9, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 187
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 198
    :cond_a
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    int-to-byte v9, v5

    aput-byte v9, v0, v2

    goto :goto_6

    .line 202
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_b
    and-int/lit16 v9, v5, -0x800

    if-nez v9, :cond_d

    .line 205
    add-int/lit8 v9, v2, 0x2

    array-length v10, v0

    if-le v9, v10, :cond_c

    .line 207
    move v4, v7

    move v1, v2

    .line 208
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_8

    .line 210
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_c
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 211
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    and-int/lit8 v9, v5, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    move v1, v2

    .line 272
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    :goto_9
    const/4 v9, 0x0

    iput v9, p0, Lorg/eclipse/jetty/server/HttpWriter;->_surrogate:I

    .line 274
    array-length v9, v0

    if-ne v1, v9, :cond_6

    .line 276
    add-int/lit8 v4, v7, 0x1

    .line 277
    goto :goto_8

    .line 213
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_d
    const/high16 v9, -0x10000

    and-int/2addr v9, v5

    if-nez v9, :cond_f

    .line 216
    add-int/lit8 v9, v2, 0x3

    array-length v10, v0

    if-le v9, v10, :cond_e

    .line 218
    move v4, v7

    move v1, v2

    .line 219
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_8

    .line 221
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_e
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 222
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 223
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    and-int/lit8 v9, v5, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    goto :goto_9

    .line 225
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_f
    const/high16 v9, -0xe00000

    and-int/2addr v9, v5

    if-nez v9, :cond_11

    .line 228
    add-int/lit8 v9, v2, 0x4

    array-length v10, v0

    if-le v9, v10, :cond_10

    .line 230
    move v4, v7

    move v1, v2

    .line 231
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_8

    .line 233
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_10
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 234
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 235
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 236
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    and-int/lit8 v9, v5, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    move v1, v2

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_9

    .line 238
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_11
    const/high16 v9, -0xc000000

    and-int/2addr v9, v5

    if-nez v9, :cond_13

    .line 241
    add-int/lit8 v9, v2, 0x5

    array-length v10, v0

    if-le v9, v10, :cond_12

    .line 243
    move v4, v7

    move v1, v2

    .line 244
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_8

    .line 246
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_12
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x18

    or-int/lit16 v9, v9, 0xf8

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 247
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v9, v5, 0x12

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 248
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 249
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 250
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    and-int/lit8 v9, v5, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    goto/16 :goto_9

    .line 252
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_13
    const/high16 v9, -0x80000000

    and-int/2addr v9, v5

    if-nez v9, :cond_15

    .line 255
    add-int/lit8 v9, v2, 0x6

    array-length v10, v0

    if-le v9, v10, :cond_14

    .line 257
    move v4, v7

    move v1, v2

    .line 258
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_8

    .line 260
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_14
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x1e

    or-int/lit16 v9, v9, 0xfc

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 261
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v9, v5, 0x18

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 262
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x12

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 263
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 264
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 265
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    and-int/lit8 v9, v5, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    move v1, v2

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_9

    .line 269
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_15
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    const/16 v9, 0x3f

    aput-byte v9, v0, v2

    goto/16 :goto_9

    .line 292
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":I
    .end local v4    # "chars":I
    .end local v5    # "code":I
    .end local v7    # "i":I
    :cond_16
    return-void

    .restart local v0    # "buffer":[B
    .restart local v2    # "bytes":I
    .restart local v4    # "chars":I
    .restart local v7    # "i":I
    :cond_17
    move v1, v2

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_8

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
