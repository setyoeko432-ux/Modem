.class Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayEncoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream;-><init>(Lcom/google/protobuf/CodedOutputStream$1;)V

    .line 1143
    if-nez p1, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_0
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 1147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    .line 1149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1147
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 1152
    iput p2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    .line 1153
    iput p2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1154
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 1155
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .prologue
    .line 1472
    return-void
.end method

.method public final getTotalBytesWritten()I
    .locals 2

    .prologue
    .line 1481
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final spaceLeft()I
    .locals 2

    .prologue
    .line 1476
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final write(B)V
    .locals 7
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1289
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final write(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1422
    .local v1, "length":I
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1423
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v3, "Pos: %d, limit: %d, len: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1426
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final write([BII)V
    .locals 6
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1405
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1406
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    return-void

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1409
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1194
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1195
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    .line 1196
    return-void
.end method

.method public final writeByteArray(I[B)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArray(I[BII)V

    .line 1213
    return-void
.end method

.method public final writeByteArray(I[BII)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1219
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1220
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArrayNoTag([BII)V

    .line 1221
    return-void
.end method

.method public final writeByteArrayNoTag([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1240
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1241
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1242
    return-void
.end method

.method public final writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1227
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1228
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1229
    return-void
.end method

.method public final writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1206
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1207
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 1208
    return-void
.end method

.method public final writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1234
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 1235
    return-void
.end method

.method public final writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1177
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32NoTag(I)V

    .line 1178
    return-void
.end method

.method public final writeFixed32NoTag(I)V
    .locals 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1342
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1343
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1344
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1345
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    return-void

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1348
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeFixed64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1189
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64NoTag(J)V

    .line 1190
    return-void
.end method

.method public final writeFixed64NoTag(J)V
    .locals 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1388
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1389
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1390
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1391
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1392
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1393
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1394
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1395
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x38

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    return-void

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v2, "Pos: %d, limit: %d, len: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1398
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1165
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    .line 1166
    return-void
.end method

.method public final writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    if-ltz p1, :cond_0

    .line 1299
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1304
    :goto_0
    return-void

    .line 1302
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    goto :goto_0
.end method

.method public final writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1433
    return-void
.end method

.method public final writeLazy([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1416
    return-void
.end method

.method public final writeMessage(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1259
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 1260
    return-void
.end method

.method public final writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1283
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1284
    return-void
.end method

.method public final writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1265
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1266
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1267
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1268
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1269
    return-void
.end method

.method public final writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1253
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1250
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1251
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public final writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1274
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1275
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1276
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1277
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1278
    return-void
.end method

.method public final writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1201
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1202
    return-void
.end method

.method public final writeStringNoTag(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1441
    .local v6, "oldPosition":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v2, v7, 0x3

    .line 1442
    .local v2, "maxLength":I
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 1443
    .local v3, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v4

    .line 1444
    .local v4, "minLengthVarIntSize":I
    if-ne v4, v3, :cond_0

    .line 1445
    add-int v7, v6, v4

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1446
    iget-object v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v8, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v9

    invoke-static {p1, v7, v8, v9}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v5

    .line 1449
    .local v5, "newPosition":I
    iput v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1450
    sub-int v7, v5, v6

    sub-int v1, v7, v4

    .line 1451
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1452
    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1467
    .end local v1    # "length":I
    .end local v2    # "maxLength":I
    .end local v3    # "maxLengthVarIntSize":I
    .end local v4    # "minLengthVarIntSize":I
    .end local v5    # "newPosition":I
    :goto_0
    return-void

    .line 1454
    .restart local v2    # "maxLength":I
    .restart local v3    # "maxLengthVarIntSize":I
    .restart local v4    # "minLengthVarIntSize":I
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1455
    .restart local v1    # "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1456
    iget-object v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v8, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v9

    invoke-static {p1, v7, v8, v9}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1458
    .end local v1    # "length":I
    .end local v2    # "maxLength":I
    .end local v3    # "maxLengthVarIntSize":I
    .end local v4    # "minLengthVarIntSize":I
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    iput v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1463
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    goto :goto_0

    .line 1464
    .end local v0    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    :catch_1
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v7, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public final writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1160
    return-void
.end method

.method public final writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1171
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1172
    return-void
.end method

.method public final writeUInt32NoTag(I)V
    .locals 13
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x1

    const/4 v10, 0x1

    .line 1308
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 1309
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v5

    iget v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v7, v7

    add-long v1, v5, v7

    .local v1, "pos":J
    move-wide v3, v1

    .line 1311
    .end local v1    # "pos":J
    .local v3, "pos":J
    :goto_0
    and-int/lit8 v5, p1, -0x80

    if-nez v5, :cond_0

    .line 1312
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    add-long v1, v3, v11

    .end local v3    # "pos":J
    .restart local v1    # "pos":J
    int-to-byte v6, p1

    invoke-static {v5, v3, v4, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1313
    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1326
    .end local v1    # "pos":J
    :goto_1
    return-void

    .line 1316
    .restart local v3    # "pos":J
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    add-long v1, v3, v11

    .end local v3    # "pos":J
    .restart local v1    # "pos":J
    and-int/lit8 v6, p1, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v5, v3, v4, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1317
    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1318
    ushr-int/lit8 p1, p1, 0x7

    move-wide v3, v1

    .end local v1    # "pos":J
    .restart local v3    # "pos":J
    goto :goto_0

    .line 1328
    .end local v3    # "pos":J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit8 v7, p1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1329
    ushr-int/lit8 p1, p1, 0x7

    .line 1324
    :cond_2
    and-int/lit8 v5, p1, -0x80

    if-nez v5, :cond_1

    .line 1325
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-byte v7, p1

    aput-byte v7, v5, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v6, "Pos: %d, limit: %d, len: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1334
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    iget v8, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final writeUInt64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1183
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1184
    return-void
.end method

.method public final writeUInt64NoTag(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 1355
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v5

    iget v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v7, v7

    add-long v1, v5, v7

    .local v1, "pos":J
    move-wide v3, v1

    .line 1357
    .end local v1    # "pos":J
    .local v3, "pos":J
    :goto_0
    const-wide/16 v5, -0x80

    and-long/2addr v5, p1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1358
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    const-wide/16 v6, 0x1

    add-long v1, v3, v6

    .end local v3    # "pos":J
    .restart local v1    # "pos":J
    long-to-int v6, p1

    int-to-byte v6, v6

    invoke-static {v5, v3, v4, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1359
    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1372
    .end local v1    # "pos":J
    :goto_1
    return-void

    .line 1362
    .restart local v3    # "pos":J
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    const-wide/16 v6, 0x1

    add-long v1, v3, v6

    .end local v3    # "pos":J
    .restart local v1    # "pos":J
    long-to-int v6, p1

    and-int/lit8 v6, v6, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v5, v3, v4, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1363
    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1364
    const/4 v5, 0x7

    ushr-long/2addr p1, v5

    move-wide v3, v1

    .end local v1    # "pos":J
    .restart local v3    # "pos":J
    goto :goto_0

    .line 1374
    .end local v3    # "pos":J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1375
    const/4 v5, 0x7

    ushr-long/2addr p1, v5

    .line 1370
    :cond_2
    const-wide/16 v5, -0x80

    and-long/2addr v5, p1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1371
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v7, p1

    int-to-byte v7, v7

    aput-byte v7, v5, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-string v6, "Pos: %d, limit: %d, len: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1380
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
