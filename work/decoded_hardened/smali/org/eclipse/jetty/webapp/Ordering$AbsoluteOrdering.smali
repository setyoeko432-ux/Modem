.class public Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;
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
    name = "AbsoluteOrdering"
.end annotation


# static fields
.field public static final OTHER:Ljava/lang/String; = "@@-OTHER-@@"


# instance fields
.field protected _hasOther:Z

.field protected _metaData:Lorg/eclipse/jetty/webapp/MetaData;

.field protected _order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/webapp/MetaData;)V
    .locals 1
    .param p1, "metaData"    # Lorg/eclipse/jetty/webapp/MetaData;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_order:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_hasOther:Z

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    .line 59
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addOthers()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_hasOther:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate <other> element in absolute ordering"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_hasOther:Z

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_order:Ljava/util/List;

    const-string v1, "@@-OTHER-@@"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public hasOther()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_hasOther:Z

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public order(Ljava/util/List;)Ljava/util/List;
    .locals 9
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
    .line 68
    .local p1, "jars":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v5, "orderedList":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .local v7, "tmp":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    new-instance v6, Ljava/util/HashMap;

    iget-object v8, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/MetaData;->getNamedFragments()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 76
    .local v6, "others":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/webapp/FragmentDescriptor;>;"
    const/4 v2, -0x1

    .line 77
    .local v2, "index":I
    iget-object v8, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_order:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "item":Ljava/lang/String;
    const-string v8, "@@-OTHER-@@"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 81
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    .line 82
    .local v0, "f":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    if-eqz v0, :cond_0

    .line 84
    iget-object v8, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_metaData:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v8, v3}, Lorg/eclipse/jetty/webapp/MetaData;->getJarForFragment(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 85
    .local v4, "jar":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0    # "f":Lorg/eclipse/jetty/webapp/FragmentDescriptor;
    .end local v4    # "jar":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 95
    .end local v3    # "item":Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;->_hasOther:Z

    if-eqz v8, :cond_4

    .line 97
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .end local v2    # "index":I
    :cond_3
    invoke-interface {v5, v2, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 100
    :cond_4
    return-object v5
.end method
