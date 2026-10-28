.class Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"

# interfaces
.implements Lorg/eclipse/jetty/xml/ConfigurationProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/xml/XmlConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyXmlConfiguration"
.end annotation


# instance fields
.field _configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

.field _root:Lorg/eclipse/jetty/xml/XmlParser$Node;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/xml/XmlConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/xml/XmlConfiguration$1;

    .prologue
    .line 313
    invoke-direct {p0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;-><init>()V

    return-void
.end method

.method private call(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 18
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    const-string v15, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "id":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v13

    .line 707
    .local v13, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_1

    .line 708
    const/16 p1, 0x0

    .line 711
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v13, :cond_2

    .line 712
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 709
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 710
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    goto :goto_0

    .line 714
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 v14, 0x0

    .line 715
    .local v14, "size":I
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v3

    .line 716
    .local v3, "argi":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v15

    if-ge v5, v15, :cond_4

    .line 718
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 719
    .local v12, "o":Ljava/lang/Object;
    instance-of v15, v12, Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 716
    .end local v12    # "o":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 721
    .restart local v12    # "o":Ljava/lang/Object;
    :cond_3
    check-cast v12, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v12    # "o":Ljava/lang/Object;
    invoke-virtual {v12}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Arg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 723
    move v3, v5

    .line 729
    :cond_4
    new-array v2, v14, [Ljava/lang/Object;

    .line 730
    .local v2, "arg":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v8, 0x0

    .local v8, "j":I
    move v9, v8

    .end local v8    # "j":I
    .local v9, "j":I
    :goto_3
    if-ge v9, v14, :cond_7

    .line 732
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 733
    .restart local v12    # "o":Ljava/lang/Object;
    instance-of v15, v12, Ljava/lang/String;

    if-eqz v15, :cond_6

    move v8, v9

    .line 730
    .end local v9    # "j":I
    .end local v12    # "o":Ljava/lang/Object;
    .restart local v8    # "j":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "j":I
    .restart local v9    # "j":I
    goto :goto_3

    .line 726
    .end local v2    # "arg":[Ljava/lang/Object;
    .end local v9    # "j":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 735
    .restart local v2    # "arg":[Ljava/lang/Object;
    .restart local v9    # "j":I
    .restart local v12    # "o":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "j":I
    .restart local v8    # "j":I
    check-cast v12, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v12    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v2, v9

    goto :goto_4

    .line 738
    .end local v8    # "j":I
    .restart local v9    # "j":I
    :cond_7
    const-string v15, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 739
    .local v10, "method":Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    invoke-interface {v15}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 740
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "XML call "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v13, v10, v0, v2}, Lorg/eclipse/jetty/util/TypeUtil;->call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 745
    .local v11, "n":Ljava/lang/Object;
    if-eqz v6, :cond_9

    .line 746
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v15}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    return-object v11

    .line 750
    .end local v11    # "n":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 752
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No Method: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 753
    .local v7, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v7, v4}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 754
    throw v7
.end method

.method private static convertArrayToArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 625
    .local v1, "length":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 626
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 627
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    return-object v2
.end method

.method private static convertArrayToCollection(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "collectionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 603
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    invoke-static {p0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->convertArrayToArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 617
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1
    const-class v2, Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->convertArrayToArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    goto :goto_0

    .line 609
    :cond_2
    const-class v2, Lorg/eclipse/jetty/util/ArrayQueue;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    new-instance v1, Lorg/eclipse/jetty/util/ArrayQueue;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/ArrayQueue;-><init>()V

    .line 612
    .local v1, "q":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<Ljava/lang/Object;>;"
    invoke-static {p0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->convertArrayToArrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/ArrayQueue;->addAll(Ljava/util/Collection;)Z

    .line 613
    move-object v0, v1

    goto :goto_0

    .line 618
    .end local v1    # "q":Lorg/eclipse/jetty/util/ArrayQueue;, "Lorg/eclipse/jetty/util/ArrayQueue<Ljava/lang/Object;>;"
    :cond_3
    return-object v0
.end method

.method private get(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 659
    invoke-static {p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v6

    .line 660
    .local v6, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_2

    .line 661
    const/4 p1, 0x0

    .line 665
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v7, "name"

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "name":Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "id":Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 668
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XML get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 674
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 675
    .restart local p1    # "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v7}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_1

    .line 691
    iget-object v7, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v7}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_1
    return-object p1

    .line 663
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    .line 677
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 681
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 682
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 683
    .restart local p1    # "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v7}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 685
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local p1    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 687
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    throw v5
.end method

.method private static isTypeMatchingClass(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "classToMatch":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1131
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1167
    .end local p2    # "item":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "item":Ljava/lang/Object;
    :cond_0
    move-object v2, p2

    .line 1134
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1135
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1136
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "Call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1137
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->call(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1138
    :cond_1
    const-string v5, "Get"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1139
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->get(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1140
    :cond_2
    const-string v5, "New"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1141
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1142
    :cond_3
    const-string v5, "Ref"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1143
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->refObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1144
    :cond_4
    const-string v5, "Array"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1145
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newArray(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1146
    :cond_5
    const-string v5, "Map"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1147
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newMap(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1148
    :cond_6
    const-string v5, "Property"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1149
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->propertyObj(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1151
    :cond_7
    const-string v5, "SystemProperty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1153
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, "name":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1158
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_8
    const-string v5, "Env"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1160
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1161
    .restart local v1    # "name":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .restart local v0    # "defaultValue":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1163
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_9

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_1
    move-object p2, v0

    goto/16 :goto_0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_9
    move-object v0, v4

    goto :goto_1

    .line 1166
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown value tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1167
    const/4 p2, 0x0

    goto/16 :goto_0
.end method

.method private newArray(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 859
    const-class v0, Ljava/lang/Object;

    .line 860
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "type"

    invoke-virtual {p2, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 861
    .local v8, "type":Ljava/lang/String;
    const-string v10, "id"

    invoke-virtual {p2, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, "id":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 864
    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 865
    if-nez v0, :cond_0

    .line 867
    const-string v10, "String"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 868
    const-class v0, Ljava/lang/String;

    .line 878
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 880
    .local v1, "al":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "al":Ljava/lang/Object;
    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "nodeObject":Ljava/lang/Object;
    move-object v5, v7

    .line 882
    check-cast v5, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 883
    .local v5, "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v10, "id"

    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, "nid":Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v9

    .line 885
    .local v9, "v":Ljava/lang/Object;
    if-nez v9, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_2
    invoke-static {v1, v10}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 886
    .restart local v1    # "al":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 887
    iget-object v10, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v10}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 869
    .end local v1    # "al":Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v6    # "nid":Ljava/lang/String;
    .end local v7    # "nodeObject":Ljava/lang/Object;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_2
    const-string v10, "URL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 870
    const-class v0, Ljava/net/URL;

    goto :goto_0

    .line 871
    :cond_3
    const-string v10, "InetAddress"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 872
    const-class v0, Ljava/net/InetAddress;

    goto :goto_0

    .line 874
    :cond_4
    const-class v10, Lorg/eclipse/jetty/xml/XmlConfiguration;

    const/4 v11, 0x1

    invoke-static {v10, v8, v11}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v6    # "nid":Ljava/lang/String;
    .restart local v7    # "nodeObject":Ljava/lang/Object;
    .restart local v9    # "v":Ljava/lang/Object;
    :cond_5
    move-object v10, v9

    .line 885
    goto :goto_2

    .line 890
    .end local v5    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v6    # "nid":Ljava/lang/String;
    .end local v7    # "nodeObject":Ljava/lang/Object;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_6
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 891
    .local v2, "array":Ljava/lang/Object;
    if-eqz v4, :cond_7

    .line 892
    iget-object v10, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v10}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_7
    return-object v2
.end method

.method private newMap(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 18
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 902
    const-string v16, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 904
    .local v5, "id":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 905
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v5, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 910
    .local v11, "o":Ljava/lang/Object;
    instance-of v0, v11, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_1

    move-object v2, v11

    .line 912
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 913
    .local v2, "entry":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Entry"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 914
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Not an Entry"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 916
    :cond_2
    const/4 v8, 0x0

    .line 917
    .local v8, "key":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v14, 0x0

    .line 919
    .local v14, "value":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 921
    .local v12, "object":Ljava/lang/Object;
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_3

    move-object v6, v12

    .line 923
    check-cast v6, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 924
    .local v6, "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Item"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 925
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Not an Item"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 926
    :cond_4
    if-nez v8, :cond_5

    .line 927
    move-object v8, v6

    goto :goto_1

    .line 929
    :cond_5
    move-object v14, v6

    goto :goto_1

    .line 932
    .end local v6    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v12    # "object":Ljava/lang/Object;
    :cond_6
    if-eqz v8, :cond_7

    if-nez v14, :cond_8

    .line 933
    :cond_7
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Missing Item in Entry"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 934
    :cond_8
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, "kid":Ljava/lang/String;
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 937
    .local v15, "vid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v7

    .line 938
    .local v7, "k":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v13

    .line 939
    .local v13, "v":Ljava/lang/Object;
    invoke-interface {v10, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    if-eqz v9, :cond_9

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    :cond_9
    if-eqz v15, :cond_1

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 947
    .end local v2    # "entry":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "k":Ljava/lang/Object;
    .end local v8    # "key":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v9    # "kid":Ljava/lang/String;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v13    # "v":Ljava/lang/Object;
    .end local v14    # "value":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v15    # "vid":Ljava/lang/String;
    :cond_a
    return-object v10
.end method

.method private newObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 19
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 767
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v14

    .line 768
    .local v14, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v16, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 769
    .local v9, "id":Ljava/lang/String;
    const/4 v15, 0x0

    .line 770
    .local v15, "size":I
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v3

    .line 771
    .local v3, "argi":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 773
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 774
    .local v13, "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 771
    .end local v13    # "o":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 776
    .restart local v13    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v13, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v13    # "o":Ljava/lang/Object;
    invoke-virtual {v13}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Arg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 778
    move v3, v8

    .line 784
    :cond_1
    new-array v2, v15, [Ljava/lang/Object;

    .line 785
    .local v2, "arg":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v10, 0x0

    .local v10, "j":I
    move v11, v10

    .end local v10    # "j":I
    .local v11, "j":I
    :goto_2
    if-ge v11, v15, :cond_4

    .line 787
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 788
    .restart local v13    # "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move v10, v11

    .line 785
    .end local v11    # "j":I
    .end local v13    # "o":Ljava/lang/Object;
    .restart local v10    # "j":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_2

    .line 781
    .end local v2    # "arg":[Ljava/lang/Object;
    .end local v11    # "j":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 790
    .restart local v2    # "arg":[Ljava/lang/Object;
    .restart local v11    # "j":I
    .restart local v13    # "o":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    check-cast v13, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v13    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v2, v11

    goto :goto_3

    .line 793
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_4
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 794
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML new "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 798
    .local v6, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_4
    if-eqz v6, :cond_9

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_9

    .line 800
    aget-object v16, v6, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_7

    .line 798
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 803
    :cond_7
    const/4 v12, 0x0

    .line 804
    .local v12, "n":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 807
    .local v5, "called":Z
    :try_start_0
    aget-object v16, v6, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/xml/XmlConfiguration;->initializeDefaults(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 809
    const/4 v5, 0x1

    .line 823
    .end local v12    # "n":Ljava/lang/Object;
    :goto_5
    if-eqz v5, :cond_6

    .line 825
    if-eqz v9, :cond_8

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 828
    return-object v12

    .line 811
    :catch_0
    move-exception v7

    .line 813
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 815
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v7

    .line 817
    .local v7, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 819
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v7

    .line 821
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 832
    .end local v5    # "called":Z
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No Constructor: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " on "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method private static nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;
    .locals 3
    .param p0, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/xml/XmlParser$Node;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 362
    const-string v1, "class"

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 364
    const/4 v1, 0x0

    .line 366
    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lorg/eclipse/jetty/xml/XmlConfiguration;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private propertyObj(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 6
    .param p1, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 960
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, "id":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "name":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "defaultValue":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v5}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getProperties()Ljava/util/Map;

    move-result-object v4

    .line 965
    .local v4, "property_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 966
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 969
    :goto_0
    if-eqz v1, :cond_0

    .line 970
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v5}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_0
    if-eqz v3, :cond_1

    .line 972
    const/4 v5, 0x0

    invoke-virtual {p0, v3, p1, v5}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 973
    :cond_1
    return-object v3

    .line 968
    :cond_2
    move-object v3, v0

    .local v3, "prop":Ljava/lang/String;
    goto :goto_0
.end method

.method private put(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 639
    instance-of v3, p1, Ljava/util/Map;

    if-nez v3, :cond_0

    .line 640
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object for put is not a Map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 642
    check-cast v0, Ljava/util/Map;

    .line 644
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v3, "name"

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 646
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".put("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_1
    return-void
.end method

.method private refObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    const-string v1, "id"

    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 845
    if-nez p1, :cond_0

    .line 846
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No object for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 848
    return-object p1
.end method

.method private set(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 27
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 432
    const-string v23, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "attr":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 434
    .local v12, "name":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v22

    .line 435
    .local v22, "value":Ljava/lang/Object;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v3, v0, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v22, v3, v23

    .line 438
    .local v3, "arg":[Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v13

    .line 439
    .local v13, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_2

    .line 440
    const/16 p1, 0x0

    .line 444
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/Object;

    aput-object v24, v21, v23

    .line 446
    .local v21, "vClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v22, :cond_0

    .line 447
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v21, v23

    .line 449
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 450
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v24

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "XML "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "("

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, ")"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_1
    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v13, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 456
    .local v17, "set":Ljava/lang/reflect/Method;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6

    .line 575
    .end local v17    # "set":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 442
    .end local v21    # "vClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    goto/16 :goto_0

    .line 450
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v21    # "vClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 459
    :catch_0
    move-exception v8

    .line 461
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 475
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const/16 v23, 0x0

    :try_start_1
    aget-object v23, v21, v23

    const-string v24, "TYPE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v20

    .line 476
    .local v20, "type":Ljava/lang/reflect/Field;
    const/16 v24, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Class;

    aput-object v23, v21, v24

    .line 477
    move-object/from16 v0, v21

    invoke-virtual {v13, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 478
    .restart local v17    # "set":Ljava/lang/reflect/Method;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_9

    goto :goto_2

    .line 481
    .end local v17    # "set":Ljava/lang/reflect/Method;
    .end local v20    # "type":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v8

    .line 483
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 501
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    :goto_4
    :try_start_2
    invoke-virtual {v13, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 502
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 504
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 508
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v8

    .line 510
    .restart local v8    # "e":Ljava/lang/NoSuchFieldException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 514
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v18

    .line 515
    .local v18, "sets":[Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    .line 516
    .restart local v17    # "set":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    .local v15, "s":I
    :goto_5
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_7

    .line 518
    aget-object v23, v18, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 519
    .local v14, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v23, v18, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    array-length v0, v14

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 525
    :try_start_3
    aget-object v17, v18, v15

    .line 526
    aget-object v23, v18, v15

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_a

    goto/16 :goto_2

    .line 529
    :catch_3
    move-exception v8

    .line 531
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 540
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6
    :try_start_4
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$200()[Ljava/lang/Class;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/Class;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_7
    if-ge v10, v11, :cond_5

    aget-object v6, v4, v10

    .line 541
    .local v6, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    aget-object v23, v14, v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 543
    aget-object v23, v18, v15

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->convertArrayToCollection(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 547
    .end local v4    # "arr$":[Ljava/lang/Class;
    .end local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_4
    move-exception v8

    .line 549
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 516
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 463
    .end local v14    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v15    # "s":I
    .end local v17    # "set":Ljava/lang/reflect/Method;
    .end local v18    # "sets":[Ljava/lang/reflect/Method;
    :catch_5
    move-exception v8

    .line 465
    .restart local v8    # "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 467
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v8

    .line 469
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 485
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v8

    .line 487
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 489
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v8

    .line 491
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 493
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_9
    move-exception v8

    .line 495
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 533
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v14    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v15    # "s":I
    .restart local v17    # "set":Ljava/lang/reflect/Method;
    .restart local v18    # "sets":[Ljava/lang/reflect/Method;
    :catch_a
    move-exception v8

    .line 535
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 540
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "arr$":[Ljava/lang/Class;
    .restart local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 555
    .end local v4    # "arr$":[Ljava/lang/Class;
    .end local v6    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    if-eqz v17, :cond_9

    .line 559
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v16, v23, v24

    .line 560
    .local v16, "sClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 562
    const/16 v19, 0x0

    .local v19, "t":I
    :goto_8
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$300()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 564
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$300()[Ljava/lang/Class;

    move-result-object v23

    aget-object v23, v23, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 566
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$400()[Ljava/lang/Class;

    move-result-object v23

    aget-object v16, v23, v19

    .line 571
    .end local v19    # "t":I
    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 572
    .local v7, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v23, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    aput-object v24, v3, v23

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v3, v24

    invoke-virtual/range {v23 .. v24}, Lorg/eclipse/jetty/xml/XmlConfiguration;->initializeDefaults(Ljava/lang/Object;)V

    .line 574
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_d

    goto/16 :goto_2

    .line 577
    .end local v7    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "sClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_b
    move-exception v8

    .line 579
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 592
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :cond_9
    :goto_9
    new-instance v23, Ljava/lang/NoSuchMethodException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v21, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 562
    .restart local v16    # "sClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "t":I
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 581
    .end local v16    # "sClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "t":I
    :catch_c
    move-exception v8

    .line 583
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 585
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_d
    move-exception v8

    .line 587
    .local v8, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 20
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 987
    const-string v17, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 990
    .local v15, "type":Ljava/lang/String;
    const-string v17, "ref"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 991
    .local v14, "ref":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1059
    :goto_0
    if-nez v16, :cond_d

    .line 1061
    const-string v17, "String"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1062
    const-string v16, ""

    .line 1112
    :cond_0
    :goto_1
    return-object v16

    .line 998
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v17

    if-nez v17, :cond_3

    .line 1000
    const-string v17, "String"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1001
    const-string v16, ""

    goto :goto_1

    .line 1002
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 1006
    :cond_3
    const/4 v7, 0x0

    .line 1007
    .local v7, "first":I
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v17

    add-int/lit8 v11, v17, -0x1

    .line 1010
    .local v11, "last":I
    if-eqz v15, :cond_4

    const-string v17, "String"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 1014
    :cond_4
    :goto_2
    if-gt v7, v11, :cond_5

    .line 1016
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1017
    .local v10, "item":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 1026
    .end local v10    # "item":Ljava/lang/Object;
    :cond_5
    :goto_3
    if-ge v7, v11, :cond_6

    .line 1028
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1029
    .restart local v10    # "item":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1038
    .end local v10    # "item":Ljava/lang/Object;
    :cond_6
    if-le v7, v11, :cond_9

    .line 1039
    const/16 v16, 0x0

    goto :goto_1

    .line 1019
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_7
    check-cast v10, Ljava/lang/String;

    .end local v10    # "item":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1020
    .local v10, "item":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .end local v10    # "item":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_5

    .line 1022
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1031
    .local v10, "item":Ljava/lang/Object;
    :cond_8
    check-cast v10, Ljava/lang/String;

    .end local v10    # "item":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1032
    .local v10, "item":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .end local v10    # "item":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_6

    .line 1034
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 1042
    :cond_9
    if-ne v7, v11, :cond_a

    .line 1044
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .local v16, "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1048
    .end local v16    # "value":Ljava/lang/Object;
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v4, "buf":Ljava/lang/StringBuilder;
    move v8, v7

    .local v8, "i":I
    :goto_4
    if-gt v8, v11, :cond_b

    .line 1051
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1052
    .local v10, "item":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1049
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1054
    .end local v10    # "item":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 1063
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v7    # "first":I
    .end local v8    # "i":I
    .end local v11    # "last":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1067
    :cond_d
    if-nez v15, :cond_e

    .line 1069
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1070
    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1074
    :cond_e
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->isTypeMatchingClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1075
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1077
    :cond_f
    invoke-static {v15}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 1078
    .local v13, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_10

    .line 1079
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lorg/eclipse/jetty/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_1

    .line 1081
    :cond_10
    const-class v17, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->isTypeMatchingClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1083
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/URL;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1087
    :try_start_0
    new-instance v17, Ljava/net/URL;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v17

    goto/16 :goto_1

    .line 1089
    :catch_0
    move-exception v6

    .line 1091
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v17, Ljava/lang/reflect/InvocationTargetException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 1095
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :cond_11
    const-class v17, Ljava/net/InetAddress;

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->isTypeMatchingClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1097
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/net/InetAddress;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1101
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    goto/16 :goto_1

    .line 1103
    :catch_1
    move-exception v6

    .line 1105
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v17, Ljava/lang/reflect/InvocationTargetException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 1109
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :cond_12
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$200()[Ljava/lang/Class;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/Class;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_5
    if-ge v9, v12, :cond_14

    aget-object v5, v3, v9

    .line 1111
    .local v5, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v15, v5}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->isTypeMatchingClass(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1112
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->convertArrayToCollection(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v16

    goto/16 :goto_1

    .line 1109
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1115
    .end local v5    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
.end method


# virtual methods
.method public configure()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-static {v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    .line 343
    .local v1, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 346
    .local v2, "obj":Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->initializeDefaults(Ljava/lang/Object;)V

    .line 352
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v3}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 355
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 356
    return-object v2
.end method

.method public configure(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-static {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    .line 329
    .local v1, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string v0, ""

    .line 332
    .local v0, "loaders":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object of class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v0    # "loaders":Ljava/lang/String;
    :cond_0
    const-string v0, "Object Class and type Class are from different loaders."

    goto :goto_0

    .line 334
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 335
    return-object p1
.end method

.method public configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cfg"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 381
    const-string v5, "id"

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 383
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v5}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v5

    if-ge p3, v5, :cond_a

    .line 387
    invoke-virtual {p2, p3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 385
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 390
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 394
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "Set"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->set(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 414
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config error at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    throw v0

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "Put"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 398
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->put(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_1

    .line 399
    :cond_3
    const-string v5, "Call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 400
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->call(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 401
    :cond_4
    const-string v5, "Get"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 402
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->get(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 403
    :cond_5
    const-string v5, "New"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 404
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 405
    :cond_6
    const-string v5, "Array"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 406
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newArray(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 407
    :cond_7
    const-string v5, "Ref"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 408
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->refObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 409
    :cond_8
    const-string v5, "Property"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 410
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->propertyObj(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 412
    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    .end local v2    # "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public init(Ljava/net/URL;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/xml/XmlConfiguration;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "root"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "configuration"    # Lorg/eclipse/jetty/xml/XmlConfiguration;

    .prologue
    .line 320
    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 321
    iput-object p3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_configuration:Lorg/eclipse/jetty/xml/XmlConfiguration;

    .line 322
    return-void
.end method
