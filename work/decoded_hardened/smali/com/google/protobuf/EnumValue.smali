.class public final Lcom/google/protobuf/EnumValue;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "EnumValue.java"

# interfaces
.implements Lcom/google/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/EnumValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/EnumValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1013
    new-instance v0, Lcom/google/protobuf/EnumValue;

    invoke-direct {v0}, Lcom/google/protobuf/EnumValue;-><init>()V

    sput-object v0, Lcom/google/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

    .line 1021
    new-instance v0, Lcom/google/protobuf/EnumValue$1;

    invoke-direct {v0}, Lcom/google/protobuf/EnumValue$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 209
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/EnumValue;->memoizedIsInitialized:B

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/EnumValue;->number_:I

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/EnumValue;-><init>()V

    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 40
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 42
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 47
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :sswitch_0
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "s":Ljava/lang/String;
    iput-object v3, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x4

    if-ne v6, v7, :cond_1

    .line 81
    iget-object v6, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->makeExtensionsImmutable()V

    throw v5

    .line 60
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/protobuf/EnumValue;->number_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 78
    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v7, :cond_2

    .line 65
    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 66
    or-int/lit8 v2, v2, 0x4

    .line 68
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 69
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    .line 68
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 80
    .end local v4    # "tag":I
    :cond_3
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v7, :cond_4

    .line 81
    iget-object v5, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->makeExtensionsImmutable()V

    .line 85
    return-void

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/EnumValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/EnumValue$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/EnumValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    .line 19
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 209
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/EnumValue;->memoizedIsInitialized:B

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/EnumValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/EnumValue$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/EnumValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/EnumValue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/EnumValue;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/EnumValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/EnumValue;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protobuf/EnumValue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/EnumValue;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/EnumValue;->number_:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/protobuf/EnumValue;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/EnumValue;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protobuf/EnumValue;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/EnumValue;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protobuf/EnumValue;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/EnumValue;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/EnumValue;->bitField0_:I

    return p1
.end method

.method static synthetic access$700()Lcom/google/protobuf/Parser;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/EnumValue;
    .locals 1

    .prologue
    .line 1017
    sget-object v0, Lcom/google/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/EnumValue$Builder;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/google/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue;->toBuilder()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/EnumValue;)Lcom/google/protobuf/EnumValue$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/EnumValue;

    .prologue
    .line 357
    sget-object v0, Lcom/google/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue;->toBuilder()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/EnumValue$Builder;->mergeFrom(Lcom/google/protobuf/EnumValue;)Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 329
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 336
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 296
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 342
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 349
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 317
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 324
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    if-ne p1, p0, :cond_0

    .line 270
    :goto_0
    return v2

    .line 258
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/EnumValue;

    if-nez v4, :cond_1

    .line 259
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 261
    check-cast v0, Lcom/google/protobuf/EnumValue;

    .line 263
    .local v0, "other":Lcom/google/protobuf/EnumValue;
    const/4 v1, 0x1

    .line 264
    .local v1, "result":Z
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 266
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getNumber()I

    move-result v4

    .line 267
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue;->getNumber()I

    move-result v5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 268
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 269
    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :goto_3
    move v2, v1

    .line 270
    goto :goto_0

    :cond_2
    move v1, v3

    .line 265
    goto :goto_1

    :cond_3
    move v1, v3

    .line 267
    goto :goto_2

    :cond_4
    move v1, v3

    .line 269
    goto :goto_3
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/EnumValue;
    .locals 1

    .prologue
    .line 1040
    sget-object v0, Lcom/google/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getDefaultInstanceForType()Lcom/google/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getDefaultInstanceForType()Lcom/google/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 110
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 111
    check-cast v1, Ljava/lang/String;

    .line 117
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 113
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 115
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    move-object v1, v2

    .line 117
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 130
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 131
    check-cast v1, Ljava/lang/String;

    .line 132
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 134
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 137
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/protobuf/EnumValue;->number_:I

    return v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/OptionOrBuilder;

    return-object v0
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    sget-object v0, Lcom/google/protobuf/EnumValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 233
    iget v1, p0, Lcom/google/protobuf/EnumValue;->memoizedSize:I

    .line 234
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 249
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 236
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 240
    :cond_1
    iget v3, p0, Lcom/google/protobuf/EnumValue;->number_:I

    if-eqz v3, :cond_2

    .line 241
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/protobuf/EnumValue;->number_:I

    .line 242
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 244
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 245
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 246
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_3
    iput v1, p0, Lcom/google/protobuf/EnumValue;->memoizedSize:I

    move v2, v1

    .line 249
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 275
    iget v1, p0, Lcom/google/protobuf/EnumValue;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 276
    iget v0, p0, Lcom/google/protobuf/EnumValue;->memoizedHashCode:I

    .line 290
    :goto_0
    return v0

    .line 278
    :cond_0
    const/16 v0, 0x29

    .line 279
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 280
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 281
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 282
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 283
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getNumber()I

    move-result v2

    add-int v0, v1, v2

    .line 284
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 285
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 286
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 288
    :cond_1
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/EnumValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 289
    iput v0, p0, Lcom/google/protobuf/EnumValue;->memoizedHashCode:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/EnumValue;

    const-class v2, Lcom/google/protobuf/EnumValue$Builder;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 211
    iget-byte v0, p0, Lcom/google/protobuf/EnumValue;->memoizedIsInitialized:B

    .line 212
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_0

    .line 216
    :goto_0
    return v1

    .line 213
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 215
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/EnumValue;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/EnumValue$Builder;
    .locals 1

    .prologue
    .line 352
    invoke-static {}, Lcom/google/protobuf/EnumValue;->newBuilder()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/EnumValue$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 367
    new-instance v0, Lcom/google/protobuf/EnumValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/EnumValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/EnumValue$1;)V

    .line 368
    .local v0, "builder":Lcom/google/protobuf/EnumValue$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->newBuilderForType()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/EnumValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->newBuilderForType()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/EnumValue$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    sget-object v0, Lcom/google/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/EnumValue;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/EnumValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/EnumValue$Builder;-><init>(Lcom/google/protobuf/EnumValue$1;)V

    .line 361
    :goto_0
    return-object v0

    .line 360
    :cond_0
    new-instance v0, Lcom/google/protobuf/EnumValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/EnumValue$Builder;-><init>(Lcom/google/protobuf/EnumValue$1;)V

    .line 361
    invoke-virtual {v0, p0}, Lcom/google/protobuf/EnumValue$Builder;->mergeFrom(Lcom/google/protobuf/EnumValue;)Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->toBuilder()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->toBuilder()Lcom/google/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/protobuf/EnumValue;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/EnumValue;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 224
    :cond_0
    iget v1, p0, Lcom/google/protobuf/EnumValue;->number_:I

    if-eqz v1, :cond_1

    .line 225
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protobuf/EnumValue;->number_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 227
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 228
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_2
    return-void
.end method
