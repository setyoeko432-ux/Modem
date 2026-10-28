.class public final Lcom/google/protobuf/FloatValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "FloatValue.java"

# interfaces
.implements Lcom/google/protobuf/FloatValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/protobuf/FloatValue$Builder;",
        ">;",
        "Lcom/google/protobuf/FloatValueOrBuilder;"
    }
.end annotation


# instance fields
.field private value_:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 259
    invoke-direct {p0}, Lcom/google/protobuf/FloatValue$Builder;->maybeForceBuilderInitialization()V

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/FloatValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/FloatValue$1;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/FloatValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 265
    invoke-direct {p0}, Lcom/google/protobuf/FloatValue$Builder;->maybeForceBuilderInitialization()V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/FloatValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/protobuf/FloatValue$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/FloatValue;
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->buildPartial()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    .line 290
    .local v0, "result":Lcom/google/protobuf/FloatValue;
    invoke-virtual {v0}, Lcom/google/protobuf/FloatValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-static {v0}, Lcom/google/protobuf/FloatValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 293
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->build()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->build()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/FloatValue;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/google/protobuf/FloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/FloatValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/FloatValue$1;)V

    .line 298
    .local v0, "result":Lcom/google/protobuf/FloatValue;
    iget v1, p0, Lcom/google/protobuf/FloatValue$Builder;->value_:F

    invoke-static {v0, v1}, Lcom/google/protobuf/FloatValue;->access$302(Lcom/google/protobuf/FloatValue;F)F

    .line 299
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->onBuilt()V

    .line 300
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->buildPartial()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->buildPartial()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clear()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/FloatValue$Builder;
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/FloatValue$Builder;->value_:F

    .line 276
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clear()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clear()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clear()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/google/protobuf/FloatValue$Builder;
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/FloatValue$Builder;->value_:F

    .line 403
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->onChanged()V

    .line 404
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clone()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clone()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/FloatValue$Builder;
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clone()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clone()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clone()Lcom/google/protobuf/FloatValue$Builder;

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
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->clone()Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/FloatValue;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/google/protobuf/FloatValue;->getDefaultInstance()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/google/protobuf/FloatValue$Builder;->value_:F

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 252
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/FloatValue;

    const-class v2, Lcom/google/protobuf/FloatValue$Builder;

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v2, 0x0

    .line 357
    .local v2, "parsedMessage":Lcom/google/protobuf/FloatValue;
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/FloatValue;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/FloatValue;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {p0, v2}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;

    .line 366
    :cond_0
    return-object p0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/FloatValue;

    move-object v2, v0

    .line 360
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 363
    invoke-virtual {p0, v2}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/protobuf/FloatValue;

    .prologue
    .line 339
    invoke-static {}, Lcom/google/protobuf/FloatValue;->getDefaultInstance()Lcom/google/protobuf/FloatValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 344
    :goto_0
    return-object p0

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/FloatValue;->getValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/google/protobuf/FloatValue;->getValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/FloatValue$Builder;->setValue(F)Lcom/google/protobuf/FloatValue$Builder;

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->onChanged()V

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 330
    instance-of v0, p1, Lcom/google/protobuf/FloatValue;

    if-eqz v0, :cond_0

    .line 331
    check-cast p1, Lcom/google/protobuf/FloatValue;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/FloatValue;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object p0

    .line 334
    .end local p0    # "this":Lcom/google/protobuf/FloatValue$Builder;
    :goto_0
    return-object p0

    .line 333
    .restart local p0    # "this":Lcom/google/protobuf/FloatValue$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 413
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FloatValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FloatValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/FloatValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/FloatValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 408
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FloatValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(F)Lcom/google/protobuf/FloatValue$Builder;
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 389
    iput p1, p0, Lcom/google/protobuf/FloatValue$Builder;->value_:F

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/FloatValue$Builder;->onChanged()V

    .line 391
    return-object p0
.end method
