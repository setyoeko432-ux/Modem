.class public Lorg/apache/commons/fileupload/MultipartStream;
.super Ljava/lang/Object;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;,
        Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;,
        Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
        Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
    }
.end annotation


# static fields
.field protected static final BOUNDARY_PREFIX:[B

.field public static final CR:B = 0xdt

.field public static final DASH:B = 0x2dt

.field protected static final DEFAULT_BUFSIZE:I = 0x1000

.field protected static final FIELD_SEPARATOR:[B

.field public static final HEADER_PART_SIZE_MAX:I = 0x2800

.field protected static final HEADER_SEPARATOR:[B

.field public static final LF:B = 0xat

.field protected static final STREAM_TERMINATOR:[B


# instance fields
.field private final boundary:[B

.field private boundaryLength:I

.field private final boundaryTable:[I

.field private final bufSize:I

.field private final buffer:[B

.field private head:I

.field private headerEncoding:Ljava/lang/String;

.field private final input:Ljava/io/InputStream;

.field private final keepRegion:I

.field private final notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

.field private tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 188
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    .line 194
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->FIELD_SEPARATOR:[B

    .line 200
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->STREAM_TERMINATOR:[B

    .line 205
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    return-void

    .line 188
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    .line 194
    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 200
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data

    .line 205
    nop

    :array_3
    .array-data 1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BI)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "bufSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "bufSize"    # I
    .param p4, "pNotifier"    # Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    if-nez p2, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    array-length v0, p2

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 334
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    add-int/lit8 v0, v0, 0x1

    if-ge p3, v0, :cond_1

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The buffer size specified for the MultipartStream is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    .line 340
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    .line 341
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    .line 342
    iput-object p4, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 344
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    .line 345
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    .line 346
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->keepRegion:I

    .line 348
    sget-object v0, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v1, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream;->computeBoundaryTable()V

    .line 354
    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 355
    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    .line 356
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "boundary"    # [B
    .param p3, "pNotifier"    # Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .prologue
    .line 372
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BILorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    .line 373
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    return v0
.end method

.method static synthetic access$002(Lorg/apache/commons/fileupload/MultipartStream;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    return p1
.end method

.method static synthetic access$100(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$102(Lorg/apache/commons/fileupload/MultipartStream;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return p1
.end method

.method static synthetic access$108(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->keepRegion:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/fileupload/MultipartStream;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/fileupload/MultipartStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    return-object v0
.end method

.method public static arrayequals([B[BI)Z
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "count"    # I

    .prologue
    .line 695
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 696
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 697
    const/4 v1, 0x0

    .line 700
    :goto_1
    return v1

    .line 695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private computeBoundaryTable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 521
    const/4 v1, 0x2

    .line 522
    .local v1, "position":I
    const/4 v0, 0x0

    .line 524
    .local v0, "candidate":I
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    const/4 v3, -0x1

    aput v3, v2, v4

    .line 525
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 527
    :goto_0
    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-gt v1, v2, :cond_2

    .line 528
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 529
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v1

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_0
    if-lez v0, :cond_1

    .line 533
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    aget v0, v2, v0

    goto :goto_0

    .line 535
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    aput v4, v2, v1

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_2
    return-void
.end method


# virtual methods
.method public discardBodyData()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/fileupload/MultipartStream;->readBodyData(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method protected findByte(BI)I
    .locals 2
    .param p1, "value"    # B
    .param p2, "pos"    # I

    .prologue
    .line 715
    move v0, p2

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-ge v0, v1, :cond_1

    .line 716
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 721
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 715
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected findSeparator()I
    .locals 4

    .prologue
    .line 734
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 735
    .local v0, "bufferPos":I
    const/4 v1, 0x0

    .line 737
    .local v1, "tablePos":I
    :cond_0
    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-ge v0, v2, :cond_2

    .line 738
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 739
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryTable:[I

    aget v1, v2, v1

    goto :goto_0

    .line 741
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 742
    add-int/lit8 v1, v1, 0x1

    .line 743
    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    if-ne v1, v2, :cond_0

    .line 744
    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    sub-int v2, v0, v2

    .line 747
    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getHeaderEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;-><init>(Lorg/apache/commons/fileupload/MultipartStream;)V

    return-object v0
.end method

.method public readBodyData(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->newInputStream()Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public readBoundary()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;,
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 453
    new-array v1, v4, [B

    .line 454
    .local v1, "marker":[B
    const/4 v2, 0x0

    .line 456
    .local v2, "nextChunk":Z
    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 458
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v5

    aput-byte v5, v1, v4

    .line 459
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 484
    :goto_0
    return v3

    .line 469
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    .line 470
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->STREAM_TERMINATOR:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 484
    goto :goto_0

    .line 472
    :cond_1
    sget-object v3, Lorg/apache/commons/fileupload/MultipartStream;->FIELD_SEPARATOR:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    const/4 v2, 0x1

    goto :goto_1

    .line 475
    :cond_2
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v4, "Unexpected characters follow a boundary"

    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    throw v0

    .line 481
    .end local v0    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :catch_1
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v4, "Stream ended unexpectedly"

    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    if-ne v0, v1, :cond_1

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    .line 428
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->bufSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    .line 429
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 431
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No more data is available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->tail:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteBytesRead(I)V

    .line 437
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream;->buffer:[B

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->head:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readHeaders()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;,
            Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2800

    .line 558
    const/4 v4, 0x0

    .line 561
    .local v4, "i":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 563
    .local v5, "size":I
    :goto_0
    sget-object v6, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readByte()B
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 572
    .local v0, "b":B
    add-int/lit8 v5, v5, 0x1

    if-le v5, v10, :cond_0

    .line 573
    new-instance v6, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v7, "Header section has more than %s bytes (maybe it is not properly terminated)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 575
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 574
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 566
    .end local v0    # "b":B
    :catch_0
    move-exception v2

    .line 568
    .local v2, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    throw v2

    .line 569
    .end local v2    # "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    :catch_1
    move-exception v2

    .line 570
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v7, "Stream ended unexpectedly"

    invoke-direct {v6, v7}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 577
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "b":B
    :cond_0
    sget-object v6, Lorg/apache/commons/fileupload/MultipartStream;->HEADER_SEPARATOR:[B

    aget-byte v6, v6, v4

    if-ne v0, v6, :cond_1

    .line 578
    add-int/lit8 v4, v4, 0x1

    .line 582
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 580
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 585
    .end local v0    # "b":B
    :cond_2
    const/4 v3, 0x0

    .line 586
    .local v3, "headers":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 588
    :try_start_1
    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 598
    :goto_2
    return-object v3

    .line 589
    :catch_2
    move-exception v2

    .line 592
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 593
    goto :goto_2

    .line 595
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public setBoundary([B)V
    .locals 4
    .param p1, "boundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;
        }
    .end annotation

    .prologue
    .line 508
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 509
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;

    const-string v1, "The length of a boundary token cannot be changed"

    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/MultipartStream$IllegalBoundaryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    sget-object v2, Lorg/apache/commons/fileupload/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream;->computeBoundaryTable()V

    .line 515
    return-void
.end method

.method public setHeaderEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream;->headerEncoding:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public skipPreamble()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 659
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 661
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream;->computeBoundaryTable()V

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->discardBodyData()I

    .line 668
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream;->readBoundary()Z
    :try_end_0
    .catch Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 673
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v2, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 675
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v9, v3, v2

    .line 676
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v8, v2, v7

    .line 677
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream;->computeBoundaryTable()V

    .line 670
    :goto_0
    return v1

    .line 669
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v1, v1

    iput v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 675
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v9, v1, v2

    .line 676
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v8, v1, v7

    .line 677
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream;->computeBoundaryTable()V

    move v1, v2

    .line 670
    goto :goto_0

    .line 673
    .end local v0    # "e":Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v2, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    array-length v3, v3

    iput v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundaryLength:I

    .line 675
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v9, v3, v2

    .line 676
    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream;->boundary:[B

    aput-byte v8, v2, v7

    .line 677
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream;->computeBoundaryTable()V

    .line 678
    throw v1
.end method
