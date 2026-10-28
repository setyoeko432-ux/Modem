.class public Lorg/eclipse/jetty/util/HostMap;
.super Ljava/util/HashMap;
.source "HostMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TTYPE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lorg/eclipse/jetty/util/HostMap;, "Lorg/eclipse/jetty/util/HostMap<TTYPE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 48
    .local p0, "this":Lorg/eclipse/jetty/util/HostMap;, "Lorg/eclipse/jetty/util/HostMap<TTYPE;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTYPE;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/eclipse/jetty/util/HostMap;, "Lorg/eclipse/jetty/util/HostMap<TTYPE;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 82
    .local p0, "this":Lorg/eclipse/jetty/util/HostMap;, "Lorg/eclipse/jetty/util/HostMap<TTYPE;>;"
    if-nez p1, :cond_1

    .line 83
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 105
    :cond_0
    return-object v2

    .line 85
    :cond_1
    const/4 v5, 0x0

    .line 86
    .local v5, "idx":I
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "domain":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 89
    .local v1, "domains":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 92
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_3
    if-gtz v5, :cond_2

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "entries":Ljava/lang/Object;
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "entries":Ljava/lang/Object;
    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TTYPE;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "entries":Ljava/lang/Object;
    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lorg/eclipse/jetty/util/HostMap;, "Lorg/eclipse/jetty/util/HostMap<TTYPE;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/HostMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TTYPE;)TTYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/eclipse/jetty/util/HostMap;, "Lorg/eclipse/jetty/util/HostMap<TTYPE;>;"
    .local p2, "object":Ljava/lang/Object;, "TTYPE;"
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
