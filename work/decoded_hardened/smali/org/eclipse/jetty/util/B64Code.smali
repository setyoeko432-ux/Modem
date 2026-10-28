.class public Lorg/eclipse/jetty/util/B64Code;
.super Ljava/lang/Object;
.source "B64Code.java"


# static fields
.field static final __pad:C = '='

.field static final __rfc1421alphabet:[C

.field static final __rfc1421nibbles:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x40

    .line 38
    new-array v2, v4, [C

    fill-array-data v2, :array_0

    sput-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    .line 50
    new-array v2, v5, [B

    sput-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 52
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .local v0, "b":B
    :goto_1
    if-ge v0, v4, :cond_1

    .line 54
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    sget-object v3, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v0, v2, v3

    .line 53
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_1

    .line 55
    :cond_1
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 56
    return-void

    .line 38
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "charEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 247
    .local v0, "decoded":[B
    if-nez p1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 249
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 11
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "bout"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 371
    if-nez p0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    if-nez p1, :cond_2

    .line 375
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No outputstream for decoded bytes"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 377
    :cond_2
    const/4 v1, 0x0

    .line 378
    .local v1, "ci":I
    const/4 v7, 0x4

    new-array v4, v7, [B

    .line 379
    .local v4, "nibbles":[B
    const/4 v5, 0x0

    .line 381
    .local v5, "s":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 383
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ci":I
    .local v2, "ci":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "c":C
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_3

    move v1, v2

    .line 386
    .end local v2    # "ci":I
    .restart local v1    # "ci":I
    goto :goto_0

    .line 388
    .end local v1    # "ci":I
    .restart local v2    # "ci":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v2

    .line 389
    .end local v2    # "ci":I
    .restart local v1    # "ci":I
    goto :goto_1

    .line 391
    .end local v1    # "ci":I
    .restart local v2    # "ci":I
    :cond_4
    sget-object v7, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    aget-byte v3, v7, v0

    .line 392
    .local v3, "nibble":B
    if-gez v3, :cond_5

    .line 393
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Not B64 encoded"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 395
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "s":I
    .local v6, "s":I
    sget-object v7, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B

    aget-byte v7, v7, v0

    aput-byte v7, v4, v5

    .line 397
    packed-switch v6, :pswitch_data_0

    move v5, v6

    .end local v6    # "s":I
    .restart local v5    # "s":I
    :goto_2
    move v1, v2

    .line 413
    .end local v2    # "ci":I
    .restart local v1    # "ci":I
    goto :goto_1

    .end local v1    # "ci":I
    .end local v5    # "s":I
    .restart local v2    # "ci":I
    .restart local v6    # "s":I
    :pswitch_0
    move v5, v6

    .line 400
    .end local v6    # "s":I
    .restart local v5    # "s":I
    goto :goto_2

    .line 402
    .end local v5    # "s":I
    .restart local v6    # "s":I
    :pswitch_1
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x2

    aget-byte v8, v4, v9

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v5, v6

    .line 403
    .end local v6    # "s":I
    .restart local v5    # "s":I
    goto :goto_2

    .line 405
    .end local v5    # "s":I
    .restart local v6    # "s":I
    :pswitch_2
    aget-byte v7, v4, v9

    shl-int/lit8 v7, v7, 0x4

    aget-byte v8, v4, v10

    ushr-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v5, v6

    .line 406
    .end local v6    # "s":I
    .restart local v5    # "s":I
    goto :goto_2

    .line 408
    .end local v5    # "s":I
    .restart local v6    # "s":I
    :pswitch_3
    aget-byte v7, v4, v10

    shl-int/lit8 v7, v7, 0x6

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    or-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    const/4 v5, 0x0

    .end local v6    # "s":I
    .restart local v5    # "s":I
    goto :goto_2

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    const/4 v1, 0x0

    .line 356
    :goto_0
    return-object v1

    .line 354
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 355
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static decode([C)[B
    .locals 18
    .param p0, "b"    # [C

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    const/4 v10, 0x0

    .line 337
    :goto_0
    return-object v10

    .line 270
    :cond_0
    move-object/from16 v0, p0

    array-length v5, v0

    .line 271
    .local v5, "bLen":I
    rem-int/lit8 v15, v5, 0x4

    if-eqz v15, :cond_1

    .line 272
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Input block size is not 4"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 274
    :cond_1
    add-int/lit8 v9, v5, -0x1

    .line 275
    .local v9, "li":I
    :goto_1
    if-ltz v9, :cond_2

    aget-char v15, p0, v9

    const/16 v16, 0x3d

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 276
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 278
    :cond_2
    if-gez v9, :cond_3

    .line 279
    const/4 v15, 0x0

    new-array v10, v15, [B

    goto :goto_0

    .line 282
    :cond_3
    add-int/lit8 v15, v9, 0x1

    mul-int/lit8 v15, v15, 0x3

    div-int/lit8 v11, v15, 0x4

    .line 283
    .local v11, "rLen":I
    new-array v10, v11, [B

    .line 284
    .local v10, "r":[B
    const/4 v12, 0x0

    .line 285
    .local v12, "ri":I
    const/4 v6, 0x0

    .line 286
    .local v6, "bi":I
    div-int/lit8 v15, v11, 0x3

    mul-int/lit8 v14, v15, 0x3

    .local v14, "stop":I
    move v7, v6

    .end local v6    # "bi":I
    .local v7, "bi":I
    move v13, v12

    .line 290
    .end local v12    # "ri":I
    .local v13, "ri":I
    :goto_2
    if-ge v13, v14, :cond_6

    .line 292
    :try_start_0
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_1
    aget-char v16, p0, v7

    aget-byte v1, v15, v16

    .line 293
    .local v1, "b0":B
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_2
    aget-char v16, p0, v6

    aget-byte v2, v15, v16

    .line 294
    .local v2, "b1":B
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_3
    aget-char v16, p0, v7

    aget-byte v3, v15, v16

    .line 295
    .local v3, "b2":B
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_4
    aget-char v16, p0, v6

    aget-byte v4, v15, v16

    .line 296
    .local v4, "b3":B
    if-ltz v1, :cond_4

    if-ltz v2, :cond_4

    if-ltz v3, :cond_4

    if-gez v4, :cond_5

    .line 297
    :cond_4
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Not B64 encoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 331
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v4    # "b3":B
    :catch_0
    move-exception v8

    move v6, v7

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    move v12, v13

    .line 333
    .end local v13    # "ri":I
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "ri":I
    :goto_3
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "char "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " was not B64 encoded"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 299
    .end local v6    # "bi":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v12    # "ri":I
    .restart local v1    # "b0":B
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    .restart local v4    # "b3":B
    .restart local v7    # "bi":I
    .restart local v13    # "ri":I
    :cond_5
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v1, 0x2

    ushr-int/lit8 v16, v2, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_5
    aput-byte v15, v10, v13
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    .line 300
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "ri":I
    .restart local v13    # "ri":I
    shl-int/lit8 v15, v2, 0x4

    ushr-int/lit8 v16, v3, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_6
    aput-byte v15, v10, v12
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 301
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v3, 0x6

    or-int/2addr v15, v4

    int-to-byte v15, v15

    :try_start_7
    aput-byte v15, v10, v13
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    move v13, v12

    .end local v12    # "ri":I
    .restart local v13    # "ri":I
    goto :goto_2

    .line 304
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v4    # "b3":B
    :cond_6
    if-eq v11, v13, :cond_7

    .line 306
    :try_start_8
    rem-int/lit8 v15, v11, 0x3

    packed-switch v15, :pswitch_data_0

    :cond_7
    move v6, v7

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    move v12, v13

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    goto/16 :goto_0

    .line 309
    .end local v6    # "bi":I
    .end local v12    # "ri":I
    .restart local v7    # "bi":I
    .restart local v13    # "ri":I
    :pswitch_0
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_9
    aget-char v16, p0, v7

    aget-byte v1, v15, v16

    .line 310
    .restart local v1    # "b0":B
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_a
    aget-char v16, p0, v6

    aget-byte v2, v15, v16

    .line 311
    .restart local v2    # "b1":B
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_b
    aget-char v16, p0, v7

    aget-byte v3, v15, v16

    .line 312
    .restart local v3    # "b2":B
    if-ltz v1, :cond_8

    if-ltz v2, :cond_8

    if-gez v3, :cond_9

    .line 313
    :cond_8
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Not B64 encoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    .line 331
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :catch_1
    move-exception v8

    move v12, v13

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    goto :goto_3

    .line 314
    .end local v12    # "ri":I
    .restart local v1    # "b0":B
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    .restart local v13    # "ri":I
    :cond_9
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v1, 0x2

    ushr-int/lit8 v16, v2, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_c
    aput-byte v15, v10, v13
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3

    .line 315
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "ri":I
    .restart local v13    # "ri":I
    shl-int/lit8 v15, v2, 0x4

    ushr-int/lit8 v16, v3, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_d
    aput-byte v15, v10, v12
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1

    move v12, v13

    .line 316
    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    goto/16 :goto_0

    .line 319
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v6    # "bi":I
    .end local v12    # "ri":I
    .restart local v7    # "bi":I
    .restart local v13    # "ri":I
    :pswitch_1
    :try_start_e
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_f
    aget-char v16, p0, v7

    aget-byte v1, v15, v16

    .line 320
    .restart local v1    # "b0":B
    sget-object v15, Lorg/eclipse/jetty/util/B64Code;->__rfc1421nibbles:[B
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_10
    aget-char v16, p0, v6

    aget-byte v2, v15, v16

    .line 321
    .restart local v2    # "b1":B
    if-ltz v1, :cond_a

    if-gez v2, :cond_b

    .line 322
    :cond_a
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Not B64 encoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_0

    .line 323
    :cond_b
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v1, 0x2

    ushr-int/lit8 v16, v2, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_11
    aput-byte v15, v10, v13
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_2

    move v6, v7

    .line 324
    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    goto/16 :goto_0

    .line 331
    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :catch_2
    move-exception v8

    move v6, v7

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    goto/16 :goto_3

    .restart local v3    # "b2":B
    :catch_3
    move-exception v8

    goto/16 :goto_3

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lorg/eclipse/jetty/util/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    .local v0, "bytes":[B
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 93
    .end local v0    # "bytes":[B
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0
.end method

.method public static encode(ILjava/lang/Appendable;)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "buf"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v1, -0x4000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 423
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v1, 0x3f00000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 424
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const v1, 0xfc000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 425
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v1, p0, 0x3f00

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 426
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v1, p0, 0xfc

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 427
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 v1, p0, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 428
    const/16 v0, 0x3d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 429
    return-void
.end method

.method public static encode(JLjava/lang/Appendable;)V
    .locals 5
    .param p0, "lvalue"    # J
    .param p2, "buf"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    const-wide/16 v1, -0x4

    const/16 v3, 0x20

    shr-long v3, p0, v3

    and-long/2addr v1, v3

    long-to-int v0, v1

    .line 435
    .local v0, "value":I
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v2, -0x4000000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 436
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v2, 0x3f00000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 437
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const v2, 0xfc000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xe

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 438
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v2, v0, 0x3f00

    shr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 439
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v2, v0, 0xfc

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 441
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x4

    const/16 v3, 0x1c

    shr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 443
    const v1, 0xfffffff

    long-to-int v2, p0

    and-int v0, v1, v2

    .line 444
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v2, 0xfc00000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x16

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 445
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const/high16 v2, 0x3f0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 446
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    const v2, 0xfc00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 447
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit16 v2, v0, 0x3f0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 448
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 v2, v0, 0xf

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 449
    return-void
.end method

.method public static encode([B)[C
    .locals 15
    .param p0, "b"    # [B

    .prologue
    const/16 v14, 0x3d

    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v6, 0x0

    .line 155
    :goto_0
    return-object v6

    .line 111
    :cond_0
    array-length v3, p0

    .line 112
    .local v3, "bLen":I
    add-int/lit8 v11, v3, 0x2

    div-int/lit8 v11, v11, 0x3

    mul-int/lit8 v7, v11, 0x4

    .line 113
    .local v7, "cLen":I
    new-array v6, v7, [C

    .line 114
    .local v6, "c":[C
    const/4 v8, 0x0

    .line 115
    .local v8, "ci":I
    const/4 v4, 0x0

    .line 117
    .local v4, "bi":I
    div-int/lit8 v11, v3, 0x3

    mul-int/lit8 v10, v11, 0x3

    .local v10, "stop":I
    move v5, v4

    .end local v4    # "bi":I
    .local v5, "bi":I
    move v9, v8

    .line 118
    .end local v8    # "ci":I
    .local v9, "ci":I
    :goto_1
    if-ge v5, v10, :cond_1

    .line 120
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 121
    .local v0, "b0":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    aget-byte v1, p0, v4

    .line 122
    .local v1, "b1":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v2, p0, v5

    .line 123
    .local v2, "b2":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v12, v0, 0x2

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v6, v9

    .line 124
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v12, v0, 0x4

    and-int/lit8 v12, v12, 0x3f

    ushr-int/lit8 v13, v1, 0x4

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    aget-char v11, v11, v12

    aput-char v11, v6, v8

    .line 125
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, 0x3f

    ushr-int/lit8 v13, v2, 0x6

    and-int/lit8 v13, v13, 0x3

    or-int/2addr v12, v13

    aget-char v11, v11, v12

    aput-char v11, v6, v9

    .line 126
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 v12, v2, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v6, v8

    move v5, v4

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    goto :goto_1

    .line 129
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    :cond_1
    if-eq v3, v5, :cond_2

    .line 131
    rem-int/lit8 v11, v3, 0x3

    packed-switch v11, :pswitch_data_0

    :cond_2
    move v4, v5

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    move v8, v9

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    goto :goto_0

    .line 134
    .end local v4    # "bi":I
    .end local v8    # "ci":I
    .restart local v5    # "bi":I
    .restart local v9    # "ci":I
    :pswitch_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 135
    .restart local v0    # "b0":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    aget-byte v1, p0, v4

    .line 136
    .restart local v1    # "b1":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v12, v0, 0x2

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v6, v9

    .line 137
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v12, v0, 0x4

    and-int/lit8 v12, v12, 0x3f

    ushr-int/lit8 v13, v1, 0x4

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    aget-char v11, v11, v12

    aput-char v11, v6, v8

    .line 138
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v6, v9

    .line 139
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    aput-char v14, v6, v8

    move v4, v5

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    move v8, v9

    .line 140
    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    goto/16 :goto_0

    .line 143
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v4    # "bi":I
    .end local v8    # "ci":I
    .restart local v5    # "bi":I
    .restart local v9    # "ci":I
    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 144
    .restart local v0    # "b0":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v12, v0, 0x2

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v6, v9

    .line 145
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v11, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v12, v0, 0x4

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v6, v8

    .line 146
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    aput-char v14, v6, v9

    .line 147
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    aput-char v14, v6, v8

    move v8, v9

    .line 148
    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encode([BZ)[C
    .locals 15
    .param p0, "b"    # [B
    .param p1, "rfc2045"    # Z

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v6, 0x0

    .line 228
    :goto_0
    return-object v6

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 172
    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v6

    goto :goto_0

    .line 174
    :cond_1
    array-length v3, p0

    .line 175
    .local v3, "bLen":I
    add-int/lit8 v12, v3, 0x2

    div-int/lit8 v12, v12, 0x3

    mul-int/lit8 v7, v12, 0x4

    .line 176
    .local v7, "cLen":I
    div-int/lit8 v12, v7, 0x4c

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x2

    add-int/2addr v7, v12

    .line 177
    new-array v6, v7, [C

    .line 178
    .local v6, "c":[C
    const/4 v8, 0x0

    .line 179
    .local v8, "ci":I
    const/4 v4, 0x0

    .line 181
    .local v4, "bi":I
    div-int/lit8 v12, v3, 0x3

    mul-int/lit8 v11, v12, 0x3

    .line 182
    .local v11, "stop":I
    const/4 v10, 0x0

    .local v10, "l":I
    move v5, v4

    .end local v4    # "bi":I
    .local v5, "bi":I
    move v9, v8

    .line 183
    .end local v8    # "ci":I
    .local v9, "ci":I
    :goto_1
    if-ge v5, v11, :cond_2

    .line 185
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 186
    .local v0, "b0":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    aget-byte v1, p0, v4

    .line 187
    .local v1, "b1":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v2, p0, v5

    .line 188
    .local v2, "b2":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v13, v0, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v6, v9

    .line 189
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0x3f

    ushr-int/lit8 v14, v1, 0x4

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    aget-char v12, v12, v13

    aput-char v12, v6, v8

    .line 190
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v13, v1, 0x2

    and-int/lit8 v13, v13, 0x3f

    ushr-int/lit8 v14, v2, 0x6

    and-int/lit8 v14, v14, 0x3

    or-int/2addr v13, v14

    aget-char v12, v12, v13

    aput-char v12, v6, v9

    .line 191
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    and-int/lit8 v13, v2, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v6, v8

    .line 192
    add-int/lit8 v10, v10, 0x4

    .line 193
    rem-int/lit8 v12, v10, 0x4c

    if-nez v12, :cond_4

    .line 195
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    const/16 v12, 0xd

    aput-char v12, v6, v9

    .line 196
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    const/16 v12, 0xa

    aput-char v12, v6, v8

    move v5, v4

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    goto :goto_1

    .line 200
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    :cond_2
    if-eq v3, v5, :cond_3

    .line 202
    rem-int/lit8 v12, v3, 0x3

    packed-switch v12, :pswitch_data_0

    :cond_3
    move v4, v5

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    move v8, v9

    .line 226
    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    :goto_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    const/16 v12, 0xd

    aput-char v12, v6, v8

    .line 227
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    const/16 v12, 0xa

    aput-char v12, v6, v9

    goto/16 :goto_0

    .line 205
    .end local v4    # "bi":I
    .end local v8    # "ci":I
    .restart local v5    # "bi":I
    .restart local v9    # "ci":I
    :pswitch_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 206
    .restart local v0    # "b0":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    aget-byte v1, p0, v4

    .line 207
    .restart local v1    # "b1":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v13, v0, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v6, v9

    .line 208
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0x3f

    ushr-int/lit8 v14, v1, 0x4

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    aget-char v12, v12, v13

    aput-char v12, v6, v8

    .line 209
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v13, v1, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v6, v9

    .line 210
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    const/16 v12, 0x3d

    aput-char v12, v6, v8

    move v4, v5

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    move v8, v9

    .line 211
    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    goto :goto_2

    .line 214
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v4    # "bi":I
    .end local v8    # "ci":I
    .restart local v5    # "bi":I
    .restart local v9    # "ci":I
    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 215
    .restart local v0    # "b0":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    ushr-int/lit8 v13, v0, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v6, v9

    .line 216
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    sget-object v12, Lorg/eclipse/jetty/util/B64Code;->__rfc1421alphabet:[C

    shl-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v6, v8

    .line 217
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    const/16 v12, 0x3d

    aput-char v12, v6, v9

    .line 218
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ci":I
    .restart local v9    # "ci":I
    const/16 v12, 0x3d

    aput-char v12, v6, v8

    move v8, v9

    .line 219
    .end local v9    # "ci":I
    .restart local v8    # "ci":I
    goto :goto_2

    .end local v8    # "ci":I
    .restart local v1    # "b1":B
    .restart local v2    # "b2":B
    .restart local v9    # "ci":I
    :cond_4
    move v5, v4

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    goto/16 :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
