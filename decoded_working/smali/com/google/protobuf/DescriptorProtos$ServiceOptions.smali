.class public final Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
.super Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$ServiceOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x21

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deprecated_:Z

.field private memoizedIsInitialized:B

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28960
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .line 28968
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    .line 28180
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 28022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 28023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 28024
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
    const/4 v7, 0x2

    .line 28035
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    .line 28036
    const/4 v2, 0x0

    .line 28038
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 28040
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 28041
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 28042
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 28043
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 28048
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 28050
    const/4 v0, 0x1

    goto :goto_0

    .line 28045
    :sswitch_0
    const/4 v0, 0x1

    .line 28046
    goto :goto_0

    .line 28055
    :sswitch_1
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    .line 28056
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28070
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 28071
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28076
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_1

    .line 28077
    iget-object v6, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 28079
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28080
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->makeExtensionsImmutable()V

    throw v5

    .line 28060
    .restart local v3    # "tag":I
    :sswitch_2
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_2

    .line 28061
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 28062
    or-int/lit8 v2, v2, 0x2

    .line 28064
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v6, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 28065
    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    .line 28064
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 28072
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 28073
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 28074
    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28076
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_4

    .line 28077
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 28079
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 28080
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->makeExtensionsImmutable()V

    .line 28082
    return-void

    .line 28043
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x108 -> :sswitch_1
        0x1f3a -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/DescriptorProtos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28012
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 28019
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;, "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$ServiceOptions;*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    .line 28180
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 28020
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .param p2, "x1"    # Lcom/google/protobuf/DescriptorProtos$1;

    .prologue
    .line 28012
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$20902(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 28012
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$21000(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .prologue
    .line 28012
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$21002(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28012
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .param p1, "x1"    # I

    .prologue
    .line 28012
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 28964
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 28085
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 28342
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .prologue
    .line 28345
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28316
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28317
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28323
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28324
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28284
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28290
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28329
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28330
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28336
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28337
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28304
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28305
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28311
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 28312
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28294
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28300
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28978
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28237
    if-ne p1, p0, :cond_0

    .line 28256
    :goto_0
    return v2

    .line 28240
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    if-nez v4, :cond_1

    .line 28241
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 28243
    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .line 28245
    .local v0, "other":Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    const/4 v1, 0x1

    .line 28246
    .local v1, "result":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v5

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 28247
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28248
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v4

    .line 28249
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 28251
    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    .line 28252
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 28253
    :goto_3
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 28254
    :goto_4
    if-eqz v1, :cond_7

    .line 28255
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    :goto_5
    move v2, v1

    .line 28256
    goto :goto_0

    :cond_3
    move v1, v3

    .line 28246
    goto :goto_1

    :cond_4
    move v1, v3

    .line 28249
    goto :goto_2

    :cond_5
    move v1, v3

    .line 28252
    goto :goto_3

    :cond_6
    move v1, v3

    .line 28253
    goto :goto_4

    :cond_7
    move v1, v3

    .line 28255
    goto :goto_5
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 28987
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 28122
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28983
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 28216
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSize:I

    .line 28217
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 28231
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 28219
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 28220
    iget v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 28221
    const/16 v3, 0x21

    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    .line 28222
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 28224
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 28225
    const/16 v4, 0x3e7

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 28226
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28228
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 28229
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 28230
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedSize:I

    move v2, v1

    .line 28231
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 28166
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 28156
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28135
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 28177
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28146
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 28029
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 28109
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 28261
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 28262
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedHashCode:I

    .line 28278
    :goto_0
    return v0

    .line 28264
    :cond_0
    const/16 v0, 0x29

    .line 28265
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 28266
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->hasDeprecated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28267
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x21

    .line 28268
    mul-int/lit8 v1, v0, 0x35

    .line 28269
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getDeprecated()Z

    move-result v2

    .line 28268
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 28271
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 28272
    mul-int/lit8 v1, v0, 0x25

    add-int/lit16 v0, v1, 0x3e7

    .line 28273
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 28275
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    .line 28276
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 28277
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedHashCode:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 28090
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    .line 28091
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28182
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    .line 28183
    .local v1, "isInitialized":B
    if-ne v1, v2, :cond_0

    .line 28197
    :goto_0
    return v2

    .line 28184
    :cond_0
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 28186
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 28187
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 28188
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 28189
    goto :goto_0

    .line 28186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28192
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 28193
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 28194
    goto :goto_0

    .line 28196
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 28340
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 28355
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 28356
    .local v0, "builder":Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28348
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 28349
    :goto_0
    return-object v0

    .line 28348
    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 28349
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28012
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

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
    .line 28204
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 28205
    .local v0, "extensionWriter":Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;, "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$ServiceOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 28206
    const/16 v2, 0x21

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28208
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28209
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28211
    :cond_1
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 28212
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 28213
    return-void
.end method
