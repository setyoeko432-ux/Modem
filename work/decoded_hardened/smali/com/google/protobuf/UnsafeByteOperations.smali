.class public final Lcom/google/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "UnsafeByteOperations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unsafeWrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 76
    .local v0, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 78
    .end local v0    # "offset":I
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/protobuf/NioByteString;

    invoke-direct {v1, p0}, Lcom/google/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static unsafeWriteTo(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteOutput;)V
    .locals 0
    .param p0, "bytes"    # Lcom/google/protobuf/ByteString;
    .param p1, "output"    # Lcom/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 100
    return-void
.end method
