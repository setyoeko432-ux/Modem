.class final Lcom/google/protobuf/RopeByteString;
.super Lcom/google/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RopeByteString$RopeInputStream;,
        Lcom/google/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final left:Lcom/google/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 97
    .local v0, "f1":I
    const/4 v1, 0x1

    .line 100
    .local v1, "f2":I
    :goto_0
    if-lez v1, :cond_0

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int v4, v0, v1

    .line 103
    .local v4, "temp":I
    move v0, v1

    .line 104
    move v1, v4

    .line 105
    goto :goto_0

    .line 109
    .end local v4    # "temp":I
    :cond_0
    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    sput-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 113
    sget-object v6, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "left"    # Lcom/google/protobuf/ByteString;
    .param p2, "right"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    .line 134
    iput-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    .line 135
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    .line 136
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    .line 137
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/protobuf/ByteString;
    .param p3, "x2"    # Lcom/google/protobuf/RopeByteString$1;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/RopeByteString;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/RopeByteString;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static concatenate(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 7
    .param p0, "left"    # Lcom/google/protobuf/ByteString;
    .param p1, "right"    # Lcom/google/protobuf/ByteString;

    .prologue
    const/16 v6, 0x80

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 207
    .end local p0    # "left":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object p0

    .line 160
    .restart local p0    # "left":Lcom/google/protobuf/ByteString;
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-nez v4, :cond_1

    move-object p0, p1

    .line 161
    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    add-int v2, v4, v5

    .line 165
    .local v2, "newLength":I
    if-ge v2, v6, :cond_2

    .line 168
    invoke-static {p0, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_2
    instance-of v4, p0, Lcom/google/protobuf/RopeByteString;

    if-eqz v4, :cond_4

    move-object v0, p0

    .line 172
    check-cast v0, Lcom/google/protobuf/RopeByteString;

    .line 173
    .local v0, "leftRope":Lcom/google/protobuf/RopeByteString;
    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v6, :cond_3

    .line 184
    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-static {v4, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 185
    .local v3, "newRight":Lcom/google/protobuf/ByteString;
    new-instance p0, Lcom/google/protobuf/RopeByteString;

    .end local p0    # "left":Lcom/google/protobuf/ByteString;
    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {p0, v4, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 188
    .end local v3    # "newRight":Lcom/google/protobuf/ByteString;
    .restart local p0    # "left":Lcom/google/protobuf/ByteString;
    :cond_3
    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 189
    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString;->getTreeDepth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 195
    new-instance v3, Lcom/google/protobuf/RopeByteString;

    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-direct {v3, v4, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .line 196
    .restart local v3    # "newRight":Lcom/google/protobuf/ByteString;
    new-instance p0, Lcom/google/protobuf/RopeByteString;

    .end local p0    # "left":Lcom/google/protobuf/ByteString;
    iget-object v4, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {p0, v4, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 201
    .end local v0    # "leftRope":Lcom/google/protobuf/RopeByteString;
    .end local v3    # "newRight":Lcom/google/protobuf/ByteString;
    .restart local p0    # "left":Lcom/google/protobuf/ByteString;
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 202
    .local v1, "newDepth":I
    sget-object v4, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v4, v4, v1

    if-lt v2, v4, :cond_5

    .line 204
    new-instance v4, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v4, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object p0, v4

    goto :goto_0

    .line 207
    :cond_5
    new-instance v4, Lcom/google/protobuf/RopeByteString$Balancer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>(Lcom/google/protobuf/RopeByteString$1;)V

    invoke-static {v4, p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->access$100(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 5
    .param p0, "left"    # Lcom/google/protobuf/ByteString;
    .param p1, "right"    # Lcom/google/protobuf/ByteString;

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    .line 221
    .local v1, "leftSize":I
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    .line 222
    .local v2, "rightSize":I
    add-int v3, v1, v2

    new-array v0, v3, [B

    .line 223
    .local v0, "bytes":[B
    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 224
    invoke-virtual {p1, v0, v4, v1, v2}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 225
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    return-object v3
.end method

.method private equalsFragments(Lcom/google/protobuf/ByteString;)Z
    .locals 12
    .param p1, "other"    # Lcom/google/protobuf/ByteString;

    .prologue
    const/4 v11, 0x0

    .line 482
    const/4 v8, 0x0

    .line 483
    .local v8, "thisOffset":I
    new-instance v7, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v7, p0, v11}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 484
    .local v7, "thisIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/protobuf/ByteString$LeafByteString;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/ByteString$LeafByteString;

    .line 486
    .local v10, "thisString":Lcom/google/protobuf/ByteString$LeafByteString;
    const/4 v4, 0x0

    .line 487
    .local v4, "thatOffset":I
    new-instance v3, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v11}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 488
    .local v3, "thatIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/protobuf/ByteString$LeafByteString;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString$LeafByteString;

    .line 490
    .local v6, "thatString":Lcom/google/protobuf/ByteString$LeafByteString;
    const/4 v1, 0x0

    .line 492
    .local v1, "pos":I
    :goto_0
    invoke-virtual {v10}, Lcom/google/protobuf/ByteString$LeafByteString;->size()I

    move-result v11

    sub-int v9, v11, v8

    .line 493
    .local v9, "thisRemaining":I
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$LeafByteString;->size()I

    move-result v11

    sub-int v5, v11, v4

    .line 494
    .local v5, "thatRemaining":I
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 497
    .local v0, "bytesToCompare":I
    if-nez v8, :cond_0

    .line 498
    invoke-virtual {v10, v6, v4, v0}, Lcom/google/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/google/protobuf/ByteString;II)Z

    move-result v2

    .line 500
    .local v2, "stillEqual":Z
    :goto_1
    if-nez v2, :cond_1

    .line 501
    const/4 v11, 0x0

    .line 507
    :goto_2
    return v11

    .line 499
    .end local v2    # "stillEqual":Z
    :cond_0
    invoke-virtual {v6, v10, v8, v0}, Lcom/google/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/google/protobuf/ByteString;II)Z

    move-result v2

    goto :goto_1

    .line 504
    .restart local v2    # "stillEqual":Z
    :cond_1
    add-int/2addr v1, v0

    .line 505
    iget v11, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-lt v1, v11, :cond_3

    .line 506
    iget v11, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v1, v11, :cond_2

    .line 507
    const/4 v11, 0x1

    goto :goto_2

    .line 509
    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 512
    :cond_3
    if-ne v0, v9, :cond_4

    .line 513
    const/4 v8, 0x0

    .line 514
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "thisString":Lcom/google/protobuf/ByteString$LeafByteString;
    check-cast v10, Lcom/google/protobuf/ByteString$LeafByteString;

    .line 518
    .restart local v10    # "thisString":Lcom/google/protobuf/ByteString$LeafByteString;
    :goto_3
    if-ne v0, v5, :cond_5

    .line 519
    const/4 v4, 0x0

    .line 520
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "thatString":Lcom/google/protobuf/ByteString$LeafByteString;
    check-cast v6, Lcom/google/protobuf/ByteString$LeafByteString;

    .restart local v6    # "thatString":Lcom/google/protobuf/ByteString$LeafByteString;
    goto :goto_0

    .line 516
    :cond_4
    add-int/2addr v8, v0

    goto :goto_3

    .line 522
    :cond_5
    add-int/2addr v4, v0

    goto :goto_0
.end method

.method static newInstanceForTest(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/RopeByteString;
    .locals 1
    .param p0, "left"    # Lcom/google/protobuf/ByteString;
    .param p1, "right"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 240
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lcom/google/protobuf/RopeByteString$PieceIterator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 376
    .local v1, "pieces":Lcom/google/protobuf/RopeByteString$PieceIterator;
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object v0

    .line 378
    .local v0, "byteString":Lcom/google/protobuf/ByteString$LeafByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LeafByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .end local v0    # "byteString":Lcom/google/protobuf/ByteString$LeafByteString;
    :cond_0
    return-object v2
.end method

.method public byteAt(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 255
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v0}, Lcom/google/protobuf/RopeByteString;->checkIndex(II)V

    .line 258
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    goto :goto_0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 361
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 362
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 5
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .prologue
    .line 345
    add-int v1, p2, p4

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v1, v2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 356
    :goto_0
    return-void

    .line 347
    :cond_0
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 351
    :cond_1
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v1, p2

    .line 352
    .local v0, "leftLength":I
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 353
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v4, p4, v0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 443
    if-ne p1, p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v3

    .line 446
    :cond_1
    instance-of v5, p1, Lcom/google/protobuf/ByteString;

    if-nez v5, :cond_2

    move v3, v4

    .line 447
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 450
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 451
    .local v0, "otherByteString":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 452
    goto :goto_0

    .line 454
    :cond_3
    iget v5, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-eqz v5, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->peekCachedHashCode()I

    move-result v2

    .line 464
    .local v2, "thisHash":I
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v1

    .line 465
    .local v1, "thatHash":I
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eq v2, v1, :cond_4

    move v3, v4

    .line 466
    goto :goto_0

    .line 469
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/protobuf/RopeByteString;->equalsFragments(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    goto :goto_0
.end method

.method protected getTreeDepth()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method protected isBalanced()Z
    .locals 3

    .prologue
    .line 288
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidUtf8()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {v3, v2, v2, v4}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 420
    .local v0, "leftPartial":I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 421
    .local v1, "state":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 6
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 529
    add-int v2, p2, p3

    .line 530
    .local v2, "toIndex":I
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 531
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    .line 537
    :goto_0
    return v3

    .line 532
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v3, :cond_1

    .line 533
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    goto :goto_0

    .line 535
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v3, p2

    .line 536
    .local v0, "leftLength":I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v1

    .line 537
    .local v1, "leftPartial":I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    goto :goto_0
.end method

.method protected partialIsValidUtf8(III)I
    .locals 6
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 426
    add-int v2, p2, p3

    .line 427
    .local v2, "toIndex":I
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    .line 434
    :goto_0
    return v3

    .line 429
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v3, :cond_1

    .line 430
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    goto :goto_0

    .line 432
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v3, p2

    .line 433
    .local v0, "leftLength":I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 434
    .local v1, "leftPartial":I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .locals 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 307
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, p2, v3}, Lcom/google/protobuf/RopeByteString;->checkRange(III)I

    move-result v1

    .line 309
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 311
    sget-object p0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 336
    .end local p0    # "this":Lcom/google/protobuf/RopeByteString;
    :cond_0
    :goto_0
    return-object p0

    .line 314
    .restart local p0    # "this":Lcom/google/protobuf/RopeByteString;
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-eq v1, v3, :cond_0

    .line 320
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v3, :cond_2

    .line 322
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 325
    :cond_2
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v5, p2, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/ByteString;->substring(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 332
    .local v0, "leftSub":Lcom/google/protobuf/ByteString;
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v5, p2, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 336
    .local v2, "rightSub":Lcom/google/protobuf/ByteString;
    new-instance p0, Lcom/google/protobuf/RopeByteString;

    .end local p0    # "this":Lcom/google/protobuf/RopeByteString;
    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method

.method protected toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 411
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method writeTo(Lcom/google/protobuf/ByteOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 406
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 407
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 386
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 387
    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    add-int v1, p2, p3

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v1, v2, :cond_0

    .line 393
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 401
    :goto_0
    return-void

    .line 394
    :cond_0
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    .line 397
    :cond_1
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v1, p2

    .line 398
    .local v0, "numberToWriteInLeft":I
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 399
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method
