.class public final Lcom/google/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private count:I

.field private isMutable:Z

.field private memoizedSerializedSize:I

.field private objects:[Ljava/lang/Object;

.field private tags:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    new-array v1, v3, [I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 114
    const/4 v0, 0x0

    new-array v1, v2, [I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 115
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "tags"    # [I
    .param p3, "objects"    # [Ljava/lang/Object;
    .param p4, "isMutable"    # Z

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 121
    iput p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 122
    iput-object p2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 123
    iput-object p3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 124
    iput-boolean p4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 125
    return-void
.end method

.method private ensureCapacity()V
    .locals 4

    .prologue
    .line 283
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 284
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/16 v0, 0x8

    .line 285
    .local v0, "increment":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int v1, v2, v0

    .line 287
    .local v1, "newLength":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 288
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 290
    .end local v0    # "increment":I
    .end local v1    # "newLength":I
    :cond_0
    return-void

    .line 284
    :cond_1
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    shr-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 372
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :cond_1
    return-object p0
.end method

.method static mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 7
    .param p0, "first"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p1, "second"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    const/4 v6, 0x0

    .line 77
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int v0, v3, v4

    .line 78
    .local v0, "count":I
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 79
    .local v2, "tags":[I
    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v5, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "objects":[Ljava/lang/Object;
    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v5, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v3, Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method static newInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private storeField(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    .line 274
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 275
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    aput-object p2, v0, v1

    .line 276
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 277
    return-void
.end method


# virtual methods
.method checkMutable()V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 143
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-ne p0, p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 227
    goto :goto_0

    .line 230
    :cond_2
    instance-of v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;

    if-nez v3, :cond_3

    move v1, v2

    .line 231
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 234
    check-cast v0, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 235
    .local v0, "other":Lcom/google/protobuf/UnknownFieldSetLite;
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v4, v0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v4, v0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 237
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 238
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 184
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 185
    .local v2, "size":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move v3, v2

    .line 217
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 189
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v4, v5, v1

    .line 192
    .local v4, "tag":I
    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 193
    .local v0, "fieldNumber":I
    invoke-static {v4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 211
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 195
    :pswitch_1
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v2, v5

    .line 190
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :pswitch_2
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 199
    goto :goto_2

    .line 201
    :pswitch_3
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v5

    add-int/2addr v2, v5

    .line 202
    goto :goto_2

    .line 204
    :pswitch_4
    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v0, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v2, v5

    .line 205
    goto :goto_2

    .line 207
    :pswitch_5
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 208
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 209
    goto :goto_2

    .line 215
    .end local v0    # "fieldNumber":I
    .end local v4    # "tag":I
    :cond_1
    iput v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    move v3, v2

    .line 217
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 247
    const/16 v0, 0x11

    .line 249
    .local v0, "hashCode":I
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit16 v0, v1, 0x20f

    .line 250
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 251
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 253
    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 134
    return-void
.end method

.method mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 5
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 302
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 303
    .local v0, "fieldNumber":I
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 326
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 305
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 324
    :goto_0
    return v2

    .line 308
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 314
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 317
    :pswitch_4
    new-instance v1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    .line 318
    .local v1, "subFieldSet":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-direct {v1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 319
    const/4 v3, 0x4

    .line 320
    invoke-static {v0, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    .line 319
    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 321
    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_0

    .line 324
    .end local v1    # "subFieldSet":Lcom/google/protobuf/UnknownFieldSetLite;
    :pswitch_5
    const/4 v2, 0x0

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 361
    return-object p0
.end method

.method mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 345
    return-object p0
.end method

.method final printWithIndent(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .prologue
    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 267
    .local v0, "fieldNumber":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, p2, v2, v3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "fieldNumber":I
    :cond_0
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v3, v1

    .line 153
    .local v2, "tag":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 154
    .local v0, "fieldNumber":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 173
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 156
    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 151
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    .line 162
    :pswitch_3
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_1

    .line 165
    :pswitch_4
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 168
    :pswitch_5
    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 169
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 170
    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    goto :goto_1

    .line 176
    .end local v0    # "fieldNumber":I
    .end local v2    # "tag":I
    :cond_0
    return-void

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
