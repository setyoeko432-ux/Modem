.class public final Lcom/google/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedInputStream$RefillCallback;,
        Lcom/google/protobuf/CodedInputStream$SkippedDataSink;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x64

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private refillCallback:Lcom/google/protobuf/CodedInputStream$RefillCallback;

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    iput-boolean v1, p0, Lcom/google/protobuf/CodedInputStream;->enableAliasing:Z

    .line 878
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 882
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 885
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream;->refillCallback:Lcom/google/protobuf/CodedInputStream$RefillCallback;

    .line 902
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 903
    const/4 p2, 0x0

    .line 904
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 905
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 906
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 907
    iput-boolean v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferIsImmutable:Z

    .line 908
    return-void
.end method

.method private constructor <init>([BIIZ)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "bufferIsImmutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/CodedInputStream;->enableAliasing:Z

    .line 878
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 882
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 885
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 1050
    iput-object v1, p0, Lcom/google/protobuf/CodedInputStream;->refillCallback:Lcom/google/protobuf/CodedInputStream$RefillCallback;

    .line 893
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 894
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 895
    iput p2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 896
    neg-int v0, p2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 897
    iput-object v1, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    .line 898
    iput-boolean p4, p0, Lcom/google/protobuf/CodedInputStream;->bufferIsImmutable:Z

    .line 899
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/CodedInputStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 53
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/CodedInputStream;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    return-object v0
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 840
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 854
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 58
    new-instance v0, Lcom/google/protobuf/CodedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method static newInstance(Ljava/io/InputStream;I)Lcom/google/protobuf/CodedInputStream;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/CodedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/CodedInputStream;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 121
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v2

    .line 127
    :goto_0
    return-object v2

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 125
    .local v1, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 126
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public static newInstance([B)Lcom/google/protobuf/CodedInputStream;
    .locals 2
    .param p0, "buf"    # [B

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/CodedInputStream;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "bufferIsImmutable"    # Z

    .prologue
    .line 88
    new-instance v1, Lcom/google/protobuf/CodedInputStream;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStream;-><init>([BIIZ)V

    .line 95
    .local v1, "result":Lcom/google/protobuf/CodedInputStream;
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readRawBytesSlowPath(I)[B
    .locals 14
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x1000

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 1155
    if-gtz p1, :cond_2

    .line 1156
    if-nez p1, :cond_1

    .line 1157
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 1253
    :cond_0
    return-object v1

    .line 1159
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 1164
    :cond_2
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v9, v10

    add-int v4, v9, p1

    .line 1165
    .local v4, "currentMessageSize":I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    if-le v4, v9, :cond_3

    .line 1166
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 1170
    :cond_3
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v4, v9, :cond_4

    .line 1172
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 1173
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 1177
    :cond_4
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v9, :cond_5

    .line 1178
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 1181
    :cond_5
    iget v6, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1182
    .local v6, "originalBufferPos":I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int v0, v9, v10

    .line 1185
    .local v0, "bufferedBytes":I
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v10, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 1186
    iput v11, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1187
    iput v11, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 1190
    sub-int v8, p1, v0

    .line 1192
    .local v8, "sizeLeft":I
    if-lt v8, v13, :cond_6

    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    if-gt v8, v9, :cond_8

    .line 1195
    :cond_6
    new-array v1, p1, [B

    .line 1198
    .local v1, "bytes":[B
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v9, v6, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    move v7, v0

    .line 1202
    .local v7, "pos":I
    :goto_0
    array-length v9, v1

    if-ge v7, v9, :cond_0

    .line 1203
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    sub-int v10, p1, v7

    invoke-virtual {v9, v1, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 1204
    .local v5, "n":I
    if-ne v5, v12, :cond_7

    .line 1205
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 1207
    :cond_7
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 1208
    add-int/2addr v7, v5

    .line 1209
    goto :goto_0

    .line 1221
    .end local v1    # "bytes":[B
    .end local v5    # "n":I
    .end local v7    # "pos":I
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v3, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_1
    if-lez v8, :cond_b

    .line 1225
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v2, v9, [B

    .line 1226
    .local v2, "chunk":[B
    const/4 v7, 0x0

    .line 1227
    .restart local v7    # "pos":I
    :goto_2
    array-length v9, v2

    if-ge v7, v9, :cond_a

    .line 1228
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    array-length v10, v2

    sub-int/2addr v10, v7

    invoke-virtual {v9, v2, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 1229
    .restart local v5    # "n":I
    if-ne v5, v12, :cond_9

    .line 1230
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9

    .line 1232
    :cond_9
    iget v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 1233
    add-int/2addr v7, v5

    .line 1234
    goto :goto_2

    .line 1235
    .end local v5    # "n":I
    :cond_a
    array-length v9, v2

    sub-int/2addr v8, v9

    .line 1236
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1240
    .end local v2    # "chunk":[B
    .end local v7    # "pos":I
    :cond_b
    new-array v1, p1, [B

    .line 1243
    .restart local v1    # "bytes":[B
    iget-object v9, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    invoke-static {v9, v6, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1246
    move v7, v0

    .line 1247
    .restart local v7    # "pos":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1248
    .restart local v2    # "chunk":[B
    array-length v10, v2

    invoke-static {v2, v11, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1249
    array-length v10, v2

    add-int/2addr v7, v10

    .line 1250
    goto :goto_3
.end method

.method public static readRawVarint32(ILjava/io/InputStream;)I
    .locals 5
    .param p0, "firstByte"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 687
    and-int/lit16 v3, p0, 0x80

    if-nez v3, :cond_1

    move v2, p0

    .line 710
    :cond_0
    :goto_0
    return v2

    .line 691
    :cond_1
    and-int/lit8 v2, p0, 0x7f

    .line 692
    .local v2, "result":I
    const/4 v1, 0x7

    .line 693
    .local v1, "offset":I
    :goto_1
    const/16 v3, 0x20

    if-ge v1, v3, :cond_4

    .line 694
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 695
    .local v0, "b":I
    if-ne v0, v4, :cond_2

    .line 696
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 698
    :cond_2
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 699
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 693
    add-int/lit8 v1, v1, 0x7

    goto :goto_1

    .line 704
    :cond_3
    add-int/lit8 v1, v1, 0x7

    .end local v0    # "b":I
    :cond_4
    const/16 v3, 0x40

    if-ge v1, v3, :cond_6

    .line 705
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 706
    .restart local v0    # "b":I
    if-ne v0, v4, :cond_5

    .line 707
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 709
    :cond_5
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_3

    goto :goto_0

    .line 713
    .end local v0    # "b":I
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 674
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 675
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 677
    :cond_0
    invoke-static {v0, p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    return v1
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 995
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 996
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int v0, v1, v2

    .line 997
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 999
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    .line 1000
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(I)V
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1064
    :cond_0
    return-void
.end method

.method private skipRawBytesSlowPath(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1276
    if-gez p1, :cond_0

    .line 1277
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1280
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v1, v2, :cond_1

    .line 1282
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    .line 1284
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1288
    :cond_1
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int v0, v1, v2

    .line 1289
    .local v0, "pos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1293
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    .line 1294
    :goto_0
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v1, v2, :cond_2

    .line 1295
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v0, v1

    .line 1296
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1297
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    goto :goto_0

    .line 1300
    :cond_2
    sub-int v1, p1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1301
    return-void
.end method

.method private skipRawVarint()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 643
    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v4, v5

    if-lt v4, v6, :cond_1

    .line 644
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 645
    .local v0, "buffer":[B
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 646
    .local v2, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "pos":I
    .local v3, "pos":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 647
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v4, v0, v3

    if-ltz v4, :cond_0

    .line 648
    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 654
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v2    # "pos":I
    :goto_1
    return-void

    .line 646
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v2    # "pos":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0

    .line 653
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "pos":I
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->skipRawVarintSlowPath()V

    goto :goto_1
.end method

.method private skipRawVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 659
    return-void

    .line 657
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private tryRefillBuffer(I)Z
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1075
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-gt v3, v4, :cond_0

    .line 1076
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refillBuffer() called when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes were already available in buffer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1081
    :cond_0
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    if-le v3, v4, :cond_2

    .line 1118
    :cond_1
    :goto_0
    return v2

    .line 1086
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->refillCallback:Lcom/google/protobuf/CodedInputStream$RefillCallback;

    if-eqz v3, :cond_3

    .line 1087
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->refillCallback:Lcom/google/protobuf/CodedInputStream$RefillCallback;

    invoke-interface {v3}, Lcom/google/protobuf/CodedInputStream$RefillCallback;->onRefill()V

    .line 1090
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 1091
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1092
    .local v1, "pos":I
    if-lez v1, :cond_5

    .line 1093
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-le v3, v1, :cond_4

    .line 1094
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    :cond_4
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 1097
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 1098
    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1101
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget-object v6, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1102
    .local v0, "bytesRead":I
    if-eqz v0, :cond_6

    const/4 v3, -0x1

    if-lt v0, v3, :cond_6

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    array-length v3, v3

    if-le v0, v3, :cond_7

    .line 1103
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1107
    :cond_7
    if-lez v0, :cond_1

    .line 1108
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    .line 1110
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_8

    .line 1111
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1113
    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 1114
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-lt v2, p1, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream;->tryRefillBuffer(I)Z

    move-result v2

    goto/16 :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 163
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 164
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 166
    :cond_0
    return-void
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream;->enableAliasing:Z

    .line 912
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 3

    .prologue
    .line 1021
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 1022
    const/4 v1, -0x1

    .line 1026
    :goto_0
    return v1

    .line 1025
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int v0, v1, v2

    .line 1026
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public getLastTag()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1035
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 1012
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 1013
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 1014
    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 979
    if-gez p1, :cond_0

    .line 980
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 982
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 983
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 984
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 985
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 987
    :cond_1
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->currentLimit:I

    .line 989
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->recomputeBufferSizeAfterLimit()V

    .line 991
    return v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 526
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 529
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v4, v1

    .line 530
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 531
    .local v0, "result":[B
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 535
    .end local v0    # "result":[B
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytesSlowPath(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 542
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    if-lez v1, :cond_1

    .line 548
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->input:Ljava/io/InputStream;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferIsImmutable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream;->enableAliasing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 549
    invoke-static {v2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 552
    .local v0, "result":Ljava/nio/ByteBuffer;
    :goto_0
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 558
    .end local v0    # "result":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v0

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v4, v1

    .line 550
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_1
    if-nez v1, :cond_2

    .line 555
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 558
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytesSlowPath(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 507
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    if-lez v1, :cond_1

    .line 510
    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferIsImmutable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/protobuf/CodedInputStream;->enableAliasing:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 511
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 513
    .local v0, "result":Lcom/google/protobuf/ByteString;
    :goto_0
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 519
    .end local v0    # "result":Lcom/google/protobuf/ByteString;
    :goto_1
    return-object v0

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 512
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_1
    if-nez v1, :cond_2

    .line 516
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    goto :goto_1

    .line 519
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytesSlowPath(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 440
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 442
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 443
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 444
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    .line 445
    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    .line 444
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 446
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 447
    return-object v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 423
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 425
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 426
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 427
    const/4 v0, 0x4

    .line 428
    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 427
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 429
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 430
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 492
    .local v0, "length":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v3, v4, :cond_0

    .line 493
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 495
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 496
    .local v1, "oldLimit":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 497
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 498
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 499
    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 500
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 501
    return-object v2
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 474
    .local v0, "length":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 475
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 477
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 478
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 479
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 480
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 481
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 482
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 483
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1128
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 1129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1142
    .local v0, "pos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    .line 1143
    add-int v1, v0, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1144
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1146
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream;->readRawBytesSlowPath(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 791
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 794
    .local v1, "pos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v2, v1

    if-ge v2, v3, :cond_0

    .line 795
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    .line 796
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 800
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 801
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method public readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const-wide/16 v7, 0xff

    .line 809
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 812
    .local v1, "pos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v2, v1

    if-ge v2, v6, :cond_0

    .line 813
    invoke-direct {p0, v6}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    .line 814
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 818
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 819
    aget-byte v2, v0, v1

    int-to-long v2, v2

    and-long/2addr v2, v7

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readRawVarint32()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 606
    .local v1, "pos":I
    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v5, v1, :cond_0

    .line 639
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64SlowPath()J

    move-result-wide v5

    long-to-int v3, v5

    :goto_1
    return v3

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 612
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v3, v0, v1

    .local v3, "x":I
    if-ltz v3, :cond_1

    .line 613
    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    move v1, v2

    .line 614
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_1

    .line 615
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    iget v5, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v5, v2

    const/16 v6, 0x9

    if-ge v5, v6, :cond_2

    move v1, v2

    .line 616
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .line 617
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v5, v0, v2

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    if-gez v3, :cond_4

    .line 618
    xor-int/lit8 v3, v3, -0x80

    .line 636
    :cond_3
    :goto_2
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_1

    .line 619
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v1

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v3, v5

    if-ltz v3, :cond_5

    .line 620
    xor-int/lit16 v3, v3, 0x3f80

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_2

    .line 621
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v5, v0, v2

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v3, v5

    if-gez v3, :cond_6

    .line 622
    const v5, -0x1fc080

    xor-int/2addr v3, v5

    goto :goto_2

    .line 624
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v4, v0, v1

    .line 625
    .local v4, "y":I
    shl-int/lit8 v5, v4, 0x1c

    xor-int/2addr v3, v5

    .line 626
    const v5, 0xfe03f80

    xor-int/2addr v3, v5

    .line 627
    if-gez v4, :cond_7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v5, v0, v2

    if-gez v5, :cond_3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v1

    if-gez v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v5, v0, v2

    if-gez v5, :cond_3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v1

    if-gez v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v5, v0, v2

    if-gez v5, :cond_3

    goto :goto_0

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_7
    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_2
.end method

.method public readRawVarint64()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 730
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 732
    .local v1, "pos":I
    iget v6, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-ne v6, v1, :cond_0

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64SlowPath()J

    move-result-wide v3

    :goto_1
    return-wide v3

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 739
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v5, v0, v1

    .local v5, "y":I
    if-ltz v5, :cond_1

    .line 740
    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 741
    int-to-long v3, v5

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_1

    .line 742
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    iget v6, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v6, v2

    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    move v1, v2

    .line 743
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .line 744
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v5, v6

    if-gez v5, :cond_4

    .line 745
    xor-int/lit8 v6, v5, -0x80

    int-to-long v3, v6

    .line 769
    .local v3, "x":J
    :cond_3
    :goto_2
    iput v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_1

    .line 746
    .end local v3    # "x":J
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0xe

    xor-int/2addr v5, v6

    if-ltz v5, :cond_5

    .line 747
    xor-int/lit16 v6, v5, 0x3f80

    int-to-long v3, v6

    .restart local v3    # "x":J
    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_2

    .line 748
    .end local v1    # "pos":I
    .end local v3    # "x":J
    .restart local v2    # "pos":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v5, v6

    if-gez v5, :cond_6

    .line 749
    const v6, -0x1fc080

    xor-int/2addr v6, v5

    int-to-long v3, v6

    .restart local v3    # "x":J
    goto :goto_2

    .line 750
    .end local v3    # "x":J
    :cond_6
    int-to-long v6, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v8, v0, v1

    int-to-long v8, v8

    const/16 v10, 0x1c

    shl-long/2addr v8, v10

    xor-long v3, v6, v8

    .restart local v3    # "x":J
    cmp-long v6, v3, v11

    if-ltz v6, :cond_7

    .line 751
    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v3, v6

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_2

    .line 752
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    cmp-long v6, v3, v11

    if-gez v6, :cond_8

    .line 753
    const-wide v6, -0x7f01fc080L

    xor-long/2addr v3, v6

    goto :goto_2

    .line 754
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    cmp-long v6, v3, v11

    if-ltz v6, :cond_9

    .line 755
    const-wide v6, 0x3f80fe03f80L

    xor-long/2addr v3, v6

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_2

    .line 756
    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    cmp-long v6, v3, v11

    if-gez v6, :cond_a

    .line 757
    const-wide v6, -0x1fc07f01fc080L

    xor-long/2addr v3, v6

    goto :goto_2

    .line 760
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v3, v6

    .line 761
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v3, v6

    .line 763
    cmp-long v6, v3, v11

    if-gez v6, :cond_b

    .line 764
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    cmp-long v6, v6, v11

    if-gez v6, :cond_3

    goto/16 :goto_0

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    :cond_b
    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto/16 :goto_2
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    const-wide/16 v1, 0x0

    .line 779
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 780
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawByte()B

    move-result v0

    .line 781
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 782
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 783
    return-wide v1

    .line 779
    :cond_0
    add-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 786
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 363
    .local v1, "size":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 367
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 378
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 369
    :cond_0
    if-nez v1, :cond_1

    .line 370
    const-string v0, ""

    goto :goto_0

    .line 371
    :cond_1
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-gt v1, v2, :cond_2

    .line 372
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    .line 373
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 374
    .restart local v0    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    .line 378
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStream;->readRawBytesSlowPath(I)[B

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 390
    .local v3, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 392
    .local v1, "oldPos":I
    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_0

    if-lez v3, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 396
    .local v0, "bytes":[B
    add-int v4, v1, v3

    iput v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 397
    move v2, v1

    .line 411
    .local v2, "pos":I
    :goto_0
    add-int v4, v2, v3

    invoke-static {v0, v2, v4}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 412
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 398
    .end local v0    # "bytes":[B
    .end local v2    # "pos":I
    :cond_0
    if-nez v3, :cond_1

    .line 399
    const-string v4, ""

    .line 414
    :goto_1
    return-object v4

    .line 400
    :cond_1
    iget v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    if-gt v3, v4, :cond_2

    .line 401
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->refillBuffer(I)V

    .line 402
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->buffer:[B

    .line 403
    .restart local v0    # "bytes":[B
    const/4 v2, 0x0

    .line 404
    .restart local v2    # "pos":I
    add-int v4, v2, v3

    iput v4, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    goto :goto_0

    .line 407
    .end local v0    # "bytes":[B
    .end local v2    # "pos":I
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/protobuf/CodedInputStream;->readRawBytesSlowPath(I)[B

    move-result-object v0

    .line 408
    .restart local v0    # "bytes":[B
    const/4 v2, 0x0

    .restart local v2    # "pos":I
    goto :goto_0

    .line 414
    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 150
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    .line 145
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 150
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->lastTag:I

    goto :goto_0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 467
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->totalBytesRetired:I

    .line 962
    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 922
    if-gez p1, :cond_0

    .line 923
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 927
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    .line 928
    return v0
.end method

.method public setSizeLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 948
    if-gez p1, :cond_0

    .line 949
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 952
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 953
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/protobuf/CodedInputStream;->sizeLimit:I

    .line 954
    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 179
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 181
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream;->skipRawVarint()V

    .line 199
    :goto_0
    return v0

    .line 184
    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    goto :goto_0

    .line 190
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->skipMessage()V

    .line 192
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    .line 191
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    goto :goto_0

    .line 196
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream;->skipRawBytes(I)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 6
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 214
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 252
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    .line 217
    .local v1, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 218
    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 249
    .end local v1    # "value":J
    :goto_0
    return v3

    .line 222
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian64()J

    move-result-wide v1

    .line 223
    .restart local v1    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 224
    invoke-virtual {p2, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 228
    .end local v1    # "value":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 229
    .local v1, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 230
    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 234
    .end local v1    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_3
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 235
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 236
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 238
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 239
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 243
    .end local v0    # "endtag":I
    :pswitch_4
    const/4 v3, 0x0

    goto :goto_0

    .line 246
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readRawLittleEndian32()I

    move-result v1

    .line 247
    .local v1, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 248
    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 263
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    :cond_1
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 277
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 1265
    iget v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream;->bufferPos:I

    .line 1269
    :goto_0
    return-void

    .line 1267
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream;->skipRawBytesSlowPath(I)V

    goto :goto_0
.end method
