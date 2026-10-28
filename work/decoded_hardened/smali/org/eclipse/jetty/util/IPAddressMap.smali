.class public Lorg/eclipse/jetty/util/IPAddressMap;
.super Ljava/util/HashMap;
.source "IPAddressMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;,
        Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;
    }
.end annotation

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


# instance fields
.field private final _patterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/IPAddressMap;->_patterns:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 64
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/IPAddressMap;->_patterns:Ljava/util/HashMap;

    .line 65
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
    .line 96
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 146
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    if-nez p1, :cond_1

    .line 147
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 150
    .local v0, "entries":Ljava/lang/Object;
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "entries":Ljava/lang/Object;
    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 152
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TTYPE;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/util/IPAddressMap;->_patterns:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getMatch(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TTYPE;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    if-eqz p1, :cond_1

    .line 125
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TTYPE;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/util/IPAddressMap;->_patterns:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TTYPE;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTYPE;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getMatch(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TTYPE;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/IPAddressMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "addrSpec"    # Ljava/lang/String;
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
    .line 77
    .local p0, "this":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<TTYPE;>;"
    .local p2, "object":Ljava/lang/Object;, "TTYPE;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid IP address pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "spec":Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/util/IPAddressMap;->_patterns:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lorg/eclipse/jetty/util/IPAddressMap;->_patterns:Ljava/util/HashMap;

    new-instance v2, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
