.class public Lorg/eclipse/jetty/util/LazyList;
.super Ljava/lang/Object;
.source "LazyList.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final __EMTPY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jetty/util/LazyList;->__EMTPY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 113
    if-nez p0, :cond_2

    .line 115
    if-gtz p1, :cond_0

    instance-of v1, p2, Ljava/util/List;

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 117
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    .line 121
    goto :goto_0

    .line 124
    :cond_2
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 126
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, p0

    .line 127
    goto :goto_0

    .line 130
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-nez p0, :cond_2

    .line 81
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 93
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 94
    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 159
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object p0
.end method

.method public static addCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 147
    :cond_0
    return-object p0
.end method

.method public static addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/lang/Class",
            "<*>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 439
    if-nez p0, :cond_1

    .line 441
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 444
    :cond_0
    const/4 v2, 0x1

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 445
    .local v1, "na":[Ljava/lang/Object;, "[TT;"
    aput-object p1, v1, v3

    .line 456
    :goto_0
    return-object v1

    .line 451
    .end local v1    # "na":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 453
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 454
    .restart local v1    # "na":[Ljava/lang/Object;, "[TT;"
    array-length v2, p0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    array-length v2, p0

    aput-object p1, v1, v2

    goto :goto_0
.end method

.method public static array2List([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "array":[Ljava/lang/Object;, "[TE;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "list"    # Ljava/lang/Object;

    .prologue
    .line 368
    if-nez p0, :cond_1

    .line 369
    const/4 p0, 0x0

    .line 372
    .end local p0    # "list":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 370
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    .end local p0    # "list":Ljava/lang/Object;
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 361
    .end local p0    # "list":Ljava/lang/Object;
    :goto_0
    return v0

    .line 358
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 359
    check-cast p0, Ljava/util/List;

    .end local p0    # "list":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 361
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "initialSize"    # I

    .prologue
    .line 169
    if-nez p0, :cond_1

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    :cond_0
    :goto_0
    return-object v2

    .line 171
    :cond_1
    instance-of v3, p0, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    move-object v2, p0

    .line 173
    check-cast v2, Ljava/util/ArrayList;

    .line 174
    .local v2, "ol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_0

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v1, "nl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v2, v1

    .line 178
    goto :goto_0

    .line 180
    .end local v1    # "nl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v2    # "ol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 182
    goto :goto_0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 340
    if-nez p0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 343
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 344
    check-cast p0, Ljava/util/List;

    .end local p0    # "list":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 347
    :cond_1
    return-object p0

    .line 346
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_1

    .line 349
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static getList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getList(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "nullForEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 252
    if-nez p0, :cond_1

    .line 254
    if-eqz p1, :cond_0

    .line 255
    const/4 p0, 0x0

    .line 261
    .end local p0    # "list":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 256
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 258
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 259
    check-cast p0, Ljava/util/List;

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method public static iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .param p0, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 399
    .end local v0    # "empty":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    return-object v2

    .line 394
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 396
    check-cast p0, Ljava/util/List;

    .end local p0    # "list":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    .line 398
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 399
    .restart local v1    # "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0
.end method

.method public static listIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 3
    .param p0, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 406
    if-nez p0, :cond_0

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 409
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 415
    .end local v0    # "empty":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    return-object v2

    .line 411
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 412
    check-cast p0, Ljava/util/List;

    .end local p0    # "list":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    goto :goto_0

    .line 414
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 415
    .restart local v1    # "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    goto :goto_0
.end method

.method public static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 208
    if-nez p0, :cond_1

    move-object p0, v1

    .line 222
    .end local p0    # "list":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 211
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 213
    check-cast v0, Ljava/util/List;

    .line 214
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v1

    .line 216
    goto :goto_0

    .line 220
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    if-nez p1, :cond_0

    move-object p0, v1

    .line 221
    goto :goto_0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 188
    if-nez p0, :cond_1

    move-object p0, v1

    .line 202
    .end local p0    # "list":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 191
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 193
    check-cast v0, Ljava/util/List;

    .line 194
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v1

    .line 196
    goto :goto_0

    .line 200
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p0, v1

    .line 201
    goto :goto_0
.end method

.method public static removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 463
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 479
    .end local p0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    :goto_0
    return-object p0

    .line 465
    .restart local p0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    array-length v1, p0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 467
    aget-object v4, p0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 469
    if-nez p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 471
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 472
    .local v3, "na":[Ljava/lang/Object;, "[TT;"
    if-lez v1, :cond_2

    .line 473
    invoke-static {p0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_2
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 475
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    invoke-static {p0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object p0, v3

    .line 476
    goto :goto_0

    .line 469
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "na":[Ljava/lang/Object;, "[TT;"
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 1
    .param p0, "list"    # Ljava/lang/Object;

    .prologue
    .line 324
    if-nez p0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 328
    .end local p0    # "list":Ljava/lang/Object;
    :goto_0
    return v0

    .line 326
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 327
    check-cast p0, Ljava/util/List;

    .end local p0    # "list":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 328
    .restart local p0    # "list":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 295
    if-nez p0, :cond_1

    .line 296
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    :cond_0
    :goto_0
    return-object v0

    .line 298
    :cond_1
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v2, p0

    .line 300
    check-cast v2, Ljava/util/List;

    .line 301
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "a":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 305
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    .end local v0    # "a":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 312
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    const/4 v3, 0x1

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 313
    .restart local v0    # "a":Ljava/lang/Object;
    invoke-static {v0, v4, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    const-string v0, "[]"

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 7
    .param p0, "list"    # Ljava/lang/Object;

    .prologue
    .line 268
    if-nez p0, :cond_1

    .line 269
    sget-object v0, Lorg/eclipse/jetty/util/LazyList;->__EMTPY_STRING_ARRAY:[Ljava/lang/String;

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 273
    check-cast v3, Ljava/util/List;

    .line 274
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 275
    .local v0, "a":[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 277
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 278
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 279
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    :cond_2
    move v2, v1

    .line 280
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 284
    .end local v0    # "a":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_0
.end method
