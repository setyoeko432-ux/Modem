.class public final Lcom/google/protobuf/BoolValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "BoolValue.java"

# interfaces
.implements Lcom/google/protobuf/BoolValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BoolValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/protobuf/BoolValue$Builder;",
        ">;",
        "Lcom/google/protobuf/BoolValueOrBuilder;"
    }
.end annotation


# instance fields
.field private value_:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 257
    invoke-direct {p0}, Lcom/google/protobuf/BoolValue$Builder;->maybeForceBuilderInitialization()V

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BoolValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/BoolValue$1;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/protobuf/BoolValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 263
    invoke-direct {p0}, Lcom/google/protobuf/BoolValue$Builder;->maybeForceBuilderInitialization()V

    .line 264
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/BoolValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/protobuf/BoolValue$1;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BoolValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/BoolValue;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->buildPartial()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    .line 288
    .local v0, "result":Lcom/google/protobuf/BoolValue;
    invoke-virtual {v0}, Lcom/google/protobuf/BoolValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-static {v0}, Lcom/google/protobuf/BoolValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 291
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->build()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->build()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/BoolValue;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/google/protobuf/BoolValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/BoolValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/BoolValue$1;)V

    .line 296
    .local v0, "result":Lcom/google/protobuf/BoolValue;
    iget-boolean v1, p0, Lcom/google/protobuf/BoolValue$Builder;->value_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/BoolValue;->access$302(Lcom/google/protobuf/BoolValue;Z)Z

    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->onBuilt()V

    .line 298
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->buildPartial()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->buildPartial()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clear()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/BoolValue$Builder;
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/BoolValue$Builder;->value_:Z

    .line 274
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clear()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clear()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clear()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/google/protobuf/BoolValue$Builder;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/BoolValue$Builder;->value_:Z

    .line 401
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->onChanged()V

    .line 402
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clone()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clone()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/BoolValue$Builder;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clone()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clone()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clone()Lcom/google/protobuf/BoolValue$Builder;

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
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->clone()Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/BoolValue;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BoolValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/protobuf/BoolValue$Builder;->value_:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BoolValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/BoolValue;

    const-class v2, Lcom/google/protobuf/BoolValue$Builder;

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 346
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
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/BoolValue$Builder;

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
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/BoolValue;

    .prologue
    .line 337
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 342
    :goto_0
    return-object p0

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/google/protobuf/BoolValue;->getValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BoolValue$Builder;->setValue(Z)Lcom/google/protobuf/BoolValue$Builder;

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->onChanged()V

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, "parsedMessage":Lcom/google/protobuf/BoolValue;
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/BoolValue;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/BoolValue;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p0, v2}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$Builder;

    .line 364
    :cond_0
    return-object p0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/BoolValue;

    move-object v2, v0

    .line 358
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 361
    invoke-virtual {p0, v2}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 328
    instance-of v0, p1, Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 329
    check-cast p1, Lcom/google/protobuf/BoolValue;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object p0

    .line 332
    .end local p0    # "this":Lcom/google/protobuf/BoolValue$Builder;
    :goto_0
    return-object p0

    .line 331
    .restart local p0    # "this":Lcom/google/protobuf/BoolValue$Builder;
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
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/BoolValue$Builder;

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
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 411
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BoolValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 320
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BoolValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BoolValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BoolValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 406
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BoolValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BoolValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Z)Lcom/google/protobuf/BoolValue$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/google/protobuf/BoolValue$Builder;->value_:Z

    .line 388
    invoke-virtual {p0}, Lcom/google/protobuf/BoolValue$Builder;->onChanged()V

    .line 389
    return-object p0
.end method
