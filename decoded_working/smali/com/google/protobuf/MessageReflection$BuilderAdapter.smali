.class Lcom/google/protobuf/MessageReflection$BuilderAdapter;
.super Ljava/lang/Object;
.source "MessageReflection.java"

# interfaces
.implements Lcom/google/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderAdapter"
.end annotation


# instance fields
.field private final builder:Lcom/google/protobuf/Message$Builder;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Message$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/protobuf/Message$Builder;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    .line 380
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 414
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    .line 401
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;

    .line 425
    return-object p0
.end method

.method public findExtensionByName(Lcom/google/protobuf/ExtensionRegistry;Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1
    .param p1, "registry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p1, p2}, Lcom/google/protobuf/ExtensionRegistry;->findImmutableExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    return-object v0
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1
    .param p1, "registry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p2, "containingType"    # Lcom/google/protobuf/Descriptors$Descriptor;
    .param p3, "fieldNumber"    # I

    .prologue
    .line 447
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    return-object v0
.end method

.method public finish()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType()Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8Validation(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/WireFormat$Utf8Validation;
    .locals 1
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 536
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    .line 544
    :goto_0
    return-object v0

    .line 540
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    instance-of v0, v0, Lcom/google/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_1

    .line 542
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LAZY:Lcom/google/protobuf/WireFormat$Utf8Validation;

    goto :goto_0

    .line 544
    :cond_1
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    goto :goto_0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    return v0
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v0

    return v0
.end method

.method public newMergeTargetForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "defaultInstance"    # Lcom/google/protobuf/Message;

    .prologue
    .line 526
    if-eqz p2, :cond_0

    .line 527
    new-instance v0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;

    .line 528
    invoke-interface {p2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 530
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;

    iget-object v1, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0
.end method

.method public parseGroup(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p4, "defaultInstance"    # Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    if-eqz p4, :cond_1

    .line 461
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    .line 465
    .local v1, "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    .line 467
    .local v0, "originalMessage":Lcom/google/protobuf/Message;
    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v1, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 471
    .end local v0    # "originalMessage":Lcom/google/protobuf/Message;
    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v2

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 472
    invoke-interface {v1}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v2

    return-object v2

    .line 463
    .end local v1    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v2, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    .restart local v1    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    goto :goto_0
.end method

.method public parseMessage(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p4, "defaultInstance"    # Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    if-eqz p4, :cond_1

    .line 485
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    .line 489
    .local v1, "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    .line 491
    .local v0, "originalMessage":Lcom/google/protobuf/Message;
    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v1, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 495
    .end local v0    # "originalMessage":Lcom/google/protobuf/Message;
    :cond_0
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 496
    invoke-interface {v1}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v2

    return-object v2

    .line 487
    .end local v1    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v2, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    .restart local v1    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    goto :goto_0
.end method

.method public parseMessageFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Ljava/lang/Object;
    .locals 3
    .param p1, "bytes"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p4, "defaultInstance"    # Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    if-eqz p4, :cond_1

    .line 509
    invoke-interface {p4}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    .line 513
    .local v1, "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    invoke-virtual {p0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    .line 515
    .local v0, "originalMessage":Lcom/google/protobuf/Message;
    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v1, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 519
    .end local v0    # "originalMessage":Lcom/google/protobuf/Message;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;

    .line 520
    invoke-interface {v1}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v2

    return-object v2

    .line 511
    .end local v1    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v2, p3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v1

    .restart local v1    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    goto :goto_0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 395
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;->builder:Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Message$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 408
    return-object p0
.end method
