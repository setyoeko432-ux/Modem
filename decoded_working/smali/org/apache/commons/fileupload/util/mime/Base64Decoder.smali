.class final Lorg/apache/commons/fileupload/util/mime/Base64Decoder;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# static fields
.field private static final DECODING_TABLE:[B

.field private static final ENCODING_TABLE:[B

.field private static final INPUT_BYTES_PER_CHUNK:I = 0x4

.field private static final INVALID_BYTE:I = -0x1

.field private static final MASK_BYTE_UNSIGNED:I = 0xff

.field private static final PADDING:B = 0x3dt

.field private static final PAD_BYTE:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->ENCODING_TABLE:[B

    .line 74
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->DECODING_TABLE:[B

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->DECODING_TABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 79
    sget-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->DECODING_TABLE:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->ENCODING_TABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    sget-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->DECODING_TABLE:[B

    sget-object v2, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->ENCODING_TABLE:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_1
    sget-object v1, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->DECODING_TABLE:[B

    const/16 v2, 0x3d

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    .line 87
    return-void

    .line 50
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static decode([BLjava/io/OutputStream;)I
    .locals 14
    .param p0, "data"    # [B
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v9, 0x0

    .line 108
    .local v9, "outLen":I
    const/4 v10, 0x4

    new-array v5, v10, [B

    .line 109
    .local v5, "cache":[B
    const/4 v6, 0x0

    .line 111
    .local v6, "cachedBytes":I
    array-length v11, p0

    const/4 v10, 0x0

    move v7, v6

    .end local v6    # "cachedBytes":I
    .local v7, "cachedBytes":I
    :goto_0
    if-ge v10, v11, :cond_6

    aget-byte v0, p0, v10

    .line 112
    .local v0, "b":B
    sget-object v12, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->DECODING_TABLE:[B

    and-int/lit16 v13, v0, 0xff

    aget-byte v8, v12, v13

    .line 113
    .local v8, "d":B
    const/4 v12, -0x1

    if-ne v8, v12, :cond_1

    move v6, v7

    .line 111
    .end local v7    # "cachedBytes":I
    .restart local v6    # "cachedBytes":I
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v7, v6

    .end local v6    # "cachedBytes":I
    .restart local v7    # "cachedBytes":I
    goto :goto_0

    .line 116
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cachedBytes":I
    .restart local v6    # "cachedBytes":I
    aput-byte v8, v5, v7

    .line 117
    const/4 v12, 0x4

    if-ne v6, v12, :cond_0

    .line 119
    const/4 v12, 0x0

    aget-byte v1, v5, v12

    .line 120
    .local v1, "b1":B
    const/4 v12, 0x1

    aget-byte v2, v5, v12

    .line 121
    .local v2, "b2":B
    const/4 v12, 0x2

    aget-byte v3, v5, v12

    .line 122
    .local v3, "b3":B
    const/4 v12, 0x3

    aget-byte v4, v5, v12

    .line 123
    .local v4, "b4":B
    const/4 v12, -0x2

    if-eq v1, v12, :cond_2

    const/4 v12, -0x2

    if-ne v2, v12, :cond_3

    .line 124
    :cond_2
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid Base64 input: incorrect padding, first two bytes cannot be padding"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 128
    :cond_3
    shl-int/lit8 v12, v1, 0x2

    shr-int/lit8 v13, v2, 0x4

    or-int/2addr v12, v13

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 129
    add-int/lit8 v9, v9, 0x1

    .line 130
    const/4 v12, -0x2

    if-eq v3, v12, :cond_5

    .line 132
    shl-int/lit8 v12, v2, 0x4

    shr-int/lit8 v13, v3, 0x2

    or-int/2addr v12, v13

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    const/4 v12, -0x2

    if-eq v4, v12, :cond_4

    .line 136
    shl-int/lit8 v12, v3, 0x6

    or-int/2addr v12, v4

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 137
    add-int/lit8 v9, v9, 0x1

    .line 143
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 139
    :cond_5
    const/4 v12, -0x2

    if-eq v4, v12, :cond_4

    .line 140
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid Base64 input: incorrect padding, 4th byte must be padding if 3rd byte is"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 147
    .end local v0    # "b":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v4    # "b4":B
    .end local v6    # "cachedBytes":I
    .end local v8    # "d":B
    .restart local v7    # "cachedBytes":I
    :cond_6
    if-eqz v7, :cond_7

    .line 148
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Invalid Base64 input: truncated"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 150
    :cond_7
    return v9
.end method
