.class public Lcom/google/protobuf/MapEntry$Builder;
.super Lcom/google/protobuf/AbstractMessage$Builder;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/AbstractMessage$Builder",
        "<",
        "Lcom/google/protobuf/MapEntry$Builder",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapEntry$Metadata",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/MapEntry$Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapEntry$Metadata",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    .local p1, "metadata":Lcom/google/protobuf/MapEntry$Metadata;, "Lcom/google/protobuf/MapEntry$Metadata<TK;TV;>;"
    iget-object v0, p1, Lcom/google/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/MapEntry$Builder;-><init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/MapEntry$Metadata;Lcom/google/protobuf/MapEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/MapEntry$Metadata;
    .param p2, "x1"    # Lcom/google/protobuf/MapEntry$1;

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;-><init>(Lcom/google/protobuf/MapEntry$Metadata;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MapEntry$Metadata",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    .local p1, "metadata":Lcom/google/protobuf/MapEntry$Metadata;, "Lcom/google/protobuf/MapEntry$Metadata<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage$Builder;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    .line 256
    iput-object p2, p0, Lcom/google/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    .line 257
    iput-object p3, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/MapEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/MapEntry$Metadata;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/google/protobuf/MapEntry$1;

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MapEntry$Builder;-><init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private checkFieldDescriptor(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 308
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/google/protobuf/MapEntry$Metadata;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong FieldDescriptor \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" used in message \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v2, v2, Lcom/google/protobuf/MapEntry$Metadata;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 311
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no repeated field in a map entry message."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MapEntry$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/MapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->buildPartial()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    .line 291
    .local v0, "result":Lcom/google/protobuf/MapEntry;, "Lcom/google/protobuf/MapEntry<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/protobuf/MapEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-static {v0}, Lcom/google/protobuf/MapEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 294
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->build()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->build()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/MapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Lcom/google/protobuf/MapEntry;

    iget-object v1, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/google/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/MapEntry;-><init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->buildPartial()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->buildPartial()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 346
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clearKey()Lcom/google/protobuf/MapEntry$Builder;

    .line 351
    :goto_0
    return-object p0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clearValue()Lcom/google/protobuf/MapEntry$Builder;

    goto :goto_0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearKey()Lcom/google/protobuf/MapEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/google/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    .line 275
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/MapEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/google/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    .line 285
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clone()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clone()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MapEntry$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Lcom/google/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/google/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/MapEntry$Builder;-><init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clone()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clone()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->clone()Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 386
    .local v1, "result":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v2, v2, Lcom/google/protobuf/MapEntry$Metadata;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 387
    .local v0, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MapEntry$Builder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MapEntry$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 391
    .end local v0    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/MapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Lcom/google/protobuf/MapEntry;

    iget-object v1, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v2, v2, Lcom/google/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v3, v3, Lcom/google/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/MapEntry;-><init>(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/google/protobuf/MapEntry$Metadata;->descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 402
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 403
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 405
    .local v0, "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    .line 408
    :cond_0
    return-object v0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry$Builder;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I

    .prologue
    .line 419
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no repeated field in a map entry message."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 413
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no repeated field in a map entry message."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 396
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 380
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->metadata:Lcom/google/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/MapEntry;->access$600(Lcom/google/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 317
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 320
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_1

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message value field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->checkFieldDescriptor(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    .line 340
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 335
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    .line 336
    check-cast p2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 338
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    goto :goto_0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MapEntry$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/google/protobuf/MapEntry$Builder;->key:Ljava/lang/Object;

    .line 270
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no repeated field in a map entry message."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/MapEntry$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapEntry$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/protobuf/MapEntry$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lcom/google/protobuf/MapEntry$Builder;, "Lcom/google/protobuf/MapEntry$Builder<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/protobuf/MapEntry$Builder;->value:Ljava/lang/Object;

    .line 280
    return-object p0
.end method
