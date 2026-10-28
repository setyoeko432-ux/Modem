.class public Lorg/eclipse/jetty/util/MultiMap;
.super Ljava/lang/Object;
.source "MultiMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5f76223fd1d76a7dL


# instance fields
.field _cmap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 70
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    instance-of v0, p1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "map":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "concurrent"    # Z

    .prologue
    .line 75
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "lo":Ljava/lang/Object;
    invoke-static {v1, p2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "ln":Ljava/lang/Object;
    if-eq v1, v0, :cond_0

    .line 212
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    return-void
.end method

.method public addValues(Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "lo":Ljava/lang/Object;
    invoke-static {v1, p2}, Lorg/eclipse/jetty/util/LazyList;->addCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "ln":Ljava/lang/Object;
    if-eq v1, v0, :cond_0

    .line 227
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    return-void
.end method

.method public addValues(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "lo":Ljava/lang/Object;
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->addCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "ln":Ljava/lang/Object;
    if-eq v1, v0, :cond_0

    .line 242
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 332
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 336
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 352
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 150
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "l":Ljava/lang/Object;
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    .line 154
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :pswitch_1
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, "o":Ljava/lang/Object;
    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    const/4 v5, 0x0

    .line 121
    iget-object v6, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    .local v2, "l":Ljava/lang/Object;
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v4, "values":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 134
    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 138
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v4    # "values":Ljava/lang/StringBuilder;
    :pswitch_0
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 142
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    :pswitch_1
    return-object v5

    .line 128
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 142
    .end local v3    # "o":Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v4    # "values":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 104
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "l":Ljava/lang/Object;
    if-nez p2, :cond_0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 363
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljava/lang/Object;>;"
    instance-of v2, p1, Lorg/eclipse/jetty/util/MultiMap;

    .line 276
    .local v2, "multi":Z
    if-eqz v2, :cond_0

    .line 278
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 287
    :cond_1
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putValues(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs putValues(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 194
    .local v1, "list":Ljava/lang/Object;
    const/4 v0, 0x0

    .end local v1    # "list":Ljava/lang/Object;
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 195
    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .restart local v1    # "list":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "list":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 373
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 397
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, "lo":Ljava/lang/Object;
    move-object v0, v1

    .line 255
    .local v0, "ln":Ljava/lang/Object;
    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .line 256
    .local v2, "s":I
    if-lez v2, :cond_0

    .line 258
    invoke-static {v1, p2}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    if-nez v0, :cond_1

    .line 260
    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 262
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 378
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_cmap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toStringArrayMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    new-instance v3, Lorg/eclipse/jetty/util/MultiMap$1;

    iget-object v4, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, p0, v4}, Lorg/eclipse/jetty/util/MultiMap$1;-><init>(Lorg/eclipse/jetty/util/MultiMap;I)V

    .line 315
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;[Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 317
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "a":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    .end local v0    # "a":[Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/Object;>;"
    :cond_0
    return-object v3
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<TK;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiMap;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
