.class public Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lorg/eclipse/jetty/webapp/Ordering;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeOrdering"
.end annotation


# instance fields
.field protected _afterOthers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field protected _beforeOthers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end field

.field protected _metaData:Lorg/eclipse/jetty/webapp/MetaData;

.field protected _noOthers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/webapp/MetaData;)V
    .locals 1
    .param p1, "metaData"    # Lorg/eclipse/jetty/webapp/MetaData;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_noOthers:Ljava/util/LinkedList;

    .line 143
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    .line 144
    return-void
.end method


# virtual methods
.method public addAfterOthers(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "r"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public addBeforeOthers(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "r"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public addNoOthers(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "r"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_noOthers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method protected getIndexOf(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "fragmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v2, -0x1

    .line 478
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v3, p2}, Lorg/eclipse/jetty/webapp/MetaData;->getFragment(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move-result-object v0

    .line 479
    .local v0, "fd":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-nez v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v2

    .line 483
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v3, p2}, Lorg/eclipse/jetty/webapp/MetaData;->getJarForFragment(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 484
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v1, :cond_0

    .line 487
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method public hasOther()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected insert(Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .param p2, "index"    # I
    .param p3, "fragName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v1, p3}, Lorg/eclipse/jetty/webapp/MetaData;->getJarForFragment(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 451
    .local v0, "jar":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v0, :cond_0

    .line 452
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No jar for insertion"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->insert(Ljava/util/List;ILorg/eclipse/jetty/util/resource/Resource;)V

    .line 455
    return-void
.end method

.method protected insert(Ljava/util/List;ILorg/eclipse/jetty/util/resource/Resource;)V
    .locals 2
    .param p2, "index"    # I
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;I",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-nez p1, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "List is null for insertion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 464
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method protected isAfter(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p2, "fragNameA"    # Ljava/lang/String;
    .param p3, "fragNameB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, "idxa":I
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, "idxb":I
    if-ltz v1, :cond_1

    if-ge v0, v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v2

    .line 416
    :cond_1
    if-gez v1, :cond_3

    .line 420
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    if-ne p1, v4, :cond_2

    move v2, v3

    .line 424
    goto :goto_0

    .line 426
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    if-ne p1, v4, :cond_3

    .line 430
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    invoke-virtual {v3, p3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect relationship: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move v2, v3

    .line 437
    goto :goto_0
.end method

.method protected isBefore(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p2, "fragNameA"    # Ljava/lang/String;
    .param p3, "fragNameB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, "idxa":I
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "idxb":I
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    if-gez v1, :cond_3

    .line 376
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    if-ne p1, v4, :cond_2

    move v2, v3

    .line 380
    goto :goto_0

    .line 382
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    if-ne p1, v4, :cond_3

    .line 386
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    invoke-virtual {v3, p3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect relationship: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move v2, v3

    .line 394
    goto :goto_0
.end method

.method public order(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "jars":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/util/resource/Resource;

    .line 157
    .local v6, "jar":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getFragment(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move-result-object v3

    .line 158
    .local v3, "descriptor":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-eqz v3, :cond_0

    .line 160
    sget-object v10, Lorg/eclipse/jetty/webapp/Ordering$1;->$SwitchMap$org$eclipse$jetty$webapp$FragmentDescriptor$OtherType:[I

    invoke-virtual {v3}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getOtherType()Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrdering()Lorg/eclipse/jetty/webapp/Ordering;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;

    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->addNoOthers(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrdering()Lorg/eclipse/jetty/webapp/Ordering;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;

    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->addBeforeOthers(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrdering()Lorg/eclipse/jetty/webapp/Ordering;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;

    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->addAfterOthers(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrdering()Lorg/eclipse/jetty/webapp/Ordering;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;

    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->addNoOthers(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 187
    .end local v3    # "descriptor":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .end local v6    # "jar":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v8, "orderedList":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v7, 0x2

    .line 189
    .local v7, "maxIterations":I
    const/4 v4, 0x0

    .line 193
    .local v4, "done":Z
    :cond_2
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->orderList(Ljava/util/LinkedList;)Z

    move-result v1

    .line 196
    .local v1, "changesBefore":Z
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->orderList(Ljava/util/LinkedList;)Z

    move-result v0

    .line 199
    .local v0, "changesAfter":Z
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_noOthers:Ljava/util/LinkedList;

    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->orderList(Ljava/util/LinkedList;)Z

    move-result v2

    .line 202
    .local v2, "changesNone":Z
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    const/4 v4, 0x1

    .line 204
    :goto_1
    if-nez v4, :cond_3

    add-int/lit8 v7, v7, -0x1

    if-gtz v7, :cond_2

    .line 207
    :cond_3
    if-nez v4, :cond_5

    .line 208
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Circular references for fragments"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 202
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 210
    :cond_5
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_beforeOthers:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/resource/Resource;

    .line 211
    .local v9, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    .end local v9    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_noOthers:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/resource/Resource;

    .line 213
    .restart local v9    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 214
    .end local v9    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_7
    iget-object v10, p0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_afterOthers:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/resource/Resource;

    .line 215
    .restart local v9    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 217
    .end local v9    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_8
    return-object v8

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected orderList(Ljava/util/LinkedList;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v9, 0x0

    .line 251
    .local v9, "changes":Z
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    .local v14, "iterable":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 254
    .local v15, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 256
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/jetty/util/resource/Resource;

    .line 257
    .local v16, "r":Lorg/eclipse/jetty/util/resource/Resource;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/MetaData;->getFragment(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move-result-object v10

    .line 258
    .local v10, "f":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-eqz v10, :cond_0

    .line 265
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getBefores()Ljava/util/List;

    move-result-object v8

    .line 266
    .local v8, "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    .line 268
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 273
    .local v6, "b":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->isBefore(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 276
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v12

    .line 277
    .local v12, "idx1":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v13

    .line 280
    .local v13, "idx2":I
    if-gez v13, :cond_2

    .line 282
    const/4 v9, 0x1

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getJarForFragment(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    .line 285
    .local v7, "bResource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v7, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_noOthers:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 290
    add-int/lit8 v17, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->insert(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v7    # "bResource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 299
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->insert(Ljava/util/List;ILjava/lang/String;)V

    .line 300
    const/4 v9, 0x1

    goto :goto_0

    .line 307
    .end local v6    # "b":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "idx1":I
    .end local v13    # "idx2":I
    :cond_3
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getAfters()Ljava/util/List;

    move-result-object v5

    .line 308
    .local v5, "afters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 310
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    .local v3, "a":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->isAfter(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 316
    invoke-virtual {v10}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v12

    .line 317
    .restart local v12    # "idx1":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v13

    .line 320
    .restart local v13    # "idx2":I
    if-gez v13, :cond_5

    .line 322
    const/4 v9, 0x1

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/webapp/MetaData;->getJarForFragment(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 325
    .local v4, "aResource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v4, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->_noOthers:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v4}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->insert(Ljava/util/List;ILorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_1

    .line 336
    .end local v4    # "aResource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v3}, Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;->insert(Ljava/util/List;ILjava/lang/String;)V

    .line 338
    const/4 v9, 0x1

    goto :goto_1

    .line 348
    .end local v3    # "a":Ljava/lang/String;
    .end local v5    # "afters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "f":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "idx1":I
    .end local v13    # "idx2":I
    .end local v16    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    return v9
.end method

.method protected remove(Ljava/util/List;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p2, "r"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-nez p1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
