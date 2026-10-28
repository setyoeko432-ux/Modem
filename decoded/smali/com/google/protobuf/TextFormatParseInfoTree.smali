.class public Lcom/google/protobuf/TextFormatParseInfoTree;
.super Ljava/lang/Object;
.source "TextFormatParseInfoTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    }
.end annotation


# instance fields
.field private locationsFromField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/TextFormatParseLocation;",
            ">;>;"
        }
    .end annotation
.end field

.field subtreesFromField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/TextFormatParseInfoTree;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/TextFormatParseLocation;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/TextFormatParseInfoTree$Builder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "locationsFromField":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseLocation;>;>;"
    .local p2, "subtreeBuildersFromField":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree$Builder;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v2, "locs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseLocation;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    .local v1, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseLocation;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v1    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseLocation;>;>;"
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->locationsFromField:Ljava/util/Map;

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v5, "subs":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree$Builder;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v4, "submessagesOfField":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    .line 85
    .local v3, "subBuilder":Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    invoke-virtual {v3}, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;->build()Lcom/google/protobuf/TextFormatParseInfoTree;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    .end local v3    # "subBuilder":Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    .end local v0    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree$Builder;>;>;"
    .end local v4    # "submessagesOfField":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree;>;"
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->subtreesFromField:Ljava/util/Map;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/protobuf/TextFormatParseInfoTree$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/google/protobuf/TextFormatParseInfoTree$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormatParseInfoTree;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;-><init>(Lcom/google/protobuf/TextFormatParseInfoTree$1;)V

    return-object v0
.end method

.method private static getFromList(Ljava/util/List;ILcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "fieldDescriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_2

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal index field: %s, index %d"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p2, :cond_1

    const-string v0, "<null>"

    .line 155
    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 154
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocation(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Lcom/google/protobuf/TextFormatParseLocation;
    .locals 1
    .param p1, "fieldDescriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getLocations(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getFromList(Ljava/util/List;ILcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/TextFormatParseLocation;

    return-object v0
.end method

.method public getLocations(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;
    .locals 2
    .param p1, "fieldDescriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/TextFormatParseLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->locationsFromField:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/TextFormatParseLocation;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/TextFormatParseLocation;>;"
    :cond_0
    return-object v0
.end method

.method public getNestedTree(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Lcom/google/protobuf/TextFormatParseInfoTree;
    .locals 1
    .param p1, "fieldDescriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getNestedTrees(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/google/protobuf/TextFormatParseInfoTree;->getFromList(Ljava/util/List;ILcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/TextFormatParseInfoTree;

    return-object v0
.end method

.method public getNestedTrees(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/util/List;
    .locals 2
    .param p1, "fieldDescriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/TextFormatParseInfoTree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/protobuf/TextFormatParseInfoTree;->subtreesFromField:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 127
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/TextFormatParseInfoTree;>;"
    :cond_0
    return-object v0
.end method
