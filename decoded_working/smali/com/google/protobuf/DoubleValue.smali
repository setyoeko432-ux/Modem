.class public final Lcom/google/protobuf/DoubleValue;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "DoubleValue.java"

# interfaces
.implements Lcom/google/protobuf/DoubleValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DoubleValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DoubleValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private value_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/google/protobuf/DoubleValue;

    invoke-direct {v0}, Lcom/google/protobuf/DoubleValue;-><init>()V

    sput-object v0, Lcom/google/protobuf/DoubleValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

    .line 431
    new-instance v0, Lcom/google/protobuf/DoubleValue$1;

    invoke-direct {v0}, Lcom/google/protobuf/DoubleValue$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedIsInitialized:B

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/DoubleValue;-><init>()V

    .line 36
    const/4 v2, 0x0

    .line 38
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 39
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 41
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 46
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :sswitch_0
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/DoubleValue;->value_:D
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->makeExtensionsImmutable()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->makeExtensionsImmutable()V

    .line 66
    return-void

    .line 60
    :catch_1
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 62
    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DoubleValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/DoubleValue$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DoubleValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 92
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedIsInitialized:B

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DoubleValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/DoubleValue$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/protobuf/DoubleValue;D)D
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DoubleValue;
    .param p1, "x1"    # D

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    return-wide p1
.end method

.method static synthetic access$400()Lcom/google/protobuf/Parser;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DoubleValue;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/google/protobuf/DoubleValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_DoubleValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DoubleValue$Builder;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/google/protobuf/DoubleValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

    invoke-virtual {v0}, Lcom/google/protobuf/DoubleValue;->toBuilder()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DoubleValue;)Lcom/google/protobuf/DoubleValue$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DoubleValue;

    .prologue
    .line 220
    sget-object v0, Lcom/google/protobuf/DoubleValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

    invoke-virtual {v0}, Lcom/google/protobuf/DoubleValue;->toBuilder()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DoubleValue$Builder;->mergeFrom(Lcom/google/protobuf/DoubleValue;)Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 192
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 199
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 205
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 212
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 180
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 187
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DoubleValue;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DoubleValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 125
    if-ne p1, p0, :cond_0

    .line 138
    :goto_0
    return v2

    .line 128
    :cond_0
    instance-of v3, p1, Lcom/google/protobuf/DoubleValue;

    if-nez v3, :cond_1

    .line 129
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 131
    check-cast v0, Lcom/google/protobuf/DoubleValue;

    .line 133
    .local v0, "other":Lcom/google/protobuf/DoubleValue;
    const/4 v1, 0x1

    .line 134
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->getValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 137
    invoke-virtual {v0}, Lcom/google/protobuf/DoubleValue;->getValue()D

    move-result-wide v5

    .line 136
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v2

    :goto_1
    move v2, v1

    .line 138
    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DoubleValue;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/google/protobuf/DoubleValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->getDefaultInstanceForType()Lcom/google/protobuf/DoubleValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->getDefaultInstanceForType()Lcom/google/protobuf/DoubleValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DoubleValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lcom/google/protobuf/DoubleValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 110
    iget v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedSize:I

    .line 111
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 119
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 113
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 114
    iget-wide v2, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 115
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    .line 116
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 118
    :cond_1
    iput v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedSize:I

    move v1, v0

    .line 119
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 143
    iget v1, p0, Lcom/google/protobuf/DoubleValue;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 144
    iget v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedHashCode:I

    .line 153
    :goto_0
    return v0

    .line 146
    :cond_0
    const/16 v0, 0x29

    .line 147
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 148
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 149
    mul-int/lit8 v1, v0, 0x35

    .line 150
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 149
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 151
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/DoubleValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 152
    iput v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedHashCode:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_DoubleValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/DoubleValue;

    const-class v2, Lcom/google/protobuf/DoubleValue$Builder;

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-byte v0, p0, Lcom/google/protobuf/DoubleValue;->memoizedIsInitialized:B

    .line 95
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_0

    .line 99
    :goto_0
    return v1

    .line 96
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/DoubleValue;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DoubleValue$Builder;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/google/protobuf/DoubleValue;->newBuilder()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DoubleValue$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 230
    new-instance v0, Lcom/google/protobuf/DoubleValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DoubleValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DoubleValue$1;)V

    .line 231
    .local v0, "builder":Lcom/google/protobuf/DoubleValue$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->newBuilderForType()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->newBuilderForType()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DoubleValue$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    sget-object v0, Lcom/google/protobuf/DoubleValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/DoubleValue;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DoubleValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DoubleValue$Builder;-><init>(Lcom/google/protobuf/DoubleValue$1;)V

    .line 224
    :goto_0
    return-object v0

    .line 223
    :cond_0
    new-instance v0, Lcom/google/protobuf/DoubleValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DoubleValue$Builder;-><init>(Lcom/google/protobuf/DoubleValue$1;)V

    .line 224
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DoubleValue$Builder;->mergeFrom(Lcom/google/protobuf/DoubleValue;)Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->toBuilder()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleValue;->toBuilder()Lcom/google/protobuf/DoubleValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/protobuf/DoubleValue;->value_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 107
    :cond_0
    return-void
.end method
