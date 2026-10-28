.class public Lorg/eclipse/jetty/http/HttpGenerator;
.super Lorg/eclipse/jetty/http/AbstractGenerator;
.source "HttpGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpGenerator$1;,
        Lorg/eclipse/jetty/http/HttpGenerator$Status;
    }
.end annotation


# static fields
.field private static final CHUNK_SPACE:I = 0xc

.field private static final CONNECTION_:[B

.field private static final CONNECTION_CLOSE:[B

.field private static final CONNECTION_KEEP_ALIVE:[B

.field private static final CONTENT_LENGTH_0:[B

.field private static final CRLF:[B

.field private static final LAST_CHUNK:[B

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static SERVER:[B

.field private static final TRANSFER_ENCODING_CHUNKED:[B

.field private static final __status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;


# instance fields
.field private _bufferChunked:Z

.field protected _bypass:Z

.field private _needCRLF:Z

.field private _needEOC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 44
    const-class v6, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-static {v6}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 53
    const/16 v6, 0x1fc

    new-array v6, v6, [Lorg/eclipse/jetty/http/HttpGenerator$Status;

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    .line 56
    sget-object v6, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    .line 58
    .local v5, "versionLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 60
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpStatus;->getCode(I)Lorg/eclipse/jetty/http/HttpStatus$Code;

    move-result-object v1

    .line 61
    .local v1, "code":Lorg/eclipse/jetty/http/HttpStatus$Code;
    if-nez v1, :cond_0

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "reason":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 65
    .local v0, "bytes":[B
    sget-object v6, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6, v10, v0, v10, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I[BII)I

    .line 66
    add-int/lit8 v6, v5, 0x0

    aput-byte v11, v0, v6

    .line 67
    add-int/lit8 v6, v5, 0x1

    div-int/lit8 v7, v2, 0x64

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 68
    add-int/lit8 v6, v5, 0x2

    rem-int/lit8 v7, v2, 0x64

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 69
    add-int/lit8 v6, v5, 0x3

    rem-int/lit8 v7, v2, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 70
    add-int/lit8 v6, v5, 0x4

    aput-byte v11, v0, v6

    .line 71
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 72
    add-int/lit8 v6, v5, 0x5

    add-int/2addr v6, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v6, v5, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xd

    aput-byte v7, v0, v6

    .line 74
    add-int/lit8 v6, v5, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xa

    aput-byte v7, v0, v6

    .line 76
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    new-instance v7, Lorg/eclipse/jetty/http/HttpGenerator$Status;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/eclipse/jetty/http/HttpGenerator$Status;-><init>(Lorg/eclipse/jetty/http/HttpGenerator$1;)V

    aput-object v7, v6, v2

    .line 77
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    add-int/lit8 v8, v5, 0x5

    array-length v9, v0

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x7

    invoke-direct {v7, v0, v8, v9, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v7, v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 78
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    add-int/lit8 v8, v5, 0x5

    invoke-direct {v7, v0, v10, v8, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v7, v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_schemeCode:Lorg/eclipse/jetty/io/Buffer;

    .line 79
    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v6, v6, v2

    new-instance v7, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    array-length v8, v0

    invoke-direct {v7, v0, v10, v8, v10}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v7, v6, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 94
    .end local v0    # "bytes":[B
    .end local v1    # "code":Lorg/eclipse/jetty/http/HttpStatus$Code;
    .end local v3    # "j":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x5

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    .line 96
    const-string v6, "Content-Length: 0\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONTENT_LENGTH_0:[B

    .line 97
    const-string v6, "Connection: keep-alive\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    .line 98
    const-string v6, "Connection: close\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_CLOSE:[B

    .line 99
    const-string v6, "Connection: "

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_:[B

    .line 100
    const-string v6, "\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    .line 101
    const-string v6, "Transfer-Encoding: chunked\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    .line 102
    const-string v6, "Server: Jetty(7.0.x)\r\n"

    invoke-static {v6}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    return-void

    .line 94
    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "io"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 113
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 114
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 115
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 116
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 129
    return-void
.end method

.method private flushMask()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static getReasonBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 3
    .param p0, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    array-length v2, v2

    if-ge p0, v2, :cond_1

    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v0, v2, p0

    .line 87
    .local v0, "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 89
    :cond_0
    return-object v1

    .end local v0    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :cond_1
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method private prepareBuffers()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 930
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v2, :cond_a

    .line 933
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lez v2, :cond_0

    .line 935
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 936
    .local v0, "len":I
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 937
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 938
    iput-object v9, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 942
    .end local v0    # "len":I
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 944
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_c

    .line 947
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 948
    .local v1, "size":I
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 950
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_2

    .line 951
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 954
    :cond_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_4

    .line 956
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 958
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 961
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 962
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 965
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1016
    .end local v1    # "size":I
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 1018
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_7

    .line 1019
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1021
    :cond_7
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_8

    .line 1023
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    array-length v3, v3

    if-lt v2, v3, :cond_13

    .line 1025
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1026
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1035
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v2, :cond_a

    .line 1037
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    array-length v3, v3

    if-lt v2, v3, :cond_14

    .line 1039
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v2, :cond_9

    .line 1041
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1042
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1044
    :cond_9
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 1060
    :cond_a
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 1061
    iput-object v9, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 1063
    :cond_b
    return-void

    .line 967
    :cond_c
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_5

    .line 969
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 970
    .restart local v1    # "size":I
    if-lez v1, :cond_5

    .line 973
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 977
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_e

    .line 980
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3, v4, v6, v8}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 981
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 982
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/io/BufferUtil;->prependHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 984
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_d

    .line 986
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3, v4, v6, v8}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 987
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 988
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1008
    :cond_d
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lt v2, v8, :cond_12

    .line 1009
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_0

    .line 994
    :cond_e
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_f

    .line 995
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 997
    :cond_f
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v2, :cond_11

    .line 999
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1000
    :cond_10
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1001
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 1003
    :cond_11
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 1004
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_3

    .line 1011
    :cond_12
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_0

    .line 1028
    .end local v1    # "size":I
    :cond_13
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    array-length v3, v3

    if-lt v2, v3, :cond_8

    .line 1030
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1031
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    goto/16 :goto_1

    .line 1046
    :cond_14
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    array-length v3, v3

    if-lt v2, v3, :cond_a

    .line 1048
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v2, :cond_15

    .line 1050
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1051
    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 1053
    :cond_15
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    goto/16 :goto_2
.end method

.method public static setServerVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server: Jetty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    .line 110
    return-void
.end method


# virtual methods
.method public addContent(Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 8
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 175
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NO CONTENT"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 180
    :cond_1
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Ignoring extra content {}"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 239
    :cond_2
    :goto_0
    return-void

    .line 184
    :cond_3
    iput-boolean p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 187
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v2, :cond_7

    .line 189
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v2}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v2

    .line 191
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 192
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 194
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v2, :cond_8

    .line 196
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 197
    .local v1, "nc":Lorg/eclipse/jetty/io/Buffer;
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 198
    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 199
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 200
    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 201
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 202
    move-object p1, v1

    .line 214
    .end local v1    # "nc":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 215
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 218
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v2, :cond_9

    .line 220
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 221
    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 206
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 207
    .restart local v1    # "nc":Lorg/eclipse/jetty/io/Buffer;
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 208
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 209
    move-object p1, v1

    goto :goto_1

    .line 223
    .end local v1    # "nc":Lorg/eclipse/jetty/io/Buffer;
    :cond_9
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_c

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_c

    .line 225
    :cond_b
    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    goto/16 :goto_0

    .line 227
    :cond_c
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v2, :cond_2

    .line 230
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_d

    .line 231
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 234
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 235
    .local v0, "len":I
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 236
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 237
    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_0
.end method

.method public complete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 786
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    .line 791
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ge v0, v2, :cond_1

    .line 793
    iput v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 794
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 798
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    goto :goto_0
.end method

.method public completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    .locals 24
    .param p1, "fields"    # Lorg/eclipse/jetty/http/HttpFields;
    .param p2, "allContentAdded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 775
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 369
    new-instance v20, Lorg/eclipse/jetty/io/EofException;

    invoke-direct/range {v20 .. v20}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v20

    .line 371
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    if-nez p2, :cond_2

    .line 372
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "last?"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    or-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 379
    :cond_3
    const/4 v13, 0x0

    .line 383
    .local v13, "has_server":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 385
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 389
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 394
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 395
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 771
    :catch_0
    move-exception v10

    .line 773
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Header>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 400
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v22, 0xa

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    sget-object v20, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_0_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 482
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpHeaders;->DATE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x3a

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 492
    :cond_6
    const/4 v8, 0x0

    .line 493
    .local v8, "content_length":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/16 v18, 0x0

    .line 494
    .local v18, "transfer_encoding":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/4 v15, 0x0

    .line 495
    .local v15, "keep_alive":Z
    const/4 v5, 0x0

    .line 496
    .local v5, "close":Z
    const/4 v9, 0x0

    .line 497
    .local v9, "content_type":Z
    const/4 v6, 0x0

    .line 499
    .local v6, "connection":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_21

    .line 501
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/http/HttpFields;->size()I

    move-result v16

    .line 502
    .local v16, "s":I
    const/4 v11, 0x0

    .local v11, "f":I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_21

    .line 504
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/http/HttpFields;->getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v12

    .line 505
    .local v12, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v12, :cond_14

    .line 502
    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 404
    .end local v5    # "close":Z
    .end local v6    # "connection":Ljava/lang/StringBuilder;
    .end local v8    # "content_length":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v9    # "content_type":Z
    .end local v11    # "f":I
    .end local v12    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v15    # "keep_alive":Z
    .end local v16    # "s":I
    .end local v18    # "transfer_encoding":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_8
    sget-object v20, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 411
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 413
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 414
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 415
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 420
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 421
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    const/16 v20, 0x1

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 424
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    sget-object v20, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    aget-object v17, v20, v21

    .line 426
    .local v17, "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :goto_6
    if-nez v17, :cond_10

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0x64

    div-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x64

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0x64

    div-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v21, v0

    rem-int/lit8 v21, v21, 0xa

    add-int/lit8 v21, v21, 0x30

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 442
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 456
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_12

    .line 458
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 459
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 464
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x65

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 467
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 421
    .end local v17    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 424
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 441
    .restart local v17    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto/16 :goto_7

    .line 446
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-nez v20, :cond_11

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto/16 :goto_8

    .line 450
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_schemeCode:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_8

    .line 471
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xcc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 473
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 474
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_2

    .line 508
    .end local v17    # "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    .restart local v5    # "close":Z
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    .restart local v8    # "content_length":Lorg/eclipse/jetty/http/HttpFields$Field;
    .restart local v9    # "content_type":Z
    .restart local v11    # "f":I
    .restart local v12    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .restart local v15    # "keep_alive":Z
    .restart local v16    # "s":I
    .restart local v18    # "transfer_encoding":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_14
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getNameOrdinal()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 511
    :sswitch_0
    move-object v8, v12

    .line 512
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 514
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_16

    .line 515
    :cond_15
    const/4 v8, 0x0

    .line 518
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 522
    :sswitch_1
    sget-object v20, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/eclipse/jetty/io/BufferUtil;->isPrefix(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v20

    if-eqz v20, :cond_17

    const-wide/16 v20, -0x4

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 525
    :cond_17
    const/4 v9, 0x1

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 530
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 531
    move-object/from16 v18, v12

    goto/16 :goto_4

    .line 536
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 539
    :cond_18
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v7

    .line 540
    .local v7, "connection_value":I
    sparse-switch v7, :sswitch_data_1

    .line 621
    if-nez v6, :cond_20

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "connection":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    :goto_9
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 544
    :sswitch_4
    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 545
    .local v19, "values":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 547
    sget-object v20, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v21, v19, v14

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v4

    .line 549
    .local v4, "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v4, :cond_1c

    .line 551
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v20

    sparse-switch v20, :sswitch_data_2

    .line 572
    if-nez v6, :cond_1b

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "connection":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    :goto_b
    aget-object v20, v19, v14

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_19
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 554
    :sswitch_5
    const/4 v5, 0x1

    .line 555
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 556
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 557
    :cond_1a
    const/4 v15, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x3

    cmp-long v20, v20, v22

    if-nez v20, :cond_19

    .line 559
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto :goto_c

    .line 563
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 565
    const/4 v15, 0x1

    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_19

    .line 567
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto :goto_c

    .line 575
    :cond_1b
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 581
    :cond_1c
    if-nez v6, :cond_1d

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "connection":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .restart local v6    # "connection":Ljava/lang/StringBuilder;
    :goto_d
    aget-object v20, v19, v14

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 584
    :cond_1d
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 594
    .end local v4    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v14    # "i":I
    .end local v19    # "values":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 602
    :cond_1e
    :sswitch_8
    const/4 v5, 0x1

    .line 603
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 604
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 605
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x3

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    .line 606
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto/16 :goto_4

    .line 611
    :sswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 613
    const/4 v15, 0x1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 615
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 624
    :cond_20
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 633
    .end local v7    # "connection_value":I
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 635
    const/4 v13, 0x1

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_4

    .line 656
    .end local v11    # "f":I
    .end local v12    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v16    # "s":I
    :cond_21
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 709
    :cond_22
    :goto_e
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x2

    cmp-long v20, v20, v22

    if-nez v20, :cond_23

    .line 712
    if-eqz v18, :cond_2f

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2f

    .line 714
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "c":Ljava/lang/String;
    const-string v20, "chunked"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 725
    .end local v3    # "c":Ljava/lang/String;
    :cond_23
    :goto_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_24

    .line 727
    const/4 v15, 0x0

    .line 728
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 731
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_26

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_30

    if-nez v5, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_30

    .line 735
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_CLOSE:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 736
    if-eqz v6, :cond_26

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x2c

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 763
    :cond_26
    :goto_10
    if-nez v13, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v20

    if-eqz v20, :cond_27

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->SERVER:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 767
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 768
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 663
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xcc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    .line 664
    :cond_28
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto/16 :goto_e

    .line 665
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    .line 668
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 669
    if-nez v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-nez v20, :cond_2a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_2a

    if-eqz v9, :cond_22

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    move/from16 v20, v0

    if-nez v20, :cond_22

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x3a

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x20

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Lorg/eclipse/jetty/io/BufferUtil;->putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_e

    .line 682
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2d

    :cond_2c
    const-wide/16 v20, -0x1

    :goto_11
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 683
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_22

    .line 685
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 686
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    goto/16 :goto_e

    .line 682
    :cond_2d
    const-wide/16 v20, -0x2

    goto :goto_11

    .line 692
    :pswitch_2
    if-nez v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0xcc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONTENT_LENGTH_0:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_e

    .line 697
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto/16 :goto_e

    .line 718
    .restart local v3    # "c":Ljava/lang/String;
    :cond_2e
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "BAD TE"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 721
    .end local v3    # "c":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->TRANSFER_ENCODING_CHUNKED:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_f

    .line 744
    :cond_30
    if-eqz v15, :cond_31

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_KEEP_ALIVE:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 747
    if-eqz v6, :cond_26

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    const/16 v21, 0x2c

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_10

    .line 755
    :cond_31
    if-eqz v6, :cond_26

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CONNECTION_:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v20, v0

    sget-object v21, Lorg/eclipse/jetty/http/HttpGenerator;->CRLF:[B

    invoke-interface/range {v20 .. v21}, Lorg/eclipse/jetty/io/Buffer;->put([B)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
        0x30 -> :sswitch_a
    .end sparse-switch

    .line 540
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
        0xb -> :sswitch_7
    .end sparse-switch

    .line 551
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_6
    .end sparse-switch

    .line 656
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public flushBuffer()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v4, 0x0

    .line 808
    :try_start_0
    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v5, :cond_0

    .line 809
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "State==HEADER"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 914
    instance-of v5, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v5, :cond_d

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .line 811
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->prepareBuffers()V

    .line 813
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v5, :cond_4

    .line 815
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_1

    .line 816
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 817
    :cond_1
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v5, :cond_2

    .line 818
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v6, Lorg/eclipse/jetty/http/HttpGenerator;->LAST_CHUNK:[B

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 819
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 820
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 909
    :cond_3
    :goto_1
    return v4

    .line 824
    :cond_4
    const/4 v4, 0x0

    .line 826
    .local v4, "total":I
    const/4 v2, -0x1

    .line 827
    .local v2, "len":I
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushMask()I

    move-result v3

    .line 832
    .local v3, "to_flush":I
    :cond_5
    move v1, v3

    .line 833
    .local v1, "last_flush":I
    packed-switch v3, :pswitch_data_0

    .line 901
    :cond_6
    :goto_2
    if-lez v2, :cond_7

    .line 902
    add-int/2addr v4, v2

    .line 904
    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushMask()I

    move-result v3

    .line 907
    if-gtz v2, :cond_5

    if-eqz v3, :cond_3

    if-eqz v1, :cond_5

    goto :goto_1

    .line 836
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 838
    :pswitch_1
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 839
    goto :goto_2

    .line 841
    :pswitch_2
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 842
    goto :goto_2

    .line 844
    :pswitch_3
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 845
    goto :goto_2

    .line 847
    :pswitch_4
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 848
    goto :goto_2

    .line 850
    :pswitch_5
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 851
    goto :goto_2

    .line 853
    :pswitch_6
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 854
    goto :goto_2

    .line 857
    :pswitch_7
    const/4 v2, 0x0

    .line 859
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_8

    .line 860
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 862
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 863
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 865
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_9

    .line 867
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 868
    iget-wide v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v7, -0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    .line 871
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 872
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 876
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v6

    if-ge v5, v6, :cond_9

    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eq v5, v9, :cond_9

    .line 878
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 879
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 880
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 886
    :cond_9
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 888
    :cond_a
    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v5, v9, :cond_b

    .line 889
    const/4 v5, 0x4

    iput v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 891
    :cond_b
    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v5, v10, :cond_6

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v5, :cond_6

    .line 892
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto/16 :goto_2

    .line 896
    :cond_c
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->prepareBuffers()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 914
    .end local v1    # "last_flush":I
    .end local v2    # "len":I
    .end local v3    # "to_flush":I
    .end local v4    # "total":I
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_d
    new-instance v5, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v5, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytesBuffered()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_2
.end method

.method public isBufferFull()Z
    .locals 4

    .prologue
    .line 305
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequest()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponse()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareUncheckedAddContent()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 272
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 280
    .local v0, "content":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 282
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 283
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-eqz v1, :cond_6

    .line 284
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "FULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_7

    .line 289
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 291
    :cond_7
    iget-wide v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 294
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v1, :cond_8

    .line 295
    const v1, 0x7fffffff

    goto :goto_0

    .line 297
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    iget-wide v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v5, -0x2

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    const/16 v1, 0xc

    :goto_1
    sub-int v1, v2, v1

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->reset()V

    .line 147
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 149
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 151
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_3

    .line 152
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 153
    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 154
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needCRLF:Z

    .line 155
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_needEOC:Z

    .line 156
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    .line 157
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 158
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 160
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public send1xx(I)V
    .locals 6
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eqz v3, :cond_1

    .line 344
    :cond_0
    return-void

    .line 314
    :cond_1
    const/16 v3, 0x64

    if-lt p1, v3, :cond_2

    const/16 v3, 0xc7

    if-le p1, v3, :cond_3

    .line 315
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "!1xx"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->__status:[Lorg/eclipse/jetty/http/HttpGenerator$Status;

    aget-object v2, v3, p1

    .line 317
    .local v2, "status":Lorg/eclipse/jetty/http/HttpGenerator$Status;
    if-nez v2, :cond_4

    .line 318
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v3, :cond_5

    .line 322
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 324
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, v2, Lorg/eclipse/jetty/http/HttpGenerator$Status;->_responseLine:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 325
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 330
    :cond_6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 332
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 333
    .local v1, "len":I
    if-gez v1, :cond_7

    .line 334
    new-instance v3, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v3}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 342
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "len":I
    :cond_7
    if-nez v1, :cond_6

    .line 336
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "response"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bufferChunked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_2

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 252
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 254
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 255
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 256
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 259
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 1082
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1083
    .local v2, "header":Lorg/eclipse/jetty/io/Buffer;
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1084
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 1085
    .local v1, "content":Lorg/eclipse/jetty/io/Buffer;
    const-string v5, "%s{s=%d,h=%d,b=%d,c=%d}"

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v7, 0x3

    if-nez v0, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x4

    if-nez v1, :cond_2

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    goto :goto_2
.end method
