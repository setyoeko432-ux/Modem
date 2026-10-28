.class public Lorg/eclipse/jetty/util/UrlEncoded;
.super Lorg/eclipse/jetty/util/MultiMap;
.source "UrlEncoded.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ENCODING:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    const-string v0, "org.eclipse.jetty.util.UrlEncoding.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 76
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/UrlEncoded;)V
    .locals 0
    .param p1, "url"    # Lorg/eclipse/jetty/util/UrlEncoded;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 64
    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "maxLength"    # I
    .param p3, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    monitor-enter p1

    .line 391
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 393
    .local v6, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 398
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 399
    .local v7, "totalLength":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_7

    .line 401
    int-to-char v9, v0

    sparse-switch v9, :sswitch_data_0

    .line 459
    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 462
    :cond_1
    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v7, v7, 0x1

    if-le v7, p2, :cond_0

    .line 463
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Form too large"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 476
    .end local v0    # "b":I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "totalLength":I
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 404
    .restart local v0    # "b":I
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "totalLength":I
    .restart local v8    # "value":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-nez v9, :cond_3

    const-string v8, ""

    .line 405
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 406
    if-eqz v6, :cond_4

    .line 408
    invoke-virtual {p1, v6, v8}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 414
    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 415
    const/4 v8, 0x0

    .line 416
    if-lez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v9

    if-le v9, p3, :cond_1

    .line 417
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Form too many keys"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 404
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 410
    :cond_4
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 412
    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 421
    :sswitch_1
    if-eqz v6, :cond_5

    .line 423
    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 426
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 431
    :sswitch_2
    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 435
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 436
    .local v2, "code0":I
    const/16 v9, 0x75

    if-ne v9, v2, :cond_6

    .line 438
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 439
    .local v3, "code1":I
    if-ltz v3, :cond_1

    .line 441
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 442
    .local v4, "code2":I
    if-ltz v4, :cond_1

    .line 444
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 445
    .local v5, "code3":I
    if-ltz v5, :cond_1

    .line 446
    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0xc

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v9, v10

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 450
    .end local v3    # "code1":I
    .end local v4    # "code2":I
    .end local v5    # "code3":I
    :cond_6
    if-ltz v2, :cond_1

    .line 452
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 453
    .restart local v3    # "code1":I
    if-ltz v3, :cond_1

    .line 454
    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-char v9, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 466
    .end local v2    # "code0":I
    .end local v3    # "code1":I
    :cond_7
    if-eqz v6, :cond_a

    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-nez v9, :cond_9

    const-string v8, ""

    .line 469
    :goto_3
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 470
    invoke-virtual {p1, v6, v8}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    :cond_8
    :goto_4
    monitor-exit p1

    .line 477
    return-void

    .line 468
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 472
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 727
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 729
    :cond_0
    const/4 v6, 0x0

    .line 731
    .local v6, "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v10, v0, :cond_c

    .line 733
    add-int v17, p1, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 734
    .local v8, "c":C
    if-ltz v8, :cond_1

    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v8, v0, :cond_4

    .line 736
    :cond_1
    if-nez v6, :cond_3

    .line 738
    new-instance v6, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    .end local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 739
    .restart local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    add-int v18, p1, v10

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 731
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 744
    :cond_4
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 746
    if-nez v6, :cond_5

    .line 748
    new-instance v6, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    .end local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 749
    .restart local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    add-int v18, p1, v10

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 752
    :cond_5
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 754
    :cond_6
    const/16 v17, 0x25

    move/from16 v0, v17

    if-ne v8, v0, :cond_b

    .line 756
    if-nez v6, :cond_7

    .line 758
    new-instance v6, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    .end local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 759
    .restart local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    add-int v18, p1, v10

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 762
    :cond_7
    add-int/lit8 v17, v10, 0x2

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    .line 766
    const/16 v17, 0x75

    add-int v18, p1, v10

    add-int/lit8 v18, v18, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 768
    add-int/lit8 v17, v10, 0x5

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    .line 770
    add-int v17, p1, v10

    add-int/lit8 v14, v17, 0x2

    .line 771
    .local v14, "o":I
    add-int/lit8 v10, v10, 0x5

    .line 772
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x4

    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v14, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([C)V

    .line 773
    .local v16, "unicode":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 789
    .end local v14    # "o":I
    .end local v16    # "unicode":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 791
    .local v9, "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    sget-object v17, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    sget-object v17, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 777
    .end local v9    # "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :cond_8
    move/from16 v10, p2

    .line 778
    :try_start_1
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    const v18, 0xfffd

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 794
    :catch_1
    move-exception v13

    .line 796
    .local v13, "nfe":Ljava/lang/NumberFormatException;
    sget-object v17, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 797
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    const v18, 0xfffd

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 783
    .end local v13    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    add-int v17, p1, v10

    add-int/lit8 v14, v17, 0x1

    .line 784
    .restart local v14    # "o":I
    add-int/lit8 v10, v10, 0x2

    .line 785
    const/16 v17, 0x2

    const/16 v18, 0x10

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v14, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v4, v0

    .line 786
    .local v4, "b":B
    invoke-virtual {v6, v4}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->append(B)V
    :try_end_2
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 802
    .end local v4    # "b":B
    .end local v14    # "o":I
    :cond_a
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    const v18, 0xfffd

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 803
    move/from16 v10, p2

    goto/16 :goto_1

    .line 806
    :cond_b
    if-eqz v6, :cond_2

    .line 807
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 810
    .end local v8    # "c":C
    :cond_c
    if-nez v6, :cond_f

    .line 812
    if-nez p1, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_e

    .line 934
    .end local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    .end local p0    # "encoded":Ljava/lang/String;
    :cond_d
    :goto_2
    return-object p0

    .line 814
    .restart local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    .restart local p0    # "encoded":Ljava/lang/String;
    :cond_e
    add-int v17, p1, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 817
    :cond_f
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->toReplacedString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 821
    .end local v6    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuffer;
    .end local v10    # "i":I
    :cond_10
    const/4 v6, 0x0

    .line 825
    .local v6, "buffer":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    move-object v7, v6

    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .local v7, "buffer":Ljava/lang/StringBuffer;
    :goto_3
    move/from16 v0, p2

    if-ge v10, v0, :cond_1d

    .line 827
    add-int v17, p1, v10

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 828
    .restart local v8    # "c":C
    if-ltz v8, :cond_11

    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v8, v0, :cond_13

    .line 830
    :cond_11
    if-nez v7, :cond_12

    .line 832
    new-instance v6, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    .line 833
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    add-int v17, p1, v10

    add-int/lit8 v17, v17, 0x1

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 825
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v7, v6

    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_3

    .line 836
    :cond_12
    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v6, v7

    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_4

    .line 838
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    :cond_13
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v8, v0, :cond_14

    .line 840
    if-nez v7, :cond_22

    .line 842
    new-instance v6, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4

    .line 843
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    add-int v17, p1, v10

    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 846
    :goto_5
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 936
    :catch_2
    move-exception v9

    .line 938
    .end local v8    # "c":C
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 848
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v8    # "c":C
    :cond_14
    const/16 v17, 0x25

    move/from16 v0, v17

    if-ne v8, v0, :cond_1b

    .line 850
    if-nez v7, :cond_21

    .line 852
    :try_start_7
    new-instance v6, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_4

    .line 853
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    add-int v17, p1, v10

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 856
    :goto_7
    move/from16 v0, p2

    new-array v5, v0, [B
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 857
    .local v5, "ba":[B
    const/4 v11, 0x0

    .local v11, "n":I
    move v12, v11

    .line 858
    .end local v11    # "n":I
    .local v12, "n":I
    :goto_8
    if-ltz v8, :cond_20

    const/16 v17, 0xff

    move/from16 v0, v17

    if-gt v8, v0, :cond_20

    .line 860
    const/16 v17, 0x25

    move/from16 v0, v17

    if-ne v8, v0, :cond_18

    .line 862
    add-int/lit8 v17, v10, 0x2

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_17

    .line 866
    const/16 v17, 0x75

    add-int v18, p1, v10

    add-int/lit8 v18, v18, 0x1

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 868
    add-int/lit8 v17, v10, 0x6

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_15

    .line 870
    add-int v17, p1, v10

    add-int/lit8 v14, v17, 0x2

    .line 871
    .restart local v14    # "o":I
    add-int/lit8 v10, v10, 0x6

    .line 872
    new-instance v16, Ljava/lang/String;

    const/16 v17, 0x4

    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v14, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/String;-><init>([C)V

    .line 873
    .restart local v16    # "unicode":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 874
    .local v15, "reencoded":[B
    const/16 v17, 0x0

    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    array-length v0, v15

    move/from16 v17, v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2

    add-int v11, v12, v17

    .line 914
    .end local v12    # "n":I
    .end local v14    # "o":I
    .end local v15    # "reencoded":[B
    .end local v16    # "unicode":Ljava/lang/String;
    .restart local v11    # "n":I
    :goto_9
    move/from16 v0, p2

    if-lt v10, v0, :cond_1a

    .line 919
    :goto_a
    add-int/lit8 v10, v10, -0x1

    .line 920
    :try_start_a
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v11, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 879
    .end local v11    # "n":I
    .restart local v12    # "n":I
    :cond_15
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    const/16 v17, 0x3f

    :try_start_b
    aput-byte v17, v5, v12
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_2

    .line 880
    move/from16 v10, p2

    goto :goto_9

    .line 885
    .end local v11    # "n":I
    .restart local v12    # "n":I
    :cond_16
    add-int v17, p1, v10

    add-int/lit8 v14, v17, 0x1

    .line 886
    .restart local v14    # "o":I
    add-int/lit8 v10, v10, 0x3

    .line 887
    const/16 v17, 0x2

    const/16 v18, 0x10

    :try_start_c
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v14, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v5, v12
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_2

    .line 888
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    goto :goto_9

    .line 891
    .end local v11    # "n":I
    .end local v14    # "o":I
    .restart local v12    # "n":I
    :catch_3
    move-exception v13

    .line 893
    .restart local v13    # "nfe":Ljava/lang/NumberFormatException;
    :goto_b
    :try_start_d
    sget-object v17, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 894
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    const/16 v17, 0x3f

    aput-byte v17, v5, v12

    goto :goto_9

    .line 899
    .end local v11    # "n":I
    .end local v13    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v12    # "n":I
    :cond_17
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    const/16 v17, 0x3f

    aput-byte v17, v5, v12

    .line 900
    move/from16 v10, p2

    goto :goto_9

    .line 903
    .end local v11    # "n":I
    .restart local v12    # "n":I
    :cond_18
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v8, v0, :cond_19

    .line 905
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    const/16 v17, 0x20

    aput-byte v17, v5, v12

    .line 906
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 910
    .end local v11    # "n":I
    .restart local v12    # "n":I
    :cond_19
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "n":I
    .restart local v11    # "n":I
    int-to-byte v0, v8

    move/from16 v17, v0

    aput-byte v17, v5, v12

    .line 911
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 916
    :cond_1a
    add-int v17, p1, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_2

    move-result v8

    move v12, v11

    .end local v11    # "n":I
    .restart local v12    # "n":I
    goto/16 :goto_8

    .line 923
    .end local v5    # "ba":[B
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v12    # "n":I
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    :cond_1b
    if-eqz v7, :cond_1c

    .line 924
    :try_start_e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    move-object v6, v7

    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_4

    .line 927
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "c":C
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    :cond_1d
    if-nez v7, :cond_1f

    .line 929
    if-nez p1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_d

    .line 931
    :cond_1e
    add-int v17, p1, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 934
    :cond_1f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_4

    move-result-object p0

    goto/16 :goto_2

    .line 936
    :catch_4
    move-exception v9

    move-object v6, v7

    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_6

    .line 891
    .restart local v5    # "ba":[B
    .restart local v8    # "c":C
    .restart local v11    # "n":I
    :catch_5
    move-exception v13

    move v12, v11

    .end local v11    # "n":I
    .restart local v12    # "n":I
    goto :goto_b

    :cond_20
    move v11, v12

    .end local v12    # "n":I
    .restart local v11    # "n":I
    goto/16 :goto_a

    .end local v5    # "ba":[B
    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .end local v11    # "n":I
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    :cond_21
    move-object v6, v7

    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_7

    .end local v6    # "buffer":Ljava/lang/StringBuffer;
    .restart local v7    # "buffer":Ljava/lang/StringBuffer;
    :cond_22
    move-object v6, v7

    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .restart local v6    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_5
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    .locals 17
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "maxLength"    # I
    .param p4, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    if-nez p2, :cond_0

    .line 606
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 609
    :cond_0
    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    .line 718
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v14, "ISO-8859-1"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    goto :goto_0

    .line 621
    :cond_2
    const-string v14, "UTF-16"

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    goto :goto_0

    .line 628
    :cond_3
    monitor-enter p1

    .line 630
    const/4 v9, 0x0

    .line 631
    .local v9, "key":Ljava/lang/String;
    const/4 v13, 0x0

    .line 635
    .local v13, "value":Ljava/lang/String;
    const/4 v12, 0x0

    .line 636
    .local v12, "totalLength":I
    :try_start_0
    new-instance v10, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-direct {v10}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>()V

    .line 638
    .local v10, "output":Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
    const/4 v11, 0x0

    .line 640
    .local v11, "size":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .local v4, "c":I
    if-lez v4, :cond_c

    .line 642
    int-to-char v14, v4

    sparse-switch v14, :sswitch_data_0

    .line 699
    invoke-virtual {v10, v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    .line 703
    :cond_5
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 704
    if-ltz p3, :cond_4

    move/from16 v0, p3

    if-le v12, v0, :cond_4

    .line 705
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Form too large"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 717
    .end local v4    # "c":I
    .end local v10    # "output":Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
    .end local v11    # "size":I
    :catchall_0
    move-exception v14

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 645
    .restart local v4    # "c":I
    .restart local v10    # "output":Lorg/eclipse/jetty/util/ByteArrayOutputStream2;
    .restart local v11    # "size":I
    :sswitch_0
    :try_start_1
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v11

    .line 646
    if-nez v11, :cond_7

    const-string v13, ""

    .line 647
    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 648
    if-eqz v9, :cond_8

    .line 650
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    :cond_6
    :goto_3
    const/4 v9, 0x0

    .line 657
    const/4 v13, 0x0

    .line 658
    if-lez p4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v14

    move/from16 v0, p4

    if-le v14, v0, :cond_5

    .line 659
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Form too many keys"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 646
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 652
    :cond_8
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 654
    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 662
    :sswitch_1
    if-eqz v9, :cond_9

    .line 664
    invoke-virtual {v10, v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 667
    :cond_9
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v11

    .line 668
    if-nez v11, :cond_a

    const-string v9, ""

    .line 669
    :goto_4
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_1

    .line 668
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 672
    :sswitch_2
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 675
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 676
    .local v5, "code0":I
    const/16 v14, 0x75

    if-ne v14, v5, :cond_b

    .line 678
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 679
    .local v6, "code1":I
    if-ltz v6, :cond_5

    .line 681
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 682
    .local v7, "code2":I
    if-ltz v7, :cond_5

    .line 684
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 685
    .local v8, "code3":I
    if-ltz v8, :cond_5

    .line 686
    new-instance v14, Ljava/lang/String;

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v15

    shl-int/lit8 v15, v15, 0xc

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v16

    shl-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v16

    shl-int/lit8 v16, v16, 0x4

    add-int v15, v15, v16

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write([B)V

    goto/16 :goto_1

    .line 691
    .end local v6    # "code1":I
    .end local v7    # "code2":I
    .end local v8    # "code3":I
    :cond_b
    if-ltz v5, :cond_5

    .line 693
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 694
    .restart local v6    # "code1":I
    if-ltz v6, :cond_5

    .line 695
    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v14

    shl-int/lit8 v14, v14, 0x4

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto/16 :goto_1

    .line 708
    .end local v5    # "code0":I
    .end local v6    # "code1":I
    :cond_c
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v11

    .line 709
    if-eqz v9, :cond_f

    .line 711
    if-nez v11, :cond_e

    const-string v13, ""

    .line 712
    :goto_5
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 713
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 717
    :cond_d
    :goto_6
    monitor-exit p1

    goto/16 :goto_0

    .line 711
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 715
    :cond_f
    if-lez v11, :cond_d

    .line 716
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 190
    return-void
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "maxKeys"    # I

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 201
    :cond_0
    monitor-enter p1

    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 205
    .local v6, "value":Ljava/lang/String;
    const/4 v5, -0x1

    .line 206
    .local v5, "mark":I
    const/4 v1, 0x0

    .line 207
    .local v1, "encoded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 207
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :sswitch_0
    sub-int v7, v2, v5

    add-int/lit8 v4, v7, -0x1

    .line 214
    .local v4, "l":I
    if-nez v4, :cond_3

    const-string v6, ""

    .line 216
    :goto_2
    move v5, v2

    .line 217
    const/4 v1, 0x0

    .line 218
    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {p1, v3, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :cond_2
    :goto_3
    const/4 v3, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    if-lez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v7

    if-le v7, p3, :cond_1

    .line 229
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Form too many keys"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    .end local v0    # "c":C
    .end local v4    # "l":I
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 214
    .restart local v0    # "c":C
    .restart local v4    # "l":I
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    :try_start_1
    invoke-static {p0, v7, v4, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 222
    :cond_5
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 224
    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 232
    .end local v4    # "l":I
    :sswitch_1
    if-nez v3, :cond_1

    .line 234
    if-eqz v1, :cond_6

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v2, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    :goto_4
    move v5, v2

    .line 236
    const/4 v1, 0x0

    .line 237
    goto :goto_1

    .line 234
    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 239
    :sswitch_2
    const/4 v1, 0x1

    .line 240
    goto :goto_1

    .line 242
    :sswitch_3
    const/4 v1, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "c":C
    :cond_7
    if-eqz v3, :cond_b

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/lit8 v4, v7, -0x1

    .line 250
    .restart local v4    # "l":I
    if-nez v4, :cond_9

    const-string v6, ""

    .line 251
    :goto_5
    invoke-virtual {p1, v3, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    .end local v4    # "l":I
    :cond_8
    :goto_6
    monitor-exit p1

    .line 264
    return-void

    .line 250
    .restart local v4    # "l":I
    :cond_9
    if-eqz v1, :cond_a

    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7, v4, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 253
    .end local v4    # "l":I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 255
    if-eqz v1, :cond_c

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    :goto_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 260
    const-string v7, ""

    invoke-virtual {p1, v3, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 255
    :cond_c
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_7

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "maxLength"    # I
    .param p3, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-16"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 590
    .local v1, "input":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/StringWriter;

    const/16 v2, 0x2000

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 591
    .local v0, "buf":Ljava/io/StringWriter;
    int-to-long v2, p2

    invoke-static {v1, v0, v2, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 593
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-16"

    invoke-static {v2, p1, v3, p3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 594
    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 14
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "maxLength"    # I
    .param p3, "maxKeys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p1

    .line 490
    :try_start_0
    new-instance v2, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    .line 491
    .local v2, "buffer":Lorg/eclipse/jetty/util/Utf8StringBuilder;
    const/4 v8, 0x0

    .line 492
    .local v8, "key":Ljava/lang/String;
    const/4 v10, 0x0

    .line 497
    .local v10, "value":Ljava/lang/String;
    const/4 v9, 0x0

    .line 498
    .local v9, "totalLength":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "b":I
    if-ltz v1, :cond_7

    .line 502
    int-to-char v11, v1

    sparse-switch v11, :sswitch_data_0

    .line 560
    int-to-byte v11, v1

    :try_start_1
    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :cond_1
    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p2

    if-le v9, v0, :cond_0

    .line 570
    :try_start_2
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Form too large"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 583
    .end local v1    # "b":I
    .end local v2    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuilder;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "totalLength":I
    .end local v10    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 505
    .restart local v1    # "b":I
    .restart local v2    # "buffer":Lorg/eclipse/jetty/util/Utf8StringBuilder;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "totalLength":I
    .restart local v10    # "value":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_3

    const-string v10, ""

    .line 506
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 507
    if-eqz v8, :cond_4

    .line 509
    invoke-virtual {p1, v8, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    :cond_2
    :goto_2
    const/4 v8, 0x0

    .line 516
    const/4 v10, 0x0

    .line 517
    if-lez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v11

    move/from16 v0, p3

    if-le v11, v0, :cond_1

    .line 518
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Form too many keys"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    :catch_0
    move-exception v7

    .line 566
    .local v7, "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :try_start_4
    sget-object v11, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    sget-object v11, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 505
    .end local v7    # "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 511
    :cond_4
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 513
    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 522
    :sswitch_1
    if-eqz v8, :cond_5

    .line 524
    int-to-byte v11, v1

    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_0

    .line 527
    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    goto :goto_0

    .line 532
    :sswitch_2
    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_0

    .line 536
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 537
    .local v3, "code0":I
    const/16 v11, 0x75

    if-ne v11, v3, :cond_6

    .line 539
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 540
    .local v4, "code1":I
    if-ltz v4, :cond_1

    .line 542
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 543
    .local v5, "code2":I
    if-ltz v5, :cond_1

    .line 545
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 546
    .local v6, "code3":I
    if-ltz v6, :cond_1

    .line 547
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v12

    shl-int/lit8 v12, v12, 0xc

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v12, v13

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v13

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 551
    .end local v4    # "code1":I
    .end local v5    # "code2":I
    .end local v6    # "code3":I
    :cond_6
    if-ltz v3, :cond_1

    .line 553
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 554
    .restart local v4    # "code1":I
    if-ltz v4, :cond_1

    .line 555
    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    invoke-static {v4}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_5
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 573
    .end local v3    # "code0":I
    .end local v4    # "code1":I
    :cond_7
    if-eqz v8, :cond_a

    .line 575
    :try_start_6
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_9

    const-string v10, ""

    .line 576
    :goto_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 577
    invoke-virtual {p1, v8, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    :cond_8
    :goto_4
    monitor-exit p1

    .line 584
    return-void

    .line 575
    :cond_9
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 579
    :cond_a
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 581
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {p1, v11, v12}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 502
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V
    .locals 1
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "map"    # Lorg/eclipse/jetty/util/MultiMap;

    .prologue
    .line 275
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    .line 276
    return-void
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 9
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p4, "buffer"    # Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .prologue
    .line 288
    monitor-enter p3

    .line 290
    const/4 v4, 0x0

    .line 291
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 294
    .local v5, "value":Ljava/lang/String;
    add-int v2, p1, p2

    .line 295
    .local v2, "end":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 297
    :try_start_0
    aget-byte v0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    int-to-char v6, v6

    sparse-switch v6, :sswitch_data_0

    .line 356
    :try_start_1
    invoke-virtual {p4, v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    .line 295
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :sswitch_0
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v5, ""

    .line 304
    :goto_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 305
    if-eqz v4, :cond_2

    .line 307
    invoke-virtual {p3, v4, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    :cond_0
    :goto_3
    const/4 v4, 0x0

    .line 314
    const/4 v5, 0x0

    .line 315
    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 309
    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 311
    const-string v6, ""

    invoke-virtual {p3, v5, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 360
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :try_start_2
    sget-object v6, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    sget-object v6, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 377
    .end local v0    # "b":B
    .end local v1    # "e":Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    :catchall_0
    move-exception v6

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 318
    .restart local v0    # "b":B
    :sswitch_1
    if-eqz v4, :cond_3

    .line 320
    :try_start_3
    invoke-virtual {p4, v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    goto :goto_1

    .line 328
    :sswitch_2
    const/16 v6, 0x20

    invoke-virtual {p4, v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_1

    .line 332
    :sswitch_3
    add-int/lit8 v6, v3, 0x2

    if-ge v6, v2, :cond_6

    .line 334
    const/16 v6, 0x75

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-ne v6, v7, :cond_5

    .line 336
    add-int/lit8 v3, v3, 0x1

    .line 337
    add-int/lit8 v6, v3, 0x4

    if-ge v6, v2, :cond_4

    .line 338
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0xc

    add-int/lit8 v3, v3, 0x1

    aget-byte v8, p0, v3

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    aget-byte v8, p0, v3

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    aget-byte v8, p0, v3

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 341
    :cond_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xfffd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    move v3, v2

    goto/16 :goto_1

    .line 346
    :cond_5
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {p4, v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto/16 :goto_1

    .line 350
    :cond_6
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xfffd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    move v3, v2

    .line 353
    goto/16 :goto_1

    .line 367
    .end local v0    # "b":B
    :cond_7
    if-eqz v4, :cond_a

    .line 369
    :try_start_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_9

    const-string v5, ""

    .line 370
    :goto_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 371
    invoke-virtual {p3, v4, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    :cond_8
    :goto_5
    monitor-exit p3

    .line 378
    return-void

    .line 369
    :cond_9
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toReplacedString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 373
    :cond_a
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 375
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toReplacedString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p3, v6, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "map"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "equalsForNullValue"    # Z

    .prologue
    const/16 v11, 0x26

    const/16 v10, 0x3d

    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 143
    .local v4, "list":Ljava/lang/Object;
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    .line 145
    .local v6, "s":I
    if-nez v6, :cond_3

    .line 147
    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz p2, :cond_2

    .line 149
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 176
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 155
    if-lez v1, :cond_4

    .line 156
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_4
    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 158
    .local v8, "val":Ljava/lang/Object;
    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-eqz v8, :cond_7

    .line 162
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 165
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v7, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_5

    .line 169
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_5

    .line 172
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/lang/Object;
    .end local v6    # "s":I
    .end local v8    # "val":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 951
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 961
    if-nez p1, :cond_0

    .line 962
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 963
    :cond_0
    const/4 v1, 0x0

    .line 966
    .local v1, "bytes":[B
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 974
    :goto_0
    array-length v5, v1

    .line 975
    .local v5, "len":I
    array-length v10, v1

    mul-int/lit8 v10, v10, 0x3

    new-array v3, v10, [B

    .line 976
    .local v3, "encoded":[B
    const/4 v6, 0x0

    .line 977
    .local v6, "n":I
    const/4 v9, 0x1

    .line 979
    .local v9, "noEncode":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "n":I
    .local v7, "n":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 981
    aget-byte v0, v1, v4

    .line 983
    .local v0, "b":B
    const/16 v10, 0x20

    if-ne v0, v10, :cond_1

    .line 985
    const/4 v9, 0x0

    .line 986
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/16 v10, 0x2b

    aput-byte v10, v3, v7

    .line 979
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_1

    .line 968
    .end local v0    # "b":B
    .end local v3    # "encoded":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v7    # "n":I
    .end local v9    # "noEncode":Z
    :catch_0
    move-exception v2

    .line 971
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 988
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":B
    .restart local v3    # "encoded":[B
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v7    # "n":I
    .restart local v9    # "noEncode":Z
    :cond_1
    const/16 v10, 0x61

    if-lt v0, v10, :cond_2

    const/16 v10, 0x7a

    if-le v0, v10, :cond_4

    :cond_2
    const/16 v10, 0x41

    if-lt v0, v10, :cond_3

    const/16 v10, 0x5a

    if-le v0, v10, :cond_4

    :cond_3
    const/16 v10, 0x30

    if-lt v0, v10, :cond_5

    const/16 v10, 0x39

    if-gt v0, v10, :cond_5

    .line 992
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    aput-byte v0, v3, v7

    goto :goto_2

    .line 996
    .end local v6    # "n":I
    .restart local v7    # "n":I
    :cond_5
    const/4 v9, 0x0

    .line 997
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/16 v10, 0x25

    aput-byte v10, v3, v7

    .line 998
    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v8, v10

    .line 999
    .local v8, "nibble":B
    if-lt v8, v12, :cond_6

    .line 1000
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    add-int/lit8 v10, v8, 0x41

    add-int/lit8 v10, v10, -0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    .line 1003
    :goto_3
    and-int/lit8 v10, v0, 0xf

    int-to-byte v8, v10

    .line 1004
    if-lt v8, v12, :cond_7

    .line 1005
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    add-int/lit8 v10, v8, 0x41

    add-int/lit8 v10, v10, -0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    goto :goto_2

    .line 1002
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    add-int/lit8 v10, v8, 0x30

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    goto :goto_3

    .line 1007
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    add-int/lit8 v10, v8, 0x30

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    goto :goto_2

    .line 1011
    .end local v0    # "b":B
    .end local v6    # "n":I
    .end local v8    # "nibble":B
    .restart local v7    # "n":I
    :cond_8
    if-eqz v9, :cond_9

    .line 1021
    .end local p0    # "string":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 1016
    .restart local p0    # "string":Ljava/lang/String;
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "string":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1018
    :catch_1
    move-exception v2

    .line 1021
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v11, v7}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1032
    new-instance v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/UrlEncoded;-><init>(Lorg/eclipse/jetty/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, -0x1

    invoke-static {p1, p0, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "equalsForNullValue"    # Z

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
