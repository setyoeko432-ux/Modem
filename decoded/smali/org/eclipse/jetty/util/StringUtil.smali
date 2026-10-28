.class public Lorg/eclipse/jetty/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final ALL_INTERFACES:Ljava/lang/String; = "0.0.0.0"

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final __ISO_8859_1_CHARSET:Ljava/nio/charset/Charset;

.field public static final __LINE_SEPARATOR:Ljava/lang/String;

.field public static final __UTF16:Ljava/lang/String; = "UTF-16"

.field public static final __UTF8:Ljava/lang/String; = "UTF-8"

.field public static final __UTF8Alt:Ljava/lang/String; = "UTF8"

.field public static final __UTF8_CHARSET:Ljava/nio/charset/Charset;

.field private static lowercases:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/util/StringUtil;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 42
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    .line 55
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    .line 56
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->__ISO_8859_1_CHARSET:Ljava/nio/charset/Charset;

    .line 59
    const/16 v0, 0x80

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;BI)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "base"    # I

    .prologue
    const/16 v3, 0x39

    .line 253
    and-int/lit16 v0, p1, 0xff

    .line 254
    .local v0, "bi":I
    div-int v2, v0, p2

    rem-int/2addr v2, p2

    add-int/lit8 v1, v2, 0x30

    .line 255
    .local v1, "c":I
    if-le v1, v3, :cond_0

    .line 256
    add-int/lit8 v2, v1, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v1, v2, 0x61

    .line 257
    :cond_0
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    rem-int v2, v0, p2

    add-int/lit8 v1, v2, 0x30

    .line 259
    if-le v1, v3, :cond_1

    .line 260
    add-int/lit8 v2, v1, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v1, v2, 0x61

    .line 261
    :cond_1
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 233
    monitor-enter p0

    .line 235
    add-int v0, p2, p3

    .line 236
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 242
    :cond_0
    monitor-exit p0

    .line 243
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static append2digits(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "i"    # I

    .prologue
    .line 267
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 269
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_0
    return-void
.end method

.method public static append2digits(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "i"    # I

    .prologue
    .line 277
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 279
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    return-void
.end method

.method public static asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "c":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .line 89
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_3

    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 92
    .local v1, "c1":C
    if-gt v1, v7, :cond_0

    .line 94
    sget-object v5, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    aget-char v2, v5, v1

    .line 95
    .local v2, "c2":C
    if-eq v1, v2, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 98
    aput-char v2, v0, v3

    move v4, v3

    .line 104
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_1

    .line 106
    aget-char v5, v0, v3

    if-gt v5, v7, :cond_3

    .line 107
    sget-object v5, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    aget-char v6, v0, v3

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .end local v4    # "i":I
    .restart local v1    # "c1":C
    .restart local v3    # "i":I
    :cond_0
    move v4, v3

    .line 102
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 110
    .end local v1    # "c1":C
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .end local p0    # "s":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    .restart local p0    # "s":Ljava/lang/String;
    :cond_3
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "w"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v6

    .line 146
    :cond_1
    if-nez p0, :cond_2

    move v6, v7

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 150
    .local v4, "sl":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 152
    .local v5, "wl":I
    if-ge v4, v5, :cond_3

    move v6, v7

    .line 153
    goto :goto_0

    .line 155
    :cond_3
    move v2, v5

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_0

    .line 157
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 158
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 159
    .local v1, "c2":C
    if-eq v0, v1, :cond_6

    .line 161
    if-gt v0, v9, :cond_4

    .line 162
    sget-object v8, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    aget-char v0, v8, v0

    .line 163
    :cond_4
    if-gt v1, v9, :cond_5

    .line 164
    sget-object v8, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    aget-char v1, v8, v1

    .line 165
    :cond_5
    if-eq v0, v1, :cond_6

    move v6, v7

    .line 166
    goto :goto_0

    :cond_6
    move v3, v2

    .line 168
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public static equals(Ljava/lang/String;[CII)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 302
    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/util/StringUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 391
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/util/StringUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static indexFrom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 181
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 178
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isUTF8(Ljava/lang/String;)Z
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 291
    if-nez p0, :cond_0

    .line 292
    const-string p0, ""

    .line 293
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 344
    if-nez p0, :cond_0

    .line 345
    const/4 v3, 0x0

    .line 353
    :goto_0
    return-object v3

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 349
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 350
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static printable([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 362
    aget-byte v3, p0, v2

    int-to-char v1, v3

    .line 363
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    if-le v1, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v1, v3, :cond_1

    .line 364
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    aget-byte v3, p0, v2

    invoke-static {v3, v0}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    goto :goto_1

    .line 371
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "c":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, "i":I
    if-ne v2, v5, :cond_0

    .line 207
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 195
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v0, "buf":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 202
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static sidBytesToString([B)Ljava/lang/String;
    .locals 13
    .param p0, "sidBytes"    # [B

    .prologue
    const/16 v12, 0x2d

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v2, "sidString":Ljava/lang/StringBuilder;
    const-string v5, "S-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    aget-byte v5, p0, v9

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v4, "tmpBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x7

    if-gt v0, v5, :cond_0

    .line 424
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    aget-byte v3, p0, v10

    .line 433
    .local v3, "subAuthorityCount":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 435
    mul-int/lit8 v1, v0, 0x4

    .line 436
    .local v1, "offset":I
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 438
    const-string v5, "%02X%02X%02X%02X"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v1, 0xb

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    add-int/lit8 v7, v1, 0xa

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    add-int/lit8 v8, v1, 0x9

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    add-int/lit8 v8, v1, 0x8

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    .end local v1    # "offset":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static sidStringToBytes(Ljava/lang/String;)[B
    .locals 11
    .param p0, "sidString"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x10

    .line 458
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, "sidTokens":[Ljava/lang/String;
    array-length v8, v6

    add-int/lit8 v7, v8, -0x3

    .line 462
    .local v7, "subAuthorityCount":I
    const/4 v0, 0x0

    .line 463
    .local v0, "byteCount":I
    mul-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0x8

    new-array v5, v8, [B

    .line 466
    .local v5, "sidBytes":[B
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteCount":I
    .local v1, "byteCount":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 469
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "byteCount":I
    .restart local v0    # "byteCount":I
    int-to-byte v8, v7

    aput-byte v8, v5, v1

    .line 472
    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "hexStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-ge v8, v9, :cond_0

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 482
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteCount":I
    .restart local v1    # "byteCount":I
    add-int/lit8 v8, v3, 0x2

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    .line 480
    add-int/lit8 v3, v3, 0x2

    move v0, v1

    .end local v1    # "byteCount":I
    .restart local v0    # "byteCount":I
    goto :goto_1

    .line 486
    :cond_1
    const/4 v3, 0x3

    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 488
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 490
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    if-ge v8, v9, :cond_2

    .line 492
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 496
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "j":I
    move v1, v0

    .end local v0    # "byteCount":I
    .restart local v1    # "byteCount":I
    :goto_4
    if-lez v4, :cond_3

    .line 498
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "byteCount":I
    .restart local v0    # "byteCount":I
    add-int/lit8 v8, v4, -0x2

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    .line 496
    add-int/lit8 v4, v4, -0x2

    move v1, v0

    .end local v0    # "byteCount":I
    .restart local v1    # "byteCount":I
    goto :goto_4

    .line 486
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "byteCount":I
    .restart local v0    # "byteCount":I
    goto :goto_2

    .line 502
    .end local v4    # "j":I
    :cond_4
    return-object v5
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "w"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v3

    .line 120
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 125
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 127
    .local v1, "c2":C
    if-eq v0, v1, :cond_6

    .line 129
    if-gt v0, v7, :cond_4

    .line 130
    sget-object v5, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    aget-char v0, v5, v0

    .line 131
    :cond_4
    if-gt v1, v7, :cond_5

    .line 132
    sget-object v5, Lorg/eclipse/jetty/util/StringUtil;->lowercases:[C

    aget-char v1, v5, v1

    .line 133
    :cond_5
    if-eq v0, v1, :cond_6

    move v3, v4

    .line 134
    goto :goto_0

    .line 123
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toUTF8String([BII)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 312
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
