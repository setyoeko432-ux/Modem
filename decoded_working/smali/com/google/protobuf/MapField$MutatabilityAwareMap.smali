.class Lcom/google/protobuf/MapField$MutatabilityAwareMap;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutatabilityAwareMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;,
        Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;,
        Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;


# direct methods
.method constructor <init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Map;)V
    .locals 0
    .param p1, "mutabilityOracle"    # Lcom/google/protobuf/MutabilityOracle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MutabilityOracle;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    .local p2, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    .line 300
    iput-object p2, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    .line 301
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 348
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/google/protobuf/MutabilityOracle;->ensureMutable()V

    .line 349
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 350
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 315
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 320
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    new-instance v0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;

    iget-object v1, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 369
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 374
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    new-instance v0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;

    iget-object v1, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareSet;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Set;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/google/protobuf/MutabilityOracle;->ensureMutable()V

    .line 331
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/google/protobuf/MutabilityOracle;->ensureMutable()V

    .line 343
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 344
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/google/protobuf/MutabilityOracle;->ensureMutable()V

    .line 337
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/google/protobuf/MapField$MutatabilityAwareMap;, "Lcom/google/protobuf/MapField$MutatabilityAwareMap<TK;TV;>;"
    new-instance v0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;

    iget-object v1, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareCollection;-><init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Collection;)V

    return-object v0
.end method
