.class final Lcom/google/protobuf/DoubleArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "DoubleArrayList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$DoubleList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/protobuf/Internal$DoubleList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;


# instance fields
.field private array:[D

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/DoubleArrayList;-><init>()V

    sput-object v0, Lcom/google/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;

    .line 50
    sget-object v0, Lcom/google/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;

    invoke-virtual {v0}, Lcom/google/protobuf/DoubleArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/DoubleArrayList;-><init>([DI)V

    .line 73
    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "other"    # [D
    .param p2, "size"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 81
    iput p2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 82
    return-void
.end method

.method private addDouble(ID)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # D

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 173
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-le p1, v2, :cond_1

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    iget-object v3, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 179
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget-object v3, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v2, p1

    .line 194
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 195
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 196
    return-void

    .line 182
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 183
    .local v0, "length":I
    new-array v1, v0, [D

    .line 186
    .local v1, "newArray":[D
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iput-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    goto :goto_0
.end method

.method public static emptyList()Lcom/google/protobuf/DoubleArrayList;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 265
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_1

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    return-void
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Double;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .prologue
    .line 157
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 158
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 207
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/DoubleArrayList;

    if-nez v4, :cond_2

    .line 208
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 230
    :cond_1
    :goto_0
    return v3

    :cond_2
    move-object v0, p1

    .line 211
    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    .line 212
    .local v0, "list":Lcom/google/protobuf/DoubleArrayList;
    iget v4, v0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-eqz v4, :cond_1

    .line 216
    const v4, 0x7fffffff

    iget v5, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int v2, v4, v5

    .line 217
    .local v2, "overflow":I
    iget v4, v0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v2, v4, :cond_3

    .line 219
    new-instance v3, Ljava/lang/OutOfMemoryError;

    invoke-direct {v3}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v3

    .line 222
    :cond_3
    iget v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    iget v5, v0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int v1, v4, v5

    .line 223
    .local v1, "newSize":I
    iget-object v4, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    array-length v4, v4

    if-le v1, v4, :cond_4

    .line 224
    iget-object v4, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 227
    :cond_4
    iget-object v4, v0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget-object v5, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget v6, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    iget v7, v0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-static {v4, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iput v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 229
    iget v3, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 230
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public addDouble(D)V
    .locals 1
    .param p1, "element"    # D

    .prologue
    .line 165
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 166
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    instance-of v5, p1, Lcom/google/protobuf/DoubleArrayList;

    if-nez v5, :cond_2

    .line 90
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 92
    check-cast v2, Lcom/google/protobuf/DoubleArrayList;

    .line 93
    .local v2, "other":Lcom/google/protobuf/DoubleArrayList;
    iget v5, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    iget v6, v2, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 94
    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, v2, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 98
    .local v0, "arr":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v1, v5, :cond_0

    .line 99
    iget-object v5, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v1

    aget-wide v7, v0, v1

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_4

    move v3, v4

    .line 100
    goto :goto_0

    .line 98
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 133
    iget-object v0, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 109
    const/4 v3, 0x1

    .line 110
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v2, v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 112
    .local v0, "bits":J
    mul-int/lit8 v4, v3, 0x1f

    invoke-static {v0, v1}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v5

    add-int v3, v4, v5

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "bits":J
    :cond_0
    return v3
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_0
    new-instance v0, Lcom/google/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Double;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 250
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 251
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v2, p1

    .line 252
    .local v0, "value":D
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget v5, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 254
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 240
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 241
    const/4 v1, 0x1

    .line 244
    :goto_1
    return v1

    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .prologue
    .line 143
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(ID)D
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # D

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 149
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 150
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v2, p1

    .line 151
    .local v0, "previousValue":D
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v2, p1

    .line 152
    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    return v0
.end method
