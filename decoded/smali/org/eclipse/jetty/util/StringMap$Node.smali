.class Lorg/eclipse/jetty/util/StringMap$Node;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field _char:[C

.field _children:[Lorg/eclipse/jetty/util/StringMap$Node;

.field _key:Ljava/lang/String;

.field _next:Lorg/eclipse/jetty/util/StringMap$Node;

.field _ochar:[C

.field _value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "ignoreCase"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, p3

    .line 567
    .local v2, "l":I
    new-array v4, v2, [C

    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 568
    new-array v4, v2, [C

    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 571
    add-int v4, p3, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 572
    .local v0, "c":C
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aput-char v0, v4, v1

    .line 573
    if-eqz p1, :cond_1

    .line 575
    move v3, v0

    .line 576
    .local v3, "o":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 577
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 580
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aput-char v3, v4, v1

    .line 569
    .end local v3    # "o":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    .restart local v3    # "o":C
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_1

    .line 583
    .end local v0    # "c":C
    .end local v3    # "o":C
    :cond_3
    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 634
    const-string v1, "{["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    if-nez v1, :cond_1

    .line 636
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 643
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 644
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v1, :cond_3

    .line 647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 649
    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 651
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    aget-object v1, v1, v0

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/util/StringMap$Node;->toString(Ljava/lang/StringBuilder;)V

    .line 647
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 653
    :cond_2
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 656
    .end local v0    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    if-eqz v1, :cond_4

    .line 659
    const-string v1, ",\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_next:Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v1, p1}, Lorg/eclipse/jetty/util/StringMap$Node;->toString(Ljava/lang/StringBuilder;)V

    .line 662
    :cond_4
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method split(Lorg/eclipse/jetty/util/StringMap;I)Lorg/eclipse/jetty/util/StringMap$Node;
    .locals 7
    .param p1, "map"    # Lorg/eclipse/jetty/util/StringMap;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 587
    new-instance v1, Lorg/eclipse/jetty/util/StringMap$Node;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/StringMap$Node;-><init>()V

    .line 588
    .local v1, "split":Lorg/eclipse/jetty/util/StringMap$Node;
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    array-length v3, v3

    sub-int v0, v3, p2

    .line 590
    .local v0, "sl":I
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 591
    .local v2, "tmp":[C
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 592
    new-array v3, v0, [C

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    .line 593
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    invoke-static {v2, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    invoke-static {v2, p2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    if-eqz v3, :cond_0

    .line 598
    iget-object v2, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 599
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 600
    new-array v3, v0, [C

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    .line 601
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    invoke-static {v2, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    iget-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    invoke-static {v2, p2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 606
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 607
    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 608
    iput-object v4, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 609
    iget-object v3, p1, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    iget-object v3, p1, Lorg/eclipse/jetty/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iput-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    .line 613
    iget v3, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    new-array v3, v3, [Lorg/eclipse/jetty/util/StringMap$Node;

    iput-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    .line 614
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v4, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_char:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aput-object v1, v3, v4

    .line 615
    iget-object v3, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v4, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    if-eq v3, v1, :cond_2

    .line 616
    iget-object v3, p0, Lorg/eclipse/jetty/util/StringMap$Node;->_children:[Lorg/eclipse/jetty/util/StringMap$Node;

    iget-object v4, v1, Lorg/eclipse/jetty/util/StringMap$Node;->_ochar:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/eclipse/jetty/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aput-object v1, v3, v4

    .line 618
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/StringMap$Node;->toString(Ljava/lang/StringBuilder;)V

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
