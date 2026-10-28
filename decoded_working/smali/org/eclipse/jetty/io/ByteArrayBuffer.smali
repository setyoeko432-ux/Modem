.class public Lorg/eclipse/jetty/io/ByteArrayBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "ByteArrayBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
    }
.end annotation


# static fields
.field static final MAX_WRITE:I


# instance fields
.field protected final _bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "org.eclipse.jetty.io.ByteArrayBuffer.MAX_WRITE"

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->MAX_WRITE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    new-array v0, p1, [B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 75
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 76
    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "access"    # I
    .param p3, "isVolatile"    # Z

    .prologue
    const/4 v2, 0x0

    .line 41
    new-array v1, p1, [B

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIIIZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 81
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 82
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 84
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 105
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 107
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 108
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "immutable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 91
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 92
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 94
    if-eqz p2, :cond_0

    .line 96
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 99
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 47
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 51
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 52
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "access"    # I

    .prologue
    .line 56
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 58
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 60
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 61
    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "access"    # I
    .param p5, "isVolatile"    # Z

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 66
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 67
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 69
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 70
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public compact()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "READONLY"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    .line 127
    .local v1, "s":I
    :goto_0
    if-lez v1, :cond_3

    .line 129
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    sub-int v0, v2, v1

    .line 130
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 132
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setMarkIndex(I)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 138
    .end local v0    # "length":I
    :cond_3
    return-void

    .line 126
    .end local v1    # "s":I
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 177
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v8

    .line 147
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    instance-of v10, p1, Lorg/eclipse/jetty/io/Buffer;

    if-nez v10, :cond_3

    :cond_2
    move v8, v9

    .line 148
    goto :goto_0

    .line 150
    :cond_3
    instance-of v10, p1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v10, :cond_4

    .line 151
    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v8

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    move-object v1, p1

    .line 154
    check-cast v1, Lorg/eclipse/jetty/io/Buffer;

    .line 157
    .local v1, "b":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_5

    move v8, v9

    .line 158
    goto :goto_0

    .line 161
    :cond_5
    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v10, :cond_6

    instance-of v10, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v10, :cond_6

    move-object v0, p1

    .line 163
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 164
    .local v0, "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    iget v10, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_6

    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v11, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_6

    move v8, v9

    .line 165
    goto :goto_0

    .line 169
    .end local v0    # "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v5

    .line 170
    .local v5, "get":I
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 171
    .local v4, "bi":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v6

    .local v6, "i":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 173
    iget-object v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v2, v10, v6

    .line 174
    .local v2, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v3

    .line 175
    .local v3, "b2":B
    if-eq v2, v3, :cond_7

    move v8, v9

    goto :goto_0

    :cond_7
    move v7, v6

    .line 176
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1
.end method

.method public equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 14
    .param p1, "b"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v8, 0x1

    const/16 v13, 0x7a

    const/16 v12, 0x61

    const/4 v9, 0x0

    .line 184
    if-ne p1, p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v8

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v11

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    .line 189
    goto :goto_0

    .line 192
    :cond_3
    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v10, :cond_4

    instance-of v10, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v10, :cond_4

    move-object v0, p1

    .line 194
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 195
    .local v0, "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    iget v10, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v10, :cond_4

    iget v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v11, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v10, v11, :cond_4

    move v8, v9

    goto :goto_0

    .line 199
    .end local v0    # "ab":Lorg/eclipse/jetty/io/AbstractBuffer;
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v5

    .line 200
    .local v5, "get":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 201
    .local v4, "bi":I
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    .line 202
    .local v3, "barray":[B
    if-nez v3, :cond_8

    .line 204
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v6

    .local v6, "i":I
    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 206
    iget-object v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v10, v6

    .line 207
    .local v1, "b1":B
    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v2

    .line 208
    .local v2, "b2":B
    if-eq v1, v2, :cond_7

    .line 210
    if-gt v12, v1, :cond_5

    if-gt v1, v13, :cond_5

    add-int/lit8 v10, v1, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v1, v10

    .line 211
    :cond_5
    if-gt v12, v2, :cond_6

    if-gt v2, v13, :cond_6

    add-int/lit8 v10, v2, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v2, v10

    .line 212
    :cond_6
    if-eq v1, v2, :cond_7

    move v8, v9

    goto :goto_0

    :cond_7
    move v7, v6

    .line 214
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .line 218
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v7    # "i":I
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v6

    .restart local v6    # "i":I
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :goto_2
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-le v7, v5, :cond_0

    .line 220
    iget-object v10, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v1, v10, v6

    .line 221
    .restart local v1    # "b1":B
    add-int/lit8 v4, v4, -0x1

    aget-byte v2, v3, v4

    .line 222
    .restart local v2    # "b2":B
    if-eq v1, v2, :cond_b

    .line 224
    if-gt v12, v1, :cond_9

    if-gt v1, v13, :cond_9

    add-int/lit8 v10, v1, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v1, v10

    .line 225
    :cond_9
    if-gt v12, v2, :cond_a

    if-gt v2, v13, :cond_a

    add-int/lit8 v10, v2, -0x61

    add-int/lit8 v10, v10, 0x41

    int-to-byte v2, v10

    .line 226
    :cond_a
    if-eq v1, v2, :cond_b

    move v8, v9

    goto/16 :goto_0

    :cond_b
    move v7, v6

    .line 228
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_2
.end method

.method public get()B
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 242
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    iget v5, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    iget v5, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    if-eq v4, v5, :cond_4

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    .line 245
    .local v1, "get":I
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-le v3, v1, :cond_2

    .line 247
    iget-object v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v4, v2

    .line 248
    .local v0, "b":B
    const/16 v4, 0x61

    if-gt v4, v0, :cond_1

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_1

    .line 249
    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-byte v0, v4

    .line 250
    :cond_1
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v0

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    move v3, v2

    .line 251
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 252
    .end local v0    # "b":B
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-nez v4, :cond_3

    .line 253
    const/4 v4, -0x1

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 254
    :cond_3
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    .line 255
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    iput v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    .line 257
    .end local v1    # "get":I
    .end local v2    # "i":I
    :cond_4
    iget v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    return v4
.end method

.method public peek(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public peek(I[BII)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v1, -0x1

    .line 268
    move v0, p4

    .line 269
    .local v0, "l":I
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 271
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v2

    sub-int v0, v2, p1

    .line 272
    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 276
    :cond_1
    if-ltz v0, :cond_0

    .line 279
    iget-object v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v1, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 280
    goto :goto_0
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 300
    const/4 v6, 0x0

    iput v6, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 309
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 310
    .local v2, "length":I
    add-int v6, p1, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v6

    sub-int v2, v6, p1

    .line 319
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v5

    .line 320
    .local v5, "src_array":[B
    if-eqz v5, :cond_1

    .line 321
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v5, v6, v7, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    :goto_0
    return v2

    .line 324
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    .line 325
    .local v3, "s":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "s":I
    .local v4, "s":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 326
    iget-object v6, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "s":I
    .restart local v3    # "s":I
    invoke-interface {p2, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v7

    aput-byte v7, v6, v1

    .line 325
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "s":I
    .restart local v4    # "s":I
    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    :cond_2
    move p1, v1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 344
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int p4, v0, p1

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return p4
.end method

.method public poke(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, v0, p1

    .line 295
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v4

    if-le p2, v4, :cond_1

    .line 385
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result p2

    .line 386
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    .line 388
    .local v2, "p":I
    const/4 v1, 0x0

    .local v1, "len":I
    const/4 v3, 0x0

    .local v3, "total":I
    move v0, p2

    .line 389
    .local v0, "available":I
    :cond_2
    if-ge v3, p2, :cond_3

    .line 391
    iget-object v4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v4, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 392
    if-gez v1, :cond_5

    .line 404
    :cond_3
    :goto_0
    if-gez v1, :cond_4

    if-nez v3, :cond_4

    .line 405
    const/4 v3, -0x1

    .line 406
    .end local v3    # "total":I
    :cond_4
    return v3

    .line 394
    .restart local v3    # "total":I
    :cond_5
    if-lez v1, :cond_6

    .line 396
    add-int/2addr v2, v1

    .line 397
    add-int/2addr v3, v1

    .line 398
    sub-int/2addr v0, v1

    .line 399
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 401
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v1

    .line 363
    .local v1, "len":I
    sget v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;->MAX_WRITE:I

    if-lez v3, :cond_1

    sget v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;->MAX_WRITE:I

    if-le v1, v3, :cond_1

    .line 365
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    .line 366
    .local v2, "off":I
    :goto_0
    if-lez v1, :cond_2

    .line 368
    sget v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;->MAX_WRITE:I

    if-le v1, v3, :cond_0

    sget v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->MAX_WRITE:I

    .line 369
    .local v0, "c":I
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 370
    add-int/2addr v2, v0

    .line 371
    sub-int/2addr v1, v0

    .line 372
    goto :goto_0

    .end local v0    # "c":I
    :cond_0
    move v0, v1

    .line 368
    goto :goto_1

    .line 375
    .end local v2    # "off":I
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v4

    invoke-virtual {p1, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 376
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isImmutable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 377
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 378
    :cond_3
    return-void
.end method
