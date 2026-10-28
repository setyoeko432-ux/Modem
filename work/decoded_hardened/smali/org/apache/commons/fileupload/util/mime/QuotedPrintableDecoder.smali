.class final Lorg/apache/commons/fileupload/util/mime/QuotedPrintableDecoder;
.super Ljava/lang/Object;
.source "QuotedPrintableDecoder.java"


# static fields
.field private static final UPPER_NIBBLE_SHIFT:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static decode([BLjava/io/OutputStream;)I
    .locals 12
    .param p0, "data"    # [B
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v8, 0x0

    .line 51
    .local v8, "off":I
    array-length v7, p0

    .line 52
    .local v7, "length":I
    add-int v6, v8, v7

    .line 53
    .local v6, "endOffset":I
    const/4 v2, 0x0

    .local v2, "bytesWritten":I
    move v9, v8

    .line 55
    .end local v8    # "off":I
    .local v9, "off":I
    :goto_0
    if-ge v9, v6, :cond_5

    .line 56
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "off":I
    .restart local v8    # "off":I
    aget-byte v5, p0, v9

    .line 59
    .local v5, "ch":B
    const/16 v10, 0x5f

    if-ne v5, v10, :cond_1

    .line 60
    const/16 v10, 0x20

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    :goto_1
    move v9, v8

    .line 91
    .end local v8    # "off":I
    .restart local v9    # "off":I
    goto :goto_0

    .line 61
    .end local v9    # "off":I
    .restart local v8    # "off":I
    :cond_1
    const/16 v10, 0x3d

    if-ne v5, v10, :cond_4

    .line 64
    add-int/lit8 v10, v8, 0x1

    if-lt v10, v6, :cond_2

    .line 65
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid quoted printable encoding; truncated escape sequence"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "off":I
    .restart local v9    # "off":I
    aget-byte v0, p0, v8

    .line 69
    .local v0, "b1":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "off":I
    .restart local v8    # "off":I
    aget-byte v1, p0, v9

    .line 72
    .local v1, "b2":B
    const/16 v10, 0xd

    if-ne v0, v10, :cond_3

    .line 73
    const/16 v10, 0xa

    if-eq v1, v10, :cond_0

    .line 74
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid quoted printable encoding; CR must be followed by LF"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 80
    :cond_3
    invoke-static {v0}, Lorg/apache/commons/fileupload/util/mime/QuotedPrintableDecoder;->hexToBinary(B)I

    move-result v3

    .line 81
    .local v3, "c1":I
    invoke-static {v1}, Lorg/apache/commons/fileupload/util/mime/QuotedPrintableDecoder;->hexToBinary(B)I

    move-result v4

    .line 82
    .local v4, "c2":I
    shl-int/lit8 v10, v3, 0x4

    or-int/2addr v10, v4

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v3    # "c1":I
    .end local v4    # "c2":I
    :cond_4
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v5    # "ch":B
    .end local v8    # "off":I
    .restart local v9    # "off":I
    :cond_5
    return v2
.end method

.method private static hexToBinary(B)I
    .locals 4
    .param p0, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    int-to-char v1, p0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 106
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid quoted printable encoding: not a valid hex digit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    return v0
.end method
