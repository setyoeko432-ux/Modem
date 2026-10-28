.class public final Lcom/google/protobuf/Enum;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Enum.java"

# interfaces
.implements Lcom/google/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Enum$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

.field public static final ENUMVALUE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enumvalue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/EnumValue;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

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

.field private sourceContext_:Lcom/google/protobuf/SourceContext;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1714
    new-instance v0, Lcom/google/protobuf/Enum;

    invoke-direct {v0}, Lcom/google/protobuf/Enum;-><init>()V

    sput-object v0, Lcom/google/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

    .line 1722
    new-instance v0, Lcom/google/protobuf/Enum$1;

    invoke-direct {v0}, Lcom/google/protobuf/Enum$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 335
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Enum;->memoizedIsInitialized:B

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Enum;->syntax_:I

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/Enum;-><init>()V

    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 41
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 42
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 43
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 48
    invoke-virtual {p1, v6}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :sswitch_0
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 54
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "tag":I
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    and-int/lit8 v8, v2, 0x2

    if-ne v8, v9, :cond_1

    .line 105
    iget-object v8, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 107
    :cond_1
    and-int/lit8 v8, v2, 0x4

    if-ne v8, v10, :cond_2

    .line 108
    iget-object v8, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->makeExtensionsImmutable()V

    throw v7

    .line 60
    .restart local v6    # "tag":I
    :sswitch_2
    and-int/lit8 v7, v2, 0x2

    if-eq v7, v9, :cond_3

    .line 61
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 62
    or-int/lit8 v2, v2, 0x2

    .line 64
    :cond_3
    iget-object v7, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 65
    invoke-static {}, Lcom/google/protobuf/EnumValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v8

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    .line 64
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 100
    .end local v6    # "tag":I
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 102
    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "tag":I
    :sswitch_3
    and-int/lit8 v7, v2, 0x4

    if-eq v7, v10, :cond_4

    .line 70
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    .line 71
    or-int/lit8 v2, v2, 0x4

    .line 73
    :cond_4
    iget-object v7, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    .line 74
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v8

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    .line 73
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :sswitch_4
    const/4 v5, 0x0

    .line 79
    .local v5, "subBuilder":Lcom/google/protobuf/SourceContext$Builder;
    iget-object v7, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v7, :cond_5

    .line 80
    iget-object v7, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-virtual {v7}, Lcom/google/protobuf/SourceContext;->toBuilder()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v5

    .line 82
    :cond_5
    invoke-static {}, Lcom/google/protobuf/SourceContext;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/SourceContext;

    iput-object v7, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 83
    if-eqz v5, :cond_0

    .line 84
    iget-object v7, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-virtual {v5, v7}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    .line 85
    invoke-virtual {v5}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto/16 :goto_0

    .line 91
    .end local v5    # "subBuilder":Lcom/google/protobuf/SourceContext$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 93
    .local v3, "rawValue":I
    iput v3, p0, Lcom/google/protobuf/Enum;->syntax_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 104
    .end local v3    # "rawValue":I
    .end local v6    # "tag":I
    :cond_6
    and-int/lit8 v7, v2, 0x2

    if-ne v7, v9, :cond_7

    .line 105
    iget-object v7, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 107
    :cond_7
    and-int/lit8 v7, v2, 0x4

    if-ne v7, v10, :cond_8

    .line 108
    iget-object v7, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    .line 110
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->makeExtensionsImmutable()V

    .line 112
    return-void

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Enum$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/Enum$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Enum;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 335
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Enum;->memoizedIsInitialized:B

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Enum$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/Enum$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Enum;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/Enum;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Enum;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Enum;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Enum;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Enum;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Enum;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Enum;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protobuf/Enum;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Enum;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protobuf/Enum;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Enum;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/protobuf/Enum;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Enum;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protobuf/Enum;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Enum;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Enum;->syntax_:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/Enum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Enum;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Enum;->syntax_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/protobuf/Enum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Enum;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Enum;->bitField0_:I

    return p1
.end method

.method static synthetic access$900()Lcom/google/protobuf/Parser;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Enum;
    .locals 1

    .prologue
    .line 1718
    sget-object v0, Lcom/google/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Enum_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .prologue
    .line 508
    sget-object v0, Lcom/google/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->toBuilder()Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Enum;)Lcom/google/protobuf/Enum$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Enum;

    .prologue
    .line 511
    sget-object v0, Lcom/google/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->toBuilder()Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Enum$Builder;->mergeFrom(Lcom/google/protobuf/Enum;)Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    .line 483
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    .line 490
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 456
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    .line 496
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    .line 503
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    .line 471
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    .line 478
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 460
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Enum;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 466
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1732
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 395
    if-ne p1, p0, :cond_0

    .line 416
    :goto_0
    return v2

    .line 398
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/Enum;

    if-nez v4, :cond_1

    .line 399
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 401
    check-cast v0, Lcom/google/protobuf/Enum;

    .line 403
    .local v0, "other":Lcom/google/protobuf/Enum;
    const/4 v1, 0x1

    .line 404
    .local v1, "result":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 406
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v4

    .line 407
    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 408
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 409
    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 410
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->hasSourceContext()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->hasSourceContext()Z

    move-result v5

    if-ne v4, v5, :cond_6

    move v1, v2

    .line 411
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->hasSourceContext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v4

    .line 413
    invoke-virtual {v0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/SourceContext;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    .line 415
    :cond_2
    :goto_5
    if-eqz v1, :cond_8

    iget v4, p0, Lcom/google/protobuf/Enum;->syntax_:I

    iget v5, v0, Lcom/google/protobuf/Enum;->syntax_:I

    if-ne v4, v5, :cond_8

    move v1, v2

    :goto_6
    move v2, v1

    .line 416
    goto :goto_0

    :cond_3
    move v1, v3

    .line 405
    goto :goto_1

    :cond_4
    move v1, v3

    .line 407
    goto :goto_2

    :cond_5
    move v1, v3

    .line 409
    goto :goto_3

    :cond_6
    move v1, v3

    .line 410
    goto :goto_4

    :cond_7
    move v1, v3

    .line 413
    goto :goto_5

    :cond_8
    move v1, v3

    .line 415
    goto :goto_6
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Enum;
    .locals 1

    .prologue
    .line 1741
    sget-object v0, Lcom/google/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getDefaultInstanceForType()Lcom/google/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getDefaultInstanceForType()Lcom/google/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getEnumvalue(I)Lcom/google/protobuf/EnumValue;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public getEnumvalueCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object v0
.end method

.method public getEnumvalueOrBuilder(I)Lcom/google/protobuf/EnumValueOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/EnumValueOrBuilder;

    return-object v0
.end method

.method public getEnumvalueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 137
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 138
    check-cast v1, Ljava/lang/String;

    .line 144
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 140
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 142
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    move-object v1, v2

    .line 144
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 157
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 158
    check-cast v1, Ljava/lang/String;

    .line 159
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 161
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 164
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

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

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
    .line 233
    iget-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

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
    .line 244
    iget-object v0, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1737
    sget-object v0, Lcom/google/protobuf/Enum;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 365
    iget v1, p0, Lcom/google/protobuf/Enum;->memoizedSize:I

    .line 366
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 389
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 368
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 370
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 372
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 373
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 374
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 377
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    .line 378
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 380
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v3, :cond_4

    .line 381
    const/4 v3, 0x4

    .line 382
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 384
    :cond_4
    iget v3, p0, Lcom/google/protobuf/Enum;->syntax_:I

    sget-object v4, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v4}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 385
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/protobuf/Enum;->syntax_:I

    .line 386
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 388
    :cond_5
    iput v1, p0, Lcom/google/protobuf/Enum;->memoizedSize:I

    move v2, v1

    .line 389
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_0
.end method

.method public getSourceContextOrBuilder()Lcom/google/protobuf/SourceContextOrBuilder;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .prologue
    .line 331
    iget v1, p0, Lcom/google/protobuf/Enum;->syntax_:I

    invoke-static {v1}, Lcom/google/protobuf/Syntax;->valueOf(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    .line 332
    .local v0, "result":Lcom/google/protobuf/Syntax;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/protobuf/Syntax;

    .end local v0    # "result":Lcom/google/protobuf/Syntax;
    :cond_0
    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/google/protobuf/Enum;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 421
    iget v1, p0, Lcom/google/protobuf/Enum;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 422
    iget v0, p0, Lcom/google/protobuf/Enum;->memoizedHashCode:I

    .line 444
    :goto_0
    return v0

    .line 424
    :cond_0
    const/16 v0, 0x29

    .line 425
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 426
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 427
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 428
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getEnumvalueCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 429
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 430
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 433
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 434
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 438
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/SourceContext;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 440
    :cond_3
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 441
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/Enum;->syntax_:I

    add-int v0, v1, v2

    .line 442
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/Enum;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 443
    iput v0, p0, Lcom/google/protobuf/Enum;->memoizedHashCode:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Enum_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Enum;

    const-class v2, Lcom/google/protobuf/Enum$Builder;

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 337
    iget-byte v0, p0, Lcom/google/protobuf/Enum;->memoizedIsInitialized:B

    .line 338
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_0

    .line 342
    :goto_0
    return v1

    .line 339
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 341
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Enum;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Enum$Builder;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/google/protobuf/Enum;->newBuilder()Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Enum$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 521
    new-instance v0, Lcom/google/protobuf/Enum$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Enum$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Enum$1;)V

    .line 522
    .local v0, "builder":Lcom/google/protobuf/Enum$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->newBuilderForType()Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Enum;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->newBuilderForType()Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Enum$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    sget-object v0, Lcom/google/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/google/protobuf/Enum;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Enum$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Enum$Builder;-><init>(Lcom/google/protobuf/Enum$1;)V

    .line 515
    :goto_0
    return-object v0

    .line 514
    :cond_0
    new-instance v0, Lcom/google/protobuf/Enum$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Enum$Builder;-><init>(Lcom/google/protobuf/Enum$1;)V

    .line 515
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Enum$Builder;->mergeFrom(Lcom/google/protobuf/Enum;)Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->toBuilder()Lcom/google/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->toBuilder()Lcom/google/protobuf/Enum$Builder;

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
    .line 347
    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/Enum;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 350
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 351
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 354
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/Enum;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v1, :cond_3

    .line 357
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/protobuf/Enum;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 359
    :cond_3
    iget v1, p0, Lcom/google/protobuf/Enum;->syntax_:I

    sget-object v2, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 360
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protobuf/Enum;->syntax_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 362
    :cond_4
    return-void
.end method
