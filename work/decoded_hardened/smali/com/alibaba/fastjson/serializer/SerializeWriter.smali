.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeautres:I


# instance fields
.field protected beanToArray:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    .line 140
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeautres:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 68
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "initialSize"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 116
    if-gtz p2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 122
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 88
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 90
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 96
    :goto_0
    move v1, p2

    .line 97
    .local v1, "featuresValue":I
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, p3, v2

    .line 98
    .local v0, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v4

    or-int/2addr v1, v4

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v1    # "featuresValue":I
    :cond_0
    const/16 v2, 0x800

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    goto :goto_0

    .line 100
    .restart local v1    # "featuresValue":I
    :cond_1
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 103
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 73
    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 369
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 370
    .local v1, "bytesLength":I
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 372
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 373
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 374
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 377
    :cond_0
    array-length v3, v0

    if-ge v3, v1, :cond_1

    .line 378
    new-array v0, v1, [B

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v7, v4, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v2

    .line 382
    .local v2, "position":I
    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 383
    return v2
.end method

.method private encodeToUTF8Bytes()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 387
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 388
    .local v1, "bytesLength":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 390
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 391
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 392
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 395
    :cond_0
    array-length v4, v0

    if-ge v4, v1, :cond_1

    .line 396
    new-array v0, v1, [B

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v4, v8, v5, v0}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 400
    .local v3, "position":I
    new-array v2, v3, [B

    .line 401
    .local v2, "copy":[B
    invoke-static {v0, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    return-object v2
.end method

.method static isSpecial(CI)Z
    .locals 4
    .param p0, "ch"    # C
    .param p1, "features"    # I

    .prologue
    const/16 v3, 0x5c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1557
    const/16 v2, 0x20

    if-ne p0, v2, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v1

    .line 1561
    :cond_1
    const/16 v2, 0x2f

    if-ne p0, v2, :cond_3

    .line 1562
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1565
    :cond_3
    const/16 v2, 0x23

    if-le p0, v2, :cond_4

    if-ne p0, v3, :cond_0

    .line 1571
    :cond_4
    const/16 v2, 0x1f

    if-le p0, v2, :cond_5

    if-eq p0, v3, :cond_5

    const/16 v2, 0x22

    if-ne p0, v2, :cond_0

    :cond_5
    move v1, v0

    .line 1575
    goto :goto_0
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 1606
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1758
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 1760
    .local v7, "specicalFlags_singleQuotes":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1761
    .local v4, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v4

    add-int/lit8 v6, v9, 0x1

    .line 1762
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_8

    .line 1763
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_7

    .line 1764
    if-nez v4, :cond_0

    .line 1765
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1766
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1767
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1856
    :goto_0
    return-void

    .line 1771
    :cond_0
    const/4 v2, 0x0

    .line 1772
    .local v2, "hasSpecial":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1773
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1774
    .local v0, "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_3

    aget-byte v9, v7, v0

    if-eqz v9, :cond_3

    .line 1775
    const/4 v2, 0x1

    .line 1780
    .end local v0    # "ch":C
    :cond_1
    if-eqz v2, :cond_2

    .line 1781
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1783
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    .line 1784
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1785
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_4

    aget-byte v9, v7, v0

    if-eqz v9, :cond_4

    .line 1786
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1787
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1783
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1772
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1789
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 1792
    .end local v0    # "ch":C
    :cond_5
    if-eqz v2, :cond_6

    .line 1793
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1795
    :cond_6
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 1799
    .end local v2    # "hasSpecial":Z
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1802
    :cond_8
    if-nez v4, :cond_a

    .line 1803
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v9, 0x3

    .line 1804
    .local v5, "newCount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v5, v9, :cond_9

    .line 1805
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1807
    :cond_9
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1808
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1809
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 1813
    .end local v5    # "newCount":I
    :cond_a
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1814
    .local v8, "start":I
    add-int v1, v8, v4

    .line 1816
    .local v1, "end":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v4, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1817
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1819
    const/4 v2, 0x0

    .line 1821
    .restart local v2    # "hasSpecial":Z
    move v3, v8

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v1, :cond_f

    .line 1822
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v3

    .line 1823
    .restart local v0    # "ch":C
    array-length v9, v7

    if-ge v0, v9, :cond_c

    aget-byte v9, v7, v0

    if-eqz v9, :cond_c

    .line 1824
    if-nez v2, :cond_d

    .line 1825
    add-int/lit8 v6, v6, 0x3

    .line 1826
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_b

    .line 1827
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1829
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1831
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x3

    sub-int v13, v1, v3

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1832
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1833
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x27

    aput-char v10, v9, v8

    .line 1834
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1835
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 1836
    add-int/lit8 v1, v1, 0x2

    .line 1837
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x2

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1839
    const/4 v2, 0x1

    .line 1821
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1841
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 1842
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_e

    .line 1843
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1845
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1847
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v3, 0x2

    sub-int v13, v1, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1848
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v3

    .line 1849
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v3, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v0

    aput-char v10, v9, v3

    .line 1850
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1855
    .end local v0    # "ch":C
    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v6, -0x1

    const/16 v11, 0x3a

    aput-char v11, v9, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 268
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 255
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 256
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 257
    return-object p0

    .line 255
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 261
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "csq":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 263
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_1

    .line 422
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 425
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 426
    return-void
.end method

.method protected computeFeatures()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 154
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 155
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 156
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 157
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 158
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 159
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 160
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 161
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 163
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeautres:I

    and-int/2addr v0, v3

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_a

    :cond_0
    :goto_9
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 168
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x27

    :goto_a
    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 169
    return-void

    :cond_1
    move v0, v2

    .line 153
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 154
    goto :goto_1

    :cond_3
    move v0, v2

    .line 155
    goto :goto_2

    :cond_4
    move v0, v2

    .line 156
    goto :goto_3

    :cond_5
    move v0, v2

    .line 157
    goto :goto_4

    :cond_6
    move v0, v2

    .line 158
    goto :goto_5

    :cond_7
    move v0, v2

    .line 159
    goto :goto_6

    :cond_8
    move v0, v2

    .line 160
    goto :goto_7

    :cond_9
    move v0, v2

    .line 161
    goto :goto_8

    :cond_a
    move v1, v2

    .line 163
    goto :goto_9

    .line 168
    :cond_b
    const/16 v0, 0x22

    goto :goto_a
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 125
    if-eqz p2, :cond_2

    .line 126
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 128
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_1

    .line 129
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 138
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 134
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0
.end method

.method public expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 246
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 247
    move v0, p1

    .line 249
    :cond_0
    new-array v1, v0, [C

    .line 250
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 252
    return-void
.end method

.method public flush()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1859
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 1870
    :goto_0
    return-void

    .line 1864
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 1865
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 184
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 180
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 352
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v1, [C

    .line 345
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    .line 191
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 192
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 201
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 202
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 279
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 280
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    .line 282
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 295
    :cond_0
    :goto_0
    add-int v2, p2, p3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 296
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 297
    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 286
    .local v1, "rest":I
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 287
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 289
    sub-int/2addr p3, v1

    .line 290
    add-int/2addr p2, v1

    .line 291
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_1

    .line 292
    move v0, p3

    goto :goto_0
.end method

.method public write(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1082
    const-string v10, "[]"

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1144
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1087
    .local v7, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "list_size":I
    move v8, v7

    .end local v7    # "offset":I
    .local v8, "offset":I
    :goto_1
    if-ge v2, v5, :cond_c

    .line 1088
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1090
    .local v9, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1091
    .local v1, "hasSpecial":Z
    if-nez v9, :cond_3

    .line 1092
    const/4 v1, 0x1

    .line 1105
    :cond_1
    if-eqz v1, :cond_8

    .line 1106
    const/16 v10, 0x5b

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1107
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 1108
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "text":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1109
    .restart local v9    # "text":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1110
    const/16 v10, 0x2c

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1113
    :cond_2
    if-nez v9, :cond_6

    .line 1114
    const-string v10, "null"

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1107
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1094
    .end local v3    # "j":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "j":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "len":I
    :goto_4
    if-ge v3, v4, :cond_1

    .line 1095
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1096
    .local v0, "ch":C
    const/16 v10, 0x20

    if-lt v0, v10, :cond_4

    const/16 v10, 0x7e

    if-gt v0, v10, :cond_4

    const/16 v10, 0x22

    if-eq v0, v10, :cond_4

    const/16 v10, 0x5c

    if-ne v0, v10, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_1

    .line 1094
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1096
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 1116
    .end local v0    # "ch":C
    .end local v4    # "len":I
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_3

    .line 1119
    :cond_7
    const/16 v10, 0x5d

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 1123
    .end local v3    # "j":I
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v6, v10, 0x3

    .line 1124
    .local v6, "newcount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_9

    .line 1125
    add-int/lit8 v6, v6, 0x1

    .line 1127
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    if-le v6, v10, :cond_a

    .line 1128
    iput v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1129
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1132
    :cond_a
    if-nez v2, :cond_b

    .line 1133
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    const/16 v11, 0x5b

    aput-char v11, v10, v8

    .line 1137
    :goto_6
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    const/16 v11, 0x22

    aput-char v11, v10, v7

    .line 1138
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v9, v10, v11, v12, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1139
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int v7, v8, v10

    .line 1140
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    const/16 v11, 0x22

    aput-char v11, v10, v7

    .line 1087
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1135
    :cond_b
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    const/16 v11, 0x2c

    aput-char v11, v10, v8

    goto :goto_6

    .line 1142
    .end local v1    # "hasSpecial":Z
    .end local v6    # "newcount":I
    .end local v7    # "offset":I
    .end local v9    # "text":Ljava/lang/String;
    .restart local v8    # "offset":I
    :cond_c
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    const/16 v11, 0x5d

    aput-char v11, v10, v8

    .line 1143
    iput v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto/16 :goto_0
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1205
    :goto_0
    return-void

    .line 1203
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 212
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 217
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 218
    :cond_1
    if-nez p3, :cond_2

    .line 241
    :goto_0
    return-void

    .line 222
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v0, v2, p3

    .line 223
    .local v0, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_4

    .line 225
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 238
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int v1, v2, v3

    .line 229
    .local v1, "rest":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 232
    sub-int/2addr p3, v1

    .line 233
    add-int/2addr p2, v1

    .line 234
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-gt p3, v2, :cond_4

    .line 235
    move v0, p3

    goto :goto_1
.end method

.method public writeByteArray([B)V
    .locals 20
    .param p1, "bytes"    # [B

    .prologue
    .line 463
    move-object/from16 v0, p1

    array-length v3, v0

    .line 464
    .local v3, "bytesLen":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v14, 0x27

    .line 466
    .local v14, "quote":C
    :goto_0
    if-nez v3, :cond_2

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-string v8, "\'\'"

    .line 468
    .local v8, "emptyString":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 540
    .end local v8    # "emptyString":Ljava/lang/String;
    :goto_2
    return-void

    .line 464
    .end local v14    # "quote":C
    :cond_0
    const/16 v14, 0x22

    goto :goto_0

    .line 467
    .restart local v14    # "quote":C
    :cond_1
    const-string v8, "\"\""

    goto :goto_1

    .line 472
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 474
    .local v2, "CA":[C
    div-int/lit8 v17, v3, 0x3

    mul-int/lit8 v7, v17, 0x3

    .line 475
    .local v7, "eLen":I
    add-int/lit8 v17, v3, -0x1

    div-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    shl-int/lit8 v4, v17, 0x2

    .line 477
    .local v4, "charsLen":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 478
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v17, v0

    add-int v17, v17, v4

    add-int/lit8 v11, v17, 0x2

    .line 479
    .local v11, "newcount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v11, v0, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 483
    const/4 v15, 0x0

    .local v15, "s":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .local v16, "s":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v7, :cond_3

    .line 485
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v17, p1, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v18, p1, v15

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v9, v17, v18

    .line 488
    .local v9, "i":I
    ushr-int/lit8 v17, v9, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 489
    ushr-int/lit8 v17, v9, 0xc

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 490
    ushr-int/lit8 v17, v9, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 491
    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move/from16 v16, v15

    .line 492
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_3

    .line 495
    .end local v9    # "i":I
    :cond_3
    sub-int v10, v3, v7

    .line 496
    .local v10, "left":I
    if-lez v10, :cond_4

    .line 498
    aget-byte v17, p1, v7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v18, v17, 0xa

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    add-int/lit8 v17, v3, -0x1

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x2

    :goto_4
    or-int v9, v18, v17

    .line 501
    .restart local v9    # "i":I
    shr-int/lit8 v17, v9, 0xc

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 502
    ushr-int/lit8 v17, v9, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 503
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_6

    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 504
    const/16 v17, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 507
    .end local v9    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 498
    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    .line 503
    .restart local v9    # "i":I
    :cond_6
    const/16 v17, 0x3d

    goto :goto_5

    .line 510
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v16    # "s":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 512
    :cond_8
    move-object/from16 v0, p0

    iput v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    aput-char v14, v17, v12

    .line 516
    const/4 v15, 0x0

    .restart local v15    # "s":I
    move v5, v13

    .local v5, "d":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move/from16 v16, v15

    .end local v15    # "s":I
    .restart local v16    # "s":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v7, :cond_9

    .line 518
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v17, p1, v16

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "s":I
    .restart local v16    # "s":I
    aget-byte v18, p1, v15

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "s":I
    .restart local v15    # "s":I
    aget-byte v18, p1, v16

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v9, v17, v18

    .line 521
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v18, v9, 0x12

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v6

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    ushr-int/lit8 v18, v9, 0xc

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v5

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    ushr-int/lit8 v18, v9, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v6

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    and-int/lit8 v18, v9, 0x3f

    aget-char v18, v2, v18

    aput-char v18, v17, v5

    move/from16 v16, v15

    .line 525
    .end local v15    # "s":I
    .restart local v16    # "s":I
    goto :goto_6

    .line 528
    .end local v9    # "i":I
    :cond_9
    sub-int v10, v3, v7

    .line 529
    .restart local v10    # "left":I
    if-lez v10, :cond_a

    .line 531
    aget-byte v17, p1, v7

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v18, v17, 0xa

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_b

    add-int/lit8 v17, v3, -0x1

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x2

    :goto_7
    or-int v9, v18, v17

    .line 534
    .restart local v9    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x5

    shr-int/lit8 v19, v9, 0xc

    aget-char v19, v2, v19

    aput-char v19, v17, v18

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x4

    ushr-int/lit8 v19, v9, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v2, v19

    aput-char v19, v17, v18

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, -0x3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_c

    and-int/lit8 v17, v9, 0x3f

    aget-char v17, v2, v17

    :goto_8
    aput-char v17, v18, v19

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x2

    const/16 v19, 0x3d

    aput-char v19, v17, v18

    .line 539
    .end local v9    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    aput-char v14, v17, v18

    goto/16 :goto_2

    .line 531
    :cond_b
    const/16 v17, 0x0

    goto :goto_7

    .line 536
    .restart local v9    # "i":I
    :cond_c
    const/16 v17, 0x3d

    goto :goto_8
.end method

.method public writeDouble(DZ)V
    .locals 3
    .param p1, "doubleValue"    # D
    .param p3, "checkWriteClassName"    # Z

    .prologue
    .line 560
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "doubleText":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 571
    if-eqz p3, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    const/16 v1, 0x44

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 598
    :goto_0
    return-void

    .line 583
    :cond_0
    const/4 v1, 0x0

    .line 584
    .local v1, "strVal":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v2, :cond_2

    .line 585
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 590
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 591
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x27

    .line 592
    .local v0, "quote":C
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 593
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 586
    .end local v0    # "quote":C
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v2, :cond_1

    .line 587
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 591
    :cond_3
    const/16 v0, 0x22

    goto :goto_2

    .line 596
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_0
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 1720
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x3a

    .line 1723
    if-nez p1, :cond_0

    .line 1724
    const-string v3, "null:"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1755
    :goto_0
    return-void

    .line 1728
    :cond_0
    iget-boolean v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v4, :cond_2

    .line 1729
    iget-boolean v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v3, :cond_1

    .line 1730
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 1733
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    :cond_2
    iget-boolean v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v4, :cond_3

    .line 1737
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1739
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, 0x1

    .line 1740
    .local v1, "hashSpecial":Z
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1741
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1742
    .local v0, "ch":C
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1743
    const/4 v1, 0x1

    .line 1747
    .end local v0    # "ch":C
    :cond_4
    if-eqz v1, :cond_7

    .line 1748
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .end local v1    # "hashSpecial":Z
    .end local v2    # "i":I
    :cond_5
    move v1, v3

    .line 1739
    goto :goto_1

    .line 1740
    .restart local v0    # "ch":C
    .restart local v1    # "hashSpecial":Z
    .restart local v2    # "i":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1750
    .end local v0    # "ch":C
    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 1063
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1064
    .local v0, "len":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0x3

    .line 1066
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_0

    .line 1067
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1070
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v3, 0x1

    .line 1072
    .local v2, "start":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v3, v4

    .line 1073
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v0, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1075
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1076
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    aput-char v5, v3, v4

    .line 1077
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v4

    .line 1078
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1149
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1150
    if-nez p3, :cond_0

    .line 1151
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1293
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    .line 1295
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1287
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1288
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    .line 1289
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 8
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 1208
    const/high16 v5, -0x80000000

    if-eq p3, v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v5, :cond_1

    .line 1209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1210
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1244
    :goto_0
    return-void

    .line 1215
    :cond_1
    if-gez p3, :cond_2

    neg-int v5, p3

    invoke-static {v5}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1217
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1218
    .local v2, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x4

    add-int v3, v5, v0

    .line 1219
    .local v3, "newcount":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_4

    .line 1220
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_3

    .line 1221
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1222
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_0

    .line 1215
    .end local v0    # "intSize":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    :cond_2
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    goto :goto_1

    .line 1226
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1229
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1230
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1232
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v5, v4

    .line 1234
    add-int v5, v4, v2

    add-int/lit8 v1, v5, 0x1

    .line 1236
    .local v1, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1238
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v5, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1240
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1241
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1243
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 8
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1247
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, p3, v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v5, :cond_1

    .line 1248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1249
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1283
    :goto_0
    return-void

    .line 1254
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_2

    neg-long v5, p3

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1256
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1257
    .local v2, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x4

    add-int v3, v5, v0

    .line 1258
    .local v3, "newcount":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_4

    .line 1259
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_3

    .line 1260
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1261
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 1254
    .end local v0    # "intSize":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    :cond_2
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    goto :goto_1

    .line 1265
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1268
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1269
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1271
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v5, v4

    .line 1273
    add-int v5, v4, v2

    add-int/lit8 v1, v5, 0x1

    .line 1275
    .local v1, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1277
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v5, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1279
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1280
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v1, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1282
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1584
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p3, :cond_0

    .line 1585
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1586
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1598
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_1

    .line 1592
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v0, :cond_2

    .line 1594
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1596
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3a

    const/4 v1, 0x0

    .line 1298
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_4

    .line 1299
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_1

    .line 1300
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1301
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1302
    if-nez p3, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1329
    :goto_0
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1309
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1310
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1311
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1312
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1313
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1314
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1315
    invoke-virtual {p0, p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1317
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1321
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1322
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1323
    if-nez p3, :cond_5

    .line 1324
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1326
    :cond_5
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 1609
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1610
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1611
    if-nez p3, :cond_0

    .line 1612
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1616
    :goto_0
    return-void

    .line 1614
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 10
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v9, 0x0

    .line 1158
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v6, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1160
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1197
    :goto_0
    return-void

    .line 1164
    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x4

    .line 1166
    .local v0, "intSize":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1167
    .local v2, "nameLen":I
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, 0x4

    add-int v3, v6, v0

    .line 1168
    .local v3, "newcount":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v3, v6, :cond_3

    .line 1169
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_2

    .line 1170
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1171
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1172
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1173
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    goto :goto_0

    .end local v0    # "intSize":I
    .end local v2    # "nameLen":I
    .end local v3    # "newcount":I
    :cond_1
    move v0, v5

    .line 1164
    goto :goto_1

    .line 1176
    .restart local v0    # "intSize":I
    .restart local v2    # "nameLen":I
    .restart local v3    # "newcount":I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1179
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1180
    .local v4, "start":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1182
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v6, v4

    .line 1184
    add-int v6, v4, v2

    add-int/lit8 v1, v6, 0x1

    .line 1186
    .local v1, "nameEnd":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v8, v6, v7

    .line 1188
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, v9, v2, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1190
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v8, v6, v7

    .line 1192
    if-eqz p3, :cond_4

    .line 1193
    const-string v6, ":true"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v1, 0x2

    invoke-static {v6, v9, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1195
    :cond_4
    const-string v5, ":false"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    const/4 v8, 0x6

    invoke-static {v5, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1513
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1516
    .local v3, "nameLen":I
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1518
    .local v5, "newcount":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 1519
    .local v6, "valueLen":I
    add-int v8, v3, v6

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v5, v8

    .line 1521
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v8, v8

    if-le v5, v8, :cond_1

    .line 1522
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v8, :cond_0

    .line 1523
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1524
    const/16 v8, 0x3a

    invoke-virtual {p0, p2, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1525
    const/4 v8, 0x0

    invoke-virtual {p0, p3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1550
    :goto_0
    return-void

    .line 1528
    :cond_0
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1531
    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v8, v9

    .line 1533
    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v8, 0x2

    .line 1534
    .local v4, "nameStart":I
    add-int v2, v4, v3

    .line 1536
    .local v2, "nameEnd":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x22

    aput-char v10, v8, v9

    .line 1537
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v8, v3, v9, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1539
    iput v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1541
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v9, 0x22

    aput-char v9, v8, v2

    .line 1543
    add-int/lit8 v0, v2, 0x1

    .line 1544
    .local v0, "index":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const/16 v9, 0x3a

    aput-char v9, v8, v0

    .line 1545
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/16 v9, 0x22

    aput-char v9, v8, v1

    .line 1547
    move v7, v0

    .line 1548
    .local v7, "valueStart":I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v8, v6, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1549
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x22

    aput-char v10, v8, v9

    goto :goto_0
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1332
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    .line 1335
    .local v17, "nameLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v19, v0

    .line 1337
    .local v19, "newcount":I
    if-nez p3, :cond_0

    .line 1338
    const/16 v24, 0x4

    .line 1339
    .local v24, "valueLen":I
    add-int/lit8 v26, v17, 0x8

    add-int v19, v19, v26

    .line 1345
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1347
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1348
    const/16 v26, 0x3a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1349
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1510
    :goto_1
    return-void

    .line 1341
    .end local v24    # "valueLen":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    .line 1342
    .restart local v24    # "valueLen":I
    add-int v26, v17, v24

    add-int/lit8 v26, v26, 0x6

    add-int v19, v19, v26

    goto :goto_0

    .line 1352
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1355
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v27, v0

    aput-char p1, v26, v27

    .line 1357
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v26, v0

    add-int/lit8 v18, v26, 0x2

    .line 1358
    .local v18, "nameStart":I
    add-int v16, v18, v17

    .line 1360
    .local v16, "nameEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    const/16 v28, 0x22

    aput-char v28, v26, v27

    .line 1361
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v17

    move-object/from16 v3, v27

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1363
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x22

    aput-char v27, v26, v16

    .line 1367
    add-int/lit8 v12, v16, 0x1

    .line 1368
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    const/16 v27, 0x3a

    aput-char v27, v26, v12

    .line 1370
    if-nez p3, :cond_3

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v27, 0x6e

    aput-char v27, v26, v13

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    const/16 v27, 0x75

    aput-char v27, v26, v12

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v27, 0x6c

    aput-char v27, v26, v13

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    const/16 v27, 0x6c

    aput-char v27, v26, v12

    goto/16 :goto_1

    .line 1378
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    const/16 v27, 0x22

    aput-char v27, v26, v13

    .line 1380
    move/from16 v25, v12

    .line 1381
    .local v25, "valueStart":I
    add-int v23, v25, v24

    .line 1383
    .local v23, "valueEnd":I
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1385
    const/16 v20, 0x0

    .line 1386
    .local v20, "specialCount":I
    const/4 v15, -0x1

    .line 1387
    .local v15, "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 1388
    .local v10, "firstSpecialIndex":I
    const/4 v14, 0x0

    .line 1390
    .local v14, "lastSpecial":C
    move/from16 v11, v25

    .local v11, "i":I
    :goto_2
    move/from16 v0, v23

    if-ge v11, v0, :cond_9

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    aget-char v8, v26, v11

    .line 1393
    .local v8, "ch":C
    const/16 v26, 0x5d

    move/from16 v0, v26

    if-lt v8, v0, :cond_7

    .line 1394
    const/16 v26, 0x7f

    move/from16 v0, v26

    if-lt v8, v0, :cond_6

    const/16 v26, 0x2028

    move/from16 v0, v26

    if-eq v8, v0, :cond_4

    const/16 v26, 0xa0

    move/from16 v0, v26

    if-gt v8, v0, :cond_6

    .line 1397
    :cond_4
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v10, v0, :cond_5

    .line 1398
    move v10, v11

    .line 1401
    :cond_5
    add-int/lit8 v20, v20, 0x1

    .line 1402
    move v15, v11

    .line 1403
    move v14, v8

    .line 1404
    add-int/lit8 v19, v19, 0x4

    .line 1390
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1409
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1410
    add-int/lit8 v20, v20, 0x1

    .line 1411
    move v15, v11

    .line 1412
    move v14, v8

    .line 1414
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v8, v0, :cond_8

    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 1417
    add-int/lit8 v19, v19, 0x4

    .line 1420
    :cond_8
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v10, v0, :cond_6

    .line 1421
    move v10, v11

    goto :goto_3

    .line 1426
    .end local v8    # "ch":C
    :cond_9
    if-lez v20, :cond_b

    .line 1427
    add-int v19, v19, v20

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 1429
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1431
    :cond_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1433
    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 1434
    const/16 v26, 0x2028

    move/from16 v0, v26

    if-ne v14, v0, :cond_c

    .line 1435
    add-int/lit8 v21, v15, 0x1

    .line 1436
    .local v21, "srcPos":I
    add-int/lit8 v9, v15, 0x6

    .line 1437
    .local v9, "destPos":I
    sub-int v26, v23, v15

    add-int/lit8 v5, v26, -0x1

    .line 1438
    .local v5, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x5c

    aput-char v27, v26, v15

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x75

    aput-char v27, v26, v15

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x32

    aput-char v27, v26, v15

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x30

    aput-char v27, v26, v15

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x32

    aput-char v27, v26, v15

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    const/16 v27, 0x38

    aput-char v27, v26, v15

    .line 1509
    .end local v5    # "LengthOfCopy":I
    .end local v9    # "destPos":I
    .end local v21    # "srcPos":I
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    const/16 v28, 0x22

    aput-char v28, v26, v27

    goto/16 :goto_1

    .line 1446
    :cond_c
    move v8, v14

    .line 1447
    .restart local v8    # "ch":C
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v8, v0, :cond_d

    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 1449
    add-int/lit8 v21, v15, 0x1

    .line 1450
    .restart local v21    # "srcPos":I
    add-int/lit8 v9, v15, 0x6

    .line 1451
    .restart local v9    # "destPos":I
    sub-int v26, v23, v15

    add-int/lit8 v5, v26, -0x1

    .line 1452
    .restart local v5    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1454
    move v6, v15

    .line 1455
    .local v6, "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .local v7, "bufIndex":I
    const/16 v27, 0x5c

    aput-char v27, v26, v6

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v27, 0x75

    aput-char v27, v26, v7

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0xc

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v6

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x8

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v7

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x4

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v6

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v28, v8, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v7

    goto/16 :goto_4

    .line 1462
    .end local v5    # "LengthOfCopy":I
    .end local v6    # "bufIndex":I
    .end local v9    # "destPos":I
    .end local v21    # "srcPos":I
    :cond_d
    add-int/lit8 v21, v15, 0x1

    .line 1463
    .restart local v21    # "srcPos":I
    add-int/lit8 v9, v15, 0x2

    .line 1464
    .restart local v9    # "destPos":I
    sub-int v26, v23, v15

    add-int/lit8 v5, v26, -0x1

    .line 1465
    .restart local v5    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x5c

    aput-char v27, v26, v15

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v15, v15, 0x1

    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v27, v27, v8

    aput-char v27, v26, v15

    goto/16 :goto_4

    .line 1470
    .end local v5    # "LengthOfCopy":I
    .end local v8    # "ch":C
    .end local v9    # "destPos":I
    .end local v21    # "srcPos":I
    :cond_e
    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    .line 1471
    sub-int v22, v10, v25

    .line 1472
    .local v22, "textIndex":I
    move v6, v10

    .line 1473
    .restart local v6    # "bufIndex":I
    move/from16 v11, v22

    :goto_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_b

    .line 1474
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1476
    .restart local v8    # "ch":C
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v8, v0, :cond_f

    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    if-nez v26, :cond_10

    :cond_f
    const/16 v26, 0x2f

    move/from16 v0, v26

    if-ne v8, v0, :cond_12

    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1478
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 1479
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v27, 0x5c

    aput-char v27, v26, v6

    .line 1480
    sget-object v26, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v26, v26, v8

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v27, 0x75

    aput-char v27, v26, v7

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0xc

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v6

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x8

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v7

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x4

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v6

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v28, v8, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v7

    .line 1486
    add-int/lit8 v23, v23, 0x5

    .line 1473
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 1488
    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v27, v27, v8

    aput-char v27, v26, v7

    .line 1489
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 1492
    :cond_12
    const/16 v26, 0x2028

    move/from16 v0, v26

    if-ne v8, v0, :cond_13

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    const/16 v27, 0x5c

    aput-char v27, v26, v6

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v27, 0x75

    aput-char v27, v26, v7

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0xc

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v6

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x8

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v7

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v28, v8, 0x4

    and-int/lit8 v28, v28, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v6

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v27, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v28, v8, 0xf

    aget-char v27, v27, v28

    aput-char v27, v26, v7

    .line 1499
    add-int/lit8 v23, v23, 0x5

    goto :goto_6

    .line 1501
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v26, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v7    # "bufIndex":I
    aput-char v8, v26, v6

    move v6, v7

    .end local v7    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    goto/16 :goto_6
.end method

.method public writeFloat(FZ)V
    .locals 3
    .param p1, "value"    # F
    .param p2, "checkWriteClassName"    # Z

    .prologue
    .line 543
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "floatText":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 551
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 553
    if-eqz p2, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 438
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_0

    .line 439
    const-string v3, "-2147483648"

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 460
    :goto_0
    return-void

    .line 443
    :cond_0
    if-gez p1, :cond_2

    neg-int v3, p1

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 445
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v1, v3, v2

    .line 446
    .local v1, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 448
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 459
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_0

    .line 443
    .end local v1    # "newcount":I
    .end local v2    # "size":I
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v2

    goto :goto_1

    .line 450
    .restart local v1    # "newcount":I
    .restart local v2    # "size":I
    :cond_3
    new-array v0, v2, [C

    .line 451
    .local v0, "chars":[C
    invoke-static {p1, v2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 452
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 8
    .param p1, "i"    # J

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x22

    .line 601
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 602
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    if-nez v5, :cond_1

    const-wide v5, 0x1fffffffffffffL

    cmp-long v5, p1, v5

    if-gtz v5, :cond_0

    const-wide v5, -0x1fffffffffffffL

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 605
    .local v1, "needQuotationMark":Z
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    .line 606
    if-eqz v1, :cond_2

    const-string v4, "\"-9223372036854775808\""

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 641
    :goto_1
    return-void

    .end local v1    # "needQuotationMark":Z
    :cond_1
    move v1, v4

    .line 602
    goto :goto_0

    .line 607
    .restart local v1    # "needQuotationMark":Z
    :cond_2
    const-string v4, "-9223372036854775808"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_6

    neg-long v5, p1

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 613
    .local v3, "size":I
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v2, v5, v3

    .line 614
    .local v2, "newcount":I
    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x2

    .line 615
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v2, v5, :cond_5

    .line 616
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_7

    .line 617
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 632
    :cond_5
    if-eqz v1, :cond_9

    .line 633
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v7, v4, v5

    .line 634
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v4, v5}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 635
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v2, -0x1

    aput-char v7, v4, v5

    .line 640
    :goto_3
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_1

    .line 611
    .end local v2    # "newcount":I
    .end local v3    # "size":I
    :cond_6
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    goto :goto_2

    .line 619
    .restart local v2    # "newcount":I
    .restart local v3    # "size":I
    :cond_7
    new-array v0, v3, [C

    .line 620
    .local v0, "chars":[C
    invoke-static {p1, p2, v3, v0}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 621
    if-eqz v1, :cond_8

    .line 622
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 623
    array-length v5, v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 624
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 626
    :cond_8
    array-length v5, v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_1

    .line 637
    .end local v0    # "chars":[C
    :cond_9
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v2, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    goto :goto_3
.end method

.method public writeNull()V
    .locals 1

    .prologue
    .line 644
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public writeNull(II)V
    .locals 1
    .param p1, "beanFeatures"    # I
    .param p2, "feature"    # I

    .prologue
    .line 652
    and-int v0, p1, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 669
    :goto_0
    return-void

    .line 658
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_1

    .line 659
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_2

    .line 661
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_3

    .line 663
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_4

    .line 665
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 648
    const/4 v0, 0x0

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 649
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 1629
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1633
    :goto_0
    return-void

    .line 1631
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1625
    :goto_0
    return-void

    .line 1623
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 25
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .prologue
    .line 672
    if-nez p1, :cond_1

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 674
    if-eqz p2, :cond_0

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 681
    .local v14, "len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int v20, v20, v14

    add-int/lit8 v15, v20, 0x2

    .line 682
    .local v15, "newcount":I
    if-eqz p2, :cond_2

    .line 683
    add-int/lit8 v15, v15, 0x1

    .line 686
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v15, v0, :cond_11

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 688
    const/16 v20, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 690
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_f

    .line 691
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 693
    .local v7, "ch":C
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 694
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v7, v0, :cond_3

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v7, v0, :cond_e

    :cond_3
    const/16 v20, 0x61

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    const/16 v20, 0x7a

    move/from16 v0, v20

    if-le v7, v0, :cond_e

    :cond_4
    const/16 v20, 0x41

    move/from16 v0, v20

    if-lt v7, v0, :cond_5

    const/16 v20, 0x5a

    move/from16 v0, v20

    if-le v7, v0, :cond_e

    :cond_5
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v7, v0, :cond_e

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v7, v0, :cond_e

    const/16 v20, 0x5f

    move/from16 v0, v20

    if-eq v7, v0, :cond_e

    .line 696
    const/16 v20, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 697
    const/16 v20, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 698
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 699
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 700
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 701
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v7, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 690
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 704
    :cond_6
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 705
    const/16 v20, 0x8

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0xc

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0x22

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-eq v7, v0, :cond_7

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v7, v0, :cond_8

    .line 713
    :cond_7
    const/16 v20, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 714
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v20, v20, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 718
    :cond_8
    const/16 v20, 0x20

    move/from16 v0, v20

    if-ge v7, v0, :cond_9

    .line 719
    const/16 v20, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 720
    const/16 v20, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 721
    const/16 v20, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 722
    const/16 v20, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 723
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v21, v7, 0x2

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 724
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v21, v7, 0x2

    add-int/lit8 v21, v21, 0x1

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 728
    :cond_9
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-lt v7, v0, :cond_e

    .line 729
    const/16 v20, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 730
    const/16 v20, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 731
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 732
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 733
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 734
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v7, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 738
    :cond_a
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_b

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    if-nez v20, :cond_c

    :cond_b
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v7, v0, :cond_e

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 741
    :cond_c
    const/16 v20, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 742
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 743
    const/16 v20, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 744
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 745
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 746
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v7, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 747
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v7, 0xf

    aget-char v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 749
    :cond_d
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v20, v20, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 755
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 758
    .end local v7    # "ch":C
    :cond_f
    const/16 v20, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 759
    if-eqz p2, :cond_0

    .line 760
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 764
    .end local v11    # "i":I
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 767
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    add-int/lit8 v18, v20, 0x1

    .line 768
    .local v18, "start":I
    add-int v9, v18, v14

    .line 770
    .local v9, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 771
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v18

    invoke-virtual {v0, v1, v14, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 773
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 775
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 776
    const/4 v13, -0x1

    .line 778
    .local v13, "lastSpecialIndex":I
    move/from16 v11, v18

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v9, :cond_16

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v7, v20, v11

    .line 781
    .restart local v7    # "ch":C
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v7, v0, :cond_12

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v7, v0, :cond_15

    :cond_12
    const/16 v20, 0x61

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v20, 0x7a

    move/from16 v0, v20

    if-le v7, v0, :cond_15

    :cond_13
    const/16 v20, 0x41

    move/from16 v0, v20

    if-lt v7, v0, :cond_14

    const/16 v20, 0x5a

    move/from16 v0, v20

    if-le v7, v0, :cond_15

    :cond_14
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v7, v0, :cond_15

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v7, v0, :cond_15

    const/16 v20, 0x5f

    move/from16 v0, v20

    if-eq v7, v0, :cond_15

    .line 783
    move v13, v11

    .line 784
    add-int/lit8 v15, v15, 0x5

    .line 778
    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 789
    .end local v7    # "ch":C
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v15, v0, :cond_17

    .line 790
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 792
    :cond_17
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 794
    move v11, v13

    :goto_4
    move/from16 v0, v18

    if-lt v11, v0, :cond_1c

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v7, v20, v11

    .line 797
    .restart local v7    # "ch":C
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v7, v0, :cond_18

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v7, v0, :cond_1b

    :cond_18
    const/16 v20, 0x61

    move/from16 v0, v20

    if-lt v7, v0, :cond_19

    const/16 v20, 0x7a

    move/from16 v0, v20

    if-le v7, v0, :cond_1b

    :cond_19
    const/16 v20, 0x41

    move/from16 v0, v20

    if-lt v7, v0, :cond_1a

    const/16 v20, 0x5a

    move/from16 v0, v20

    if-le v7, v0, :cond_1b

    :cond_1a
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v7, v0, :cond_1b

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v7, v0, :cond_1b

    const/16 v20, 0x5f

    move/from16 v0, v20

    if-eq v7, v0, :cond_1b

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x6

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    const/16 v22, 0x75

    aput-char v22, v20, v21

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x3

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x4

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x5

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 806
    add-int/lit8 v9, v9, 0x5

    .line 794
    :cond_1b
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    .line 810
    .end local v7    # "ch":C
    :cond_1c
    if-eqz p2, :cond_1d

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aput-char p2, v20, v21

    goto/16 :goto_0

    .line 814
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x22

    aput-char v22, v20, v21

    goto/16 :goto_0

    .line 820
    .end local v11    # "i":I
    .end local v13    # "lastSpecialIndex":I
    :cond_1e
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-eqz v20, :cond_2f

    .line 821
    const/4 v13, -0x1

    .line 823
    .restart local v13    # "lastSpecialIndex":I
    move/from16 v11, v18

    .restart local v11    # "i":I
    :goto_5
    if-ge v11, v9, :cond_25

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v7, v20, v11

    .line 826
    .restart local v7    # "ch":C
    const/16 v20, 0x22

    move/from16 v0, v20

    if-eq v7, v0, :cond_1f

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-eq v7, v0, :cond_1f

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v7, v0, :cond_21

    .line 829
    :cond_1f
    move v13, v11

    .line 830
    add-int/lit8 v15, v15, 0x1

    .line 823
    :cond_20
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 834
    :cond_21
    const/16 v20, 0x8

    move/from16 v0, v20

    if-eq v7, v0, :cond_22

    const/16 v20, 0xc

    move/from16 v0, v20

    if-eq v7, v0, :cond_22

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v7, v0, :cond_22

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v7, v0, :cond_22

    const/16 v20, 0x9

    move/from16 v0, v20

    if-ne v7, v0, :cond_23

    .line 839
    :cond_22
    move v13, v11

    .line 840
    add-int/lit8 v15, v15, 0x1

    .line 841
    goto :goto_6

    .line 844
    :cond_23
    const/16 v20, 0x20

    move/from16 v0, v20

    if-ge v7, v0, :cond_24

    .line 845
    move v13, v11

    .line 846
    add-int/lit8 v15, v15, 0x5

    .line 847
    goto :goto_6

    .line 850
    :cond_24
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-lt v7, v0, :cond_20

    .line 851
    move v13, v11

    .line 852
    add-int/lit8 v15, v15, 0x5

    .line 853
    goto :goto_6

    .line 857
    .end local v7    # "ch":C
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v15, v0, :cond_26

    .line 858
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 860
    :cond_26
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 862
    move v11, v13

    :goto_7
    move/from16 v0, v18

    if-lt v11, v0, :cond_2d

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v7, v20, v11

    .line 865
    .restart local v7    # "ch":C
    const/16 v20, 0x8

    move/from16 v0, v20

    if-eq v7, v0, :cond_27

    const/16 v20, 0xc

    move/from16 v0, v20

    if-eq v7, v0, :cond_27

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v7, v0, :cond_27

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v7, v0, :cond_27

    const/16 v20, 0x9

    move/from16 v0, v20

    if-ne v7, v0, :cond_29

    .line 870
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x2

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v22, v22, v7

    aput-char v22, v20, v21

    .line 873
    add-int/lit8 v9, v9, 0x1

    .line 862
    :cond_28
    :goto_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 877
    :cond_29
    const/16 v20, 0x22

    move/from16 v0, v20

    if-eq v7, v0, :cond_2a

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-eq v7, v0, :cond_2a

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v7, v0, :cond_2b

    .line 880
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x2

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    aput-char v7, v20, v21

    .line 883
    add-int/lit8 v9, v9, 0x1

    .line 884
    goto :goto_8

    .line 887
    :cond_2b
    const/16 v20, 0x20

    move/from16 v0, v20

    if-ge v7, v0, :cond_2c

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x6

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    const/16 v22, 0x75

    aput-char v22, v20, v21

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    const/16 v22, 0x30

    aput-char v22, v20, v21

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x3

    const/16 v22, 0x30

    aput-char v22, v20, v21

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x4

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v23, v7, 0x2

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x5

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v23, v7, 0x2

    add-int/lit8 v23, v23, 0x1

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 895
    add-int/lit8 v9, v9, 0x5

    .line 896
    goto/16 :goto_8

    .line 899
    :cond_2c
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-lt v7, v0, :cond_28

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x6

    sub-int v24, v9, v11

    add-int/lit8 v24, v24, -0x1

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v11

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    const/16 v22, 0x75

    aput-char v22, v20, v21

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x2

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0xc

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x3

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x8

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x4

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v23, v7, 0x4

    and-int/lit8 v23, v23, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x5

    sget-object v22, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v23, v7, 0xf

    aget-char v22, v22, v23

    aput-char v22, v20, v21

    .line 907
    add-int/lit8 v9, v9, 0x5

    goto/16 :goto_8

    .line 911
    .end local v7    # "ch":C
    :cond_2d
    if-eqz p2, :cond_2e

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aput-char p2, v20, v21

    goto/16 :goto_0

    .line 915
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x22

    aput-char v22, v20, v21

    goto/16 :goto_0

    .line 921
    .end local v11    # "i":I
    .end local v13    # "lastSpecialIndex":I
    :cond_2f
    const/16 v16, 0x0

    .line 922
    .local v16, "specialCount":I
    const/4 v13, -0x1

    .line 923
    .restart local v13    # "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 924
    .local v10, "firstSpecialIndex":I
    const/4 v12, 0x0

    .line 926
    .local v12, "lastSpecial":C
    move/from16 v11, v18

    .restart local v11    # "i":I
    :goto_9
    if-ge v11, v9, :cond_35

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    aget-char v7, v20, v11

    .line 929
    .restart local v7    # "ch":C
    const/16 v20, 0x2028

    move/from16 v0, v20

    if-ne v7, v0, :cond_31

    .line 930
    add-int/lit8 v16, v16, 0x1

    .line 931
    move v13, v11

    .line 932
    move v12, v7

    .line 933
    add-int/lit8 v15, v15, 0x4

    .line 935
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_30

    .line 936
    move v10, v11

    .line 926
    :cond_30
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 941
    :cond_31
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-lt v7, v0, :cond_33

    .line 942
    const/16 v20, 0x7f

    move/from16 v0, v20

    if-lt v7, v0, :cond_30

    const/16 v20, 0xa0

    move/from16 v0, v20

    if-gt v7, v0, :cond_30

    .line 943
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_32

    .line 944
    move v10, v11

    .line 947
    :cond_32
    add-int/lit8 v16, v16, 0x1

    .line 948
    move v13, v11

    .line 949
    move v12, v7

    .line 950
    add-int/lit8 v15, v15, 0x4

    goto :goto_a

    .line 955
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isSpecial(CI)Z

    move-result v20

    if-eqz v20, :cond_30

    .line 956
    add-int/lit8 v16, v16, 0x1

    .line 957
    move v13, v11

    .line 958
    move v12, v7

    .line 960
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_34

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_34

    .line 963
    add-int/lit8 v15, v15, 0x4

    .line 966
    :cond_34
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_30

    .line 967
    move v10, v11

    goto :goto_a

    .line 972
    .end local v7    # "ch":C
    :cond_35
    if-lez v16, :cond_37

    .line 973
    add-int v15, v15, v16

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v15, v0, :cond_36

    .line 975
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 977
    :cond_36
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 979
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a

    .line 980
    const/16 v20, 0x2028

    move/from16 v0, v20

    if-ne v12, v0, :cond_38

    .line 981
    add-int/lit8 v17, v13, 0x1

    .line 982
    .local v17, "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 983
    .local v8, "destPos":I
    sub-int v20, v9, v13

    add-int/lit8 v4, v20, -0x1

    .line 984
    .local v4, "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v13

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x75

    aput-char v21, v20, v13

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x32

    aput-char v21, v20, v13

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x30

    aput-char v21, v20, v13

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x32

    aput-char v21, v20, v13

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    const/16 v21, 0x38

    aput-char v21, v20, v13

    .line 1054
    .end local v4    # "LengthOfCopy":I
    .end local v8    # "destPos":I
    .end local v17    # "srcPos":I
    :cond_37
    :goto_b
    if-eqz p2, :cond_40

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    const/16 v22, 0x22

    aput-char v22, v20, v21

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aput-char p2, v20, v21

    goto/16 :goto_0

    .line 992
    :cond_38
    move v7, v12

    .line 993
    .restart local v7    # "ch":C
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_39

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_39

    .line 995
    add-int/lit8 v17, v13, 0x1

    .line 996
    .restart local v17    # "srcPos":I
    add-int/lit8 v8, v13, 0x6

    .line 997
    .restart local v8    # "destPos":I
    sub-int v20, v9, v13

    add-int/lit8 v4, v20, -0x1

    .line 998
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1000
    move v5, v13

    .line 1001
    .local v5, "bufIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .local v6, "bufIndex":I
    const/16 v21, 0x5c

    aput-char v21, v20, v5

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v21, 0x75

    aput-char v21, v20, v6

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v5

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v6

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v5

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v6

    goto/16 :goto_b

    .line 1008
    .end local v4    # "LengthOfCopy":I
    .end local v5    # "bufIndex":I
    .end local v8    # "destPos":I
    .end local v17    # "srcPos":I
    :cond_39
    add-int/lit8 v17, v13, 0x1

    .line 1009
    .restart local v17    # "srcPos":I
    add-int/lit8 v8, v13, 0x2

    .line 1010
    .restart local v8    # "destPos":I
    sub-int v20, v9, v13

    add-int/lit8 v4, v20, -0x1

    .line 1011
    .restart local v4    # "LengthOfCopy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    aput-char v21, v20, v13

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v13, 0x1

    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v21, v21, v7

    aput-char v21, v20, v13

    goto/16 :goto_b

    .line 1016
    .end local v4    # "LengthOfCopy":I
    .end local v7    # "ch":C
    .end local v8    # "destPos":I
    .end local v17    # "srcPos":I
    :cond_3a
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_37

    .line 1017
    sub-int v19, v10, v18

    .line 1018
    .local v19, "textIndex":I
    move v5, v10

    .line 1019
    .restart local v5    # "bufIndex":I
    move/from16 v11, v19

    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_37

    .line 1020
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1022
    .restart local v7    # "ch":C
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_3b

    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    if-nez v20, :cond_3c

    :cond_3b
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v7, v0, :cond_3e

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1024
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    if-eqz v20, :cond_3e

    .line 1025
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v21, 0x5c

    aput-char v21, v20, v5

    .line 1026
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v20, v20, v7

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3d

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v21, 0x75

    aput-char v21, v20, v6

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v5

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v6

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v5

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v6

    .line 1032
    add-int/lit8 v9, v9, 0x5

    .line 1019
    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 1034
    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v21, v21, v7

    aput-char v21, v20, v6

    .line 1035
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 1038
    :cond_3e
    const/16 v20, 0x2028

    move/from16 v0, v20

    if-ne v7, v0, :cond_3f

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    const/16 v21, 0x5c

    aput-char v21, v20, v5

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    const/16 v21, 0x75

    aput-char v21, v20, v6

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0xc

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v5

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x8

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v6

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v22, v7, 0x4

    and-int/lit8 v22, v22, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v5

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    sget-object v21, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v22, v7, 0xf

    aget-char v21, v21, v22

    aput-char v21, v20, v6

    .line 1045
    add-int/lit8 v9, v9, 0x5

    goto :goto_d

    .line 1047
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    aput-char v7, v20, v5

    move v5, v6

    .end local v6    # "bufIndex":I
    .restart local v5    # "bufIndex":I
    goto/16 :goto_d

    .line 1058
    .end local v5    # "bufIndex":I
    .end local v7    # "ch":C
    .end local v19    # "textIndex":I
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    const/16 v22, 0x22

    aput-char v22, v20, v21

    goto/16 :goto_0
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1636
    if-nez p1, :cond_1

    .line 1637
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v9, 0x4

    .line 1638
    .local v6, "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_0

    .line 1639
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1641
    :cond_0
    const-string v9, "null"

    const/4 v10, 0x0

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 1642
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1716
    :goto_0
    return-void

    .line 1646
    .end local v6    # "newcount":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1647
    .local v5, "len":I
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v5

    add-int/lit8 v6, v9, 0x2

    .line 1648
    .restart local v6    # "newcount":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_6

    .line 1649
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v9, :cond_5

    .line 1650
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 1652
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1653
    .local v0, "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_2

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x27

    if-eq v0, v9, :cond_2

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_3

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1654
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1655
    :cond_2
    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1656
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v0

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1651
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1658
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 1661
    .end local v0    # "ch":C
    :cond_4
    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 1664
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1667
    :cond_6
    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v9, 0x1

    .line 1668
    .local v8, "start":I
    add-int v1, v8, v5

    .line 1670
    .local v1, "end":I
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v11, 0x27

    aput-char v11, v9, v10

    .line 1671
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v9, v5, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1672
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1674
    const/4 v7, 0x0

    .line 1675
    .local v7, "specialCount":I
    const/4 v4, -0x1

    .line 1676
    .local v4, "lastSpecialIndex":I
    const/4 v3, 0x0

    .line 1677
    .local v3, "lastSpecial":C
    move v2, v8

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_9

    .line 1678
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 1679
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_7

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_7

    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_8

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1680
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1681
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 1682
    move v4, v2

    .line 1683
    move v3, v0

    .line 1677
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1687
    .end local v0    # "ch":C
    :cond_9
    add-int/2addr v6, v7

    .line 1688
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v6, v9, :cond_a

    .line 1689
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1691
    :cond_a
    iput v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1693
    const/4 v9, 0x1

    if-ne v7, v9, :cond_c

    .line 1694
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1695
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1696
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 1715
    :cond_b
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0x27

    aput-char v11, v9, v10

    goto/16 :goto_0

    .line 1697
    :cond_c
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 1698
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v13, v1, v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v4

    .line 1700
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v3

    aput-char v10, v9, v4

    .line 1701
    add-int/lit8 v1, v1, 0x1

    .line 1702
    add-int/lit8 v2, v4, -0x2

    :goto_4
    if-lt v2, v8, :cond_b

    .line 1703
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v0, v9, v2

    .line 1705
    .restart local v0    # "ch":C
    const/16 v9, 0xd

    if-le v0, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v0, v9, :cond_d

    const/16 v9, 0x27

    if-eq v0, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v0, v9, :cond_e

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1706
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1707
    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v2, 0x2

    sub-int v13, v1, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1708
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v10, 0x5c

    aput-char v10, v9, v2

    .line 1709
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v2, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v0

    aput-char v11, v9, v10

    .line 1710
    add-int/lit8 v1, v1, 0x1

    .line 1702
    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 314
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    .line 318
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 310
    return-void
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 322
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "writer not null"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_1

    .line 326
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result v1

    .line 330
    :goto_0
    return v1

    .line 328
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 329
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    array-length v1, v0

    goto :goto_0
.end method
