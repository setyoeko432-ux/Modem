.class public Lorg/eclipse/jetty/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "org.eclipse.jetty.util.URI.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "p1"    # Ljava/lang/String;
    .param p1, "p2"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 409
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 411
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    .line 450
    .end local p0    # "p1":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "p1":Ljava/lang/String;
    :cond_2
    move-object p0, p1

    .line 413
    goto :goto_0

    .line 415
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 419
    .local v1, "split":I
    if-gez v1, :cond_4

    .line 420
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 421
    :cond_4
    if-nez v1, :cond_5

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 423
    :cond_5
    if-gez v1, :cond_6

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 426
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    .line 431
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 433
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 437
    :cond_7
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    :cond_8
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 442
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :cond_9
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 446
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/16 v10, 0x2f

    const/16 v9, 0x2e

    .line 476
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 599
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "buf":Ljava/lang/StringBuilder;
    .local v1, "delEnd":I
    .local v2, "delStart":I
    .local v3, "end":I
    .local v4, "skip":I
    .local v6, "start":I
    :cond_0
    :goto_0
    return-object p0

    .line 479
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "delEnd":I
    .end local v2    # "delStart":I
    .end local v3    # "end":I
    .end local v4    # "skip":I
    .end local v6    # "start":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 480
    .restart local v3    # "end":I
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 483
    .local v5, "start":I
    :goto_1
    if-lez v3, :cond_3

    .line 485
    sub-int v8, v3, v5

    packed-switch v8, :pswitch_data_0

    .line 497
    :cond_2
    :goto_2
    move v3, v5

    .line 498
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    goto :goto_1

    .line 488
    :pswitch_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 502
    :cond_3
    if-ge v5, v3, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 507
    .restart local v2    # "delStart":I
    const/4 v1, -0x1

    .line 508
    .restart local v1    # "delEnd":I
    const/4 v4, 0x0

    .restart local v4    # "skip":I
    move v6, v5

    .line 510
    .end local v5    # "start":I
    .restart local v6    # "start":I
    :goto_3
    if-lez v3, :cond_12

    .line 512
    sub-int v8, v3, v6

    packed-switch v8, :pswitch_data_1

    .line 569
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 571
    if-ltz v6, :cond_11

    move v2, v6

    .line 572
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 573
    add-int/lit8 v2, v2, 0x1

    .line 578
    :cond_4
    :goto_5
    if-gtz v4, :cond_5

    if-ltz v2, :cond_5

    if-lt v1, v2, :cond_5

    .line 580
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 581
    const/4 v1, -0x1

    move v2, v1

    .line 582
    if-lez v4, :cond_5

    .line 583
    move v1, v3

    .line 586
    :cond_5
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 587
    :goto_6
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 588
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 492
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "delEnd":I
    .end local v2    # "delStart":I
    .end local v4    # "skip":I
    :pswitch_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_3

    goto :goto_2

    .line 515
    .end local v5    # "start":I
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "delEnd":I
    .restart local v2    # "delStart":I
    .restart local v4    # "skip":I
    .restart local v6    # "start":I
    :pswitch_2
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_7

    .line 517
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 519
    if-ltz v6, :cond_6

    move v2, v6

    .line 520
    :goto_7
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v7

    .line 519
    goto :goto_7

    .line 526
    :cond_7
    if-gez v6, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v11, :cond_8

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_4

    .line 529
    :cond_8
    if-gez v1, :cond_9

    .line 530
    move v1, v3

    .line 531
    :cond_9
    move v2, v6

    .line 532
    if-ltz v2, :cond_a

    if-nez v2, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_b

    .line 534
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 539
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v3, v8, :cond_c

    .line 540
    add-int/lit8 v2, v2, 0x1

    .line 542
    :cond_c
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 543
    :goto_8
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 544
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 548
    .end local v5    # "start":I
    .restart local v6    # "start":I
    :pswitch_3
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_d

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_f

    .line 550
    :cond_d
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 551
    if-ltz v6, :cond_e

    move v2, v6

    .line 552
    :goto_9
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_e
    move v2, v7

    .line 551
    goto :goto_9

    .line 558
    :cond_f
    move v2, v6

    .line 559
    if-gez v1, :cond_10

    .line 560
    move v1, v3

    .line 562
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 563
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 564
    :goto_a
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 565
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .end local v5    # "start":I
    .restart local v6    # "start":I
    :cond_11
    move v2, v7

    .line 571
    goto/16 :goto_4

    .line 592
    :cond_12
    if-lez v4, :cond_13

    .line 593
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 596
    :cond_13
    if-ltz v1, :cond_14

    .line 597
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 599
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .end local v6    # "start":I
    .restart local v5    # "start":I
    :cond_15
    move v6, v5

    .end local v5    # "start":I
    .restart local v6    # "start":I
    goto/16 :goto_3

    .line 485
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 512
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 610
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 662
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 613
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 614
    .local v4, "state":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 615
    .local v2, "end":I
    const/4 v3, 0x0

    .line 618
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 620
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 621
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 631
    const/4 v4, 0x0

    .line 633
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 634
    goto :goto_1

    .line 626
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 627
    if-ne v4, v7, :cond_2

    .line 636
    .end local v1    # "c":C
    :cond_3
    if-lt v4, v7, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 640
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move v5, v4

    .line 643
    .end local v4    # "state":I
    .local v5, "state":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 645
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 646
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 656
    const/4 v4, 0x0

    .line 657
    .end local v5    # "state":I
    .restart local v4    # "state":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 659
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .line 660
    .end local v4    # "state":I
    .restart local v5    # "state":I
    goto :goto_2

    .line 649
    :sswitch_2
    invoke-virtual {v0, p0, v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 662
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 652
    .restart local v1    # "c":C
    :sswitch_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "state":I
    .restart local v4    # "state":I
    if-nez v5, :cond_4

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 646
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_3
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 266
    if-nez p0, :cond_1

    .line 267
    const/4 p0, 0x0

    .line 350
    .end local p0    # "path":Ljava/lang/String;
    .local v1, "b":I
    .local v2, "bytes":[B
    .local v4, "chars":[C
    .local v6, "i":I
    .local v7, "len":I
    .local v8, "n":I
    :cond_0
    :goto_0
    return-object p0

    .line 269
    .end local v1    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "chars":[C
    .end local v6    # "i":I
    .end local v7    # "len":I
    .end local v8    # "n":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 270
    .restart local v4    # "chars":[C
    const/4 v8, 0x0

    .line 272
    .restart local v8    # "n":I
    const/4 v2, 0x0

    .line 273
    .restart local v2    # "bytes":[B
    const/4 v0, 0x0

    .line 275
    .local v0, "b":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 277
    .restart local v7    # "len":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 279
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 281
    .local v3, "c":C
    const/16 v11, 0x25

    if-ne v3, v11, :cond_3

    add-int/lit8 v11, v6, 0x2

    if-ge v11, v7, :cond_3

    .line 283
    if-nez v4, :cond_2

    .line 285
    new-array v4, v7, [C

    .line 286
    new-array v2, v7, [B

    .line 287
    invoke-virtual {p0, v14, v6, v4, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 289
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    add-int/lit8 v11, v6, 0x1

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-static {p0, v11, v12, v13}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 290
    add-int/lit8 v6, v6, 0x2

    .line 277
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_1

    .line 293
    :cond_3
    const/16 v11, 0x3b

    if-ne v3, v11, :cond_6

    .line 295
    if-nez v4, :cond_4

    .line 297
    new-array v4, v7, [C

    .line 298
    invoke-virtual {p0, v14, v6, v4, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 299
    move v8, v6

    .line 330
    .end local v3    # "c":C
    :cond_4
    if-eqz v4, :cond_0

    .line 334
    if-lez v1, :cond_5

    .line 340
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    .local v10, "s":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v4, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 347
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 350
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0    # "path":Ljava/lang/String;
    invoke-direct {p0, v4, v14, v8}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 303
    .restart local v3    # "c":C
    .restart local p0    # "path":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 305
    add-int/lit8 v8, v8, 0x1

    move v0, v1

    .line 306
    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_2

    .line 310
    .end local v0    # "b":I
    .restart local v1    # "b":I
    :cond_7
    if-lez v1, :cond_8

    .line 316
    :try_start_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    .restart local v10    # "s":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v4, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 324
    const/4 v0, 0x0

    .line 327
    .end local v1    # "b":I
    .end local v10    # "s":Ljava/lang/String;
    .restart local v0    # "b":I
    :goto_5
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "n":I
    .local v9, "n":I
    aput-char v3, v4, v8

    move v8, v9

    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto :goto_2

    .line 318
    .end local v0    # "b":I
    .restart local v1    # "b":I
    :catch_0
    move-exception v5

    .line 320
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_4

    .line 342
    .end local v3    # "c":C
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "s":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 344
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_3

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "s":Ljava/lang/String;
    .restart local v3    # "c":C
    :cond_8
    move v0, v1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_5
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 9
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 363
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "n":I
    .local v5, "n":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 365
    add-int v6, v2, p1

    aget-byte v0, p0, v6

    .line 367
    .local v0, "b":B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_1

    add-int/lit8 v6, v2, 0x2

    if-ge v6, p2, :cond_1

    .line 369
    add-int v6, v2, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-static {p0, v6, v7, v8}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v0, v6

    .line 370
    add-int/lit8 v2, v2, 0x2

    .line 383
    :cond_0
    if-nez v1, :cond_4

    .line 385
    new-array v1, p2, [B

    .line 386
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 387
    add-int v6, v3, p1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v3

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    .end local v3    # "j":I
    :cond_1
    const/16 v6, 0x3b

    if-ne v0, v6, :cond_3

    .line 374
    move p2, v2

    .line 393
    .end local v0    # "b":B
    :cond_2
    if-nez v1, :cond_5

    .line 394
    sget-object v6, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, p2, v6}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    :goto_2
    return-object v6

    .line 377
    .restart local v0    # "b":B
    :cond_3
    if-nez v1, :cond_0

    .line 379
    add-int/lit8 v4, v5, 0x1

    .line 363
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "n":I
    .restart local v5    # "n":I
    goto :goto_0

    .line 390
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "n":I
    .restart local v4    # "n":I
    aput-byte v0, v1, v5

    goto :goto_3

    .line 395
    .end local v0    # "b":B
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_5
    const/4 v6, 0x0

    sget-object v7, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v1, v6, v5, v7}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 68
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 67
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "bytes":[B
    if-nez p0, :cond_2

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 86
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 100
    const/16 v4, 0x7f

    if-le v1, v4, :cond_1

    .line 104
    :try_start_0
    sget-object v4, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .end local v1    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    if-nez p0, :cond_2

    .line 117
    const/4 p0, 0x0

    .line 211
    .end local p0    # "buf":Ljava/lang/StringBuilder;
    :goto_2
    return-object p0

    .line 97
    .restart local v1    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 106
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 83
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "c":C
    .end local v3    # "i":I
    :cond_2
    monitor-enter p0

    .line 122
    if-eqz v0, :cond_4

    .line 124
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    :try_start_1
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 126
    aget-byte v1, v0, v3

    .line 127
    .local v1, "c":B
    sparse-switch v1, :sswitch_data_1

    .line 157
    if-gez v1, :cond_3

    .line 159
    const/16 v4, 0x25

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {v1, p0}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    .line 124
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 130
    :sswitch_1
    const-string v4, "%25"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 209
    .end local v1    # "c":B
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 133
    .restart local v1    # "c":B
    :sswitch_2
    :try_start_2
    const-string v4, "%3F"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 136
    :sswitch_3
    const-string v4, "%3B"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 139
    :sswitch_4
    const-string v4, "%23"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 142
    :sswitch_5
    const-string v4, "%22"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 145
    :sswitch_6
    const-string v4, "%27"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 148
    :sswitch_7
    const-string v4, "%3C"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 151
    :sswitch_8
    const-string v4, "%3E"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 154
    :sswitch_9
    const-string v4, "%20"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 163
    :cond_3
    int-to-char v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 171
    .end local v1    # "c":B
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 173
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 174
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_2

    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 177
    :sswitch_a
    const-string v4, "%25"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 180
    :sswitch_b
    const-string v4, "%3F"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 183
    :sswitch_c
    const-string v4, "%3B"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 186
    :sswitch_d
    const-string v4, "%23"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 189
    :sswitch_e
    const-string v4, "%22"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 192
    :sswitch_f
    const-string v4, "%27"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 195
    :sswitch_10
    const-string v4, "%3C"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 198
    :sswitch_11
    const-string v4, "%3E"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 201
    :sswitch_12
    const-string v4, "%20"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 209
    .end local v1    # "c":C
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 127
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x25 -> :sswitch_1
        0x27 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_7
        0x3e -> :sswitch_8
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 174
    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_12
        0x22 -> :sswitch_e
        0x23 -> :sswitch_d
        0x25 -> :sswitch_a
        0x27 -> :sswitch_f
        0x3b -> :sswitch_c
        0x3c -> :sswitch_10
        0x3e -> :sswitch_11
        0x3f -> :sswitch_b
    .end sparse-switch
.end method

.method public static encodeString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encode"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x25

    .line 225
    if-nez p0, :cond_3

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .end local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_1
    if-nez p0, :cond_3

    .line 238
    const/4 p0, 0x0

    .line 256
    .end local p0    # "buf":Ljava/lang/StringBuilder;
    :goto_1
    return-object p0

    .line 228
    .restart local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_3
    monitor-enter p0

    .line 243
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 245
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    .restart local v0    # "c":C
    if-eq v0, v4, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 248
    :cond_4
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x10

    invoke-static {p0, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->append(Ljava/lang/StringBuilder;BI)V

    .line 243
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 254
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 674
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 675
    .local v0, "c":C
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    .line 676
    const/4 v2, 0x1

    .line 686
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 677
    .restart local v0    # "c":C
    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_5

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5

    :cond_2
    if-lez v1, :cond_4

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_5

    :cond_3
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_5

    .line 686
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 672
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "p"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 459
    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v1

    .line 461
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 462
    .local v0, "slash":I
    if-ltz v0, :cond_0

    .line 463
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
