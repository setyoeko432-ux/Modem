.class public Lcom/mifiservice/utils/NumUtil;
.super Ljava/lang/Object;
.source "NumUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2Int([B)I
    .locals 2
    .param p0, "byteData"    # [B

    .prologue
    .line 17
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytes2Long([B)J
    .locals 6
    .param p0, "byteNum"    # [B

    .prologue
    const/16 v5, 0x8

    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .local v1, "num":J
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 42
    shl-long/2addr v1, v5

    .line 43
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-wide v1
.end method

.method public static bytes2Short([B)S
    .locals 2
    .param p0, "byteData"    # [B

    .prologue
    .line 13
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static int2Bytes(I)[B
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 22
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 23
    .local v0, "result":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 24
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 25
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 26
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 27
    return-object v0
.end method

.method public static long2Bytes(J)[B
    .locals 8
    .param p0, "num"    # J

    .prologue
    const/16 v7, 0x8

    .line 31
    new-array v0, v7, [B

    .line 32
    .local v0, "byteNum":[B
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 33
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v2, v3, 0x40

    .line 34
    .local v2, "offset":I
    shr-long v3, p0, v2

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "offset":I
    :cond_0
    return-object v0
.end method

.method public static short2Bytes(S)[B
    .locals 3
    .param p0, "shortData"    # S

    .prologue
    .line 6
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 7
    .local v0, "result":[B
    const/4 v1, 0x0

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 8
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 9
    return-object v0
.end method
