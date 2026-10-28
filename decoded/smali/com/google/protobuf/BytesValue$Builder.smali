.class public final Lcom/google/protobuf/BytesValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "BytesValue.java"

# interfaces
.implements Lcom/google/protobuf/BytesValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BytesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/protobuf/BytesValue$Builder;",
        ">;",
        "Lcom/google/protobuf/BytesValueOrBuilder;"
    }
.end annotation


# instance fields
.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 366
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 256
    invoke-direct {p0}, Lcom/google/protobuf/BytesValue$Builder;->maybeForceBuilderInitialization()V

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BytesValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/BytesValue$1;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/google/protobuf/BytesValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 366
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 262
    invoke-direct {p0}, Lcom/google/protobuf/BytesValue$Builder;->maybeForceBuilderInitialization()V

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/BytesValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/protobuf/BytesValue$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BytesValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 265
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/BytesValue;
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->buildPartial()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    .line 287
    .local v0, "result":Lcom/google/protobuf/BytesValue;
    invoke-virtual {v0}, Lcom/google/protobuf/BytesValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-static {v0}, Lcom/google/protobuf/BytesValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 290
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->build()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->build()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/BytesValue;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/google/protobuf/BytesValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/BytesValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/BytesValue$1;)V

    .line 295
    .local v0, "result":Lcom/google/protobuf/BytesValue;
    iget-object v1, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/protobuf/BytesValue;->access$302(Lcom/google/protobuf/BytesValue;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 296
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->onBuilt()V

    .line 297
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->buildPartial()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->buildPartial()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clear()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/BytesValue$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 271
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 273
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clear()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clear()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clear()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/google/protobuf/BytesValue$Builder;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/google/protobuf/BytesValue;->getDefaultInstance()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/BytesValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 403
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->onChanged()V

    .line 404
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clone()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clone()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/BytesValue$Builder;
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clone()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clone()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clone()Lcom/google/protobuf/BytesValue$Builder;

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
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->clone()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/BytesValue;
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/google/protobuf/BytesValue;->getDefaultInstance()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BytesValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 249
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BytesValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/BytesValue;

    const-class v2, Lcom/google/protobuf/BytesValue$Builder;

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 345
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
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/BytesValue$Builder;

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
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/protobuf/BytesValue;

    .prologue
    .line 336
    invoke-static {}, Lcom/google/protobuf/BytesValue;->getDefaultInstance()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 341
    :goto_0
    return-object p0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/BytesValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/google/protobuf/BytesValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BytesValue$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/BytesValue$Builder;

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->onChanged()V

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 354
    .local v2, "parsedMessage":Lcom/google/protobuf/BytesValue;
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/BytesValue;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/BytesValue;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0, v2}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;

    .line 363
    :cond_0
    return-object p0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/BytesValue;

    move-object v2, v0

    .line 357
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 360
    invoke-virtual {p0, v2}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 327
    instance-of v0, p1, Lcom/google/protobuf/BytesValue;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lcom/google/protobuf/BytesValue;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object p0

    .line 331
    .end local p0    # "this":Lcom/google/protobuf/BytesValue$Builder;
    :goto_0
    return-object p0

    .line 330
    .restart local p0    # "this":Lcom/google/protobuf/BytesValue$Builder;
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
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/BytesValue$Builder;

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
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 413
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 306
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BytesValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 319
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BytesValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BytesValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 408
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/BytesValue$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue$Builder;->onChanged()V

    .line 391
    return-object p0
.end method
