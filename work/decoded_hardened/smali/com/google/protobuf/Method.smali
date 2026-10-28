.class public final Lcom/google/protobuf/Method;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Method.java"

# interfaces
.implements Lcom/google/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Method$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_STREAMING_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_TYPE_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_STREAMING_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_TYPE_URL_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

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

.field private requestStreaming_:Z

.field private volatile requestTypeUrl_:Ljava/lang/Object;

.field private responseStreaming_:Z

.field private volatile responseTypeUrl_:Ljava/lang/Object;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1510
    new-instance v0, Lcom/google/protobuf/Method;

    invoke-direct {v0}, Lcom/google/protobuf/Method;-><init>()V

    sput-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    .line 1518
    new-instance v0, Lcom/google/protobuf/Method$1;

    invoke-direct {v0}, Lcom/google/protobuf/Method$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 357
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 24
    iput-boolean v1, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 26
    iput-boolean v1, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 28
    iput v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/Method;-><init>()V

    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 44
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 46
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 51
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :sswitch_0
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 57
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "tag":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v2, 0x20

    if-ne v7, v8, :cond_1

    .line 108
    iget-object v7, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->makeExtensionsImmutable()V

    throw v6

    .line 63
    .restart local v5    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 65
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "tag":I
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 105
    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    goto :goto_0

    .line 74
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 76
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    goto :goto_0

    .line 85
    :sswitch_6
    and-int/lit8 v6, v2, 0x20

    if-eq v6, v8, :cond_2

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 87
    or-int/lit8 v2, v2, 0x20

    .line 89
    :cond_2
    iget-object v6, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 89
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 96
    .local v3, "rawValue":I
    iput v3, p0, Lcom/google/protobuf/Method;->syntax_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 107
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    :cond_3
    and-int/lit8 v6, v2, 0x20

    if-ne v6, v8, :cond_4

    .line 108
    iget-object v6, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->makeExtensionsImmutable()V

    .line 112
    return-void

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Method$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/Method$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Method;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 357
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Method$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/Method$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Method;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Method;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Method;->bitField0_:I

    return p1
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Parser;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Method;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Method;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Method;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Method;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/protobuf/Method;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/Method;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Method;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protobuf/Method;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/Method;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Method;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/Method;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protobuf/Method;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Method;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Method;->syntax_:I

    return v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Method;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Method;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Method;->syntax_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Method;
    .locals 1

    .prologue
    .line 1514
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Method;

    .prologue
    .line 548
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Method$Builder;->mergeFrom(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 520
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 527
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 493
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 533
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 540
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 508
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    .line 515
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 497
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Method;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 503
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1528
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    if-ne p1, p0, :cond_0

    .line 451
    :goto_0
    return v2

    .line 432
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/Method;

    if-nez v4, :cond_1

    .line 433
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 435
    check-cast v0, Lcom/google/protobuf/Method;

    .line 437
    .local v0, "other":Lcom/google/protobuf/Method;
    const/4 v1, 0x1

    .line 438
    .local v1, "result":Z
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 440
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 442
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v4

    .line 443
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 444
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 446
    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v4

    .line 447
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v5

    if-ne v4, v5, :cond_6

    move v1, v2

    .line 448
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 449
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    .line 450
    :goto_6
    if-eqz v1, :cond_8

    iget v4, p0, Lcom/google/protobuf/Method;->syntax_:I

    iget v5, v0, Lcom/google/protobuf/Method;->syntax_:I

    if-ne v4, v5, :cond_8

    move v1, v2

    :goto_7
    move v2, v1

    .line 451
    goto :goto_0

    :cond_2
    move v1, v3

    .line 439
    goto :goto_1

    :cond_3
    move v1, v3

    .line 441
    goto :goto_2

    :cond_4
    move v1, v3

    .line 443
    goto :goto_3

    :cond_5
    move v1, v3

    .line 445
    goto :goto_4

    :cond_6
    move v1, v3

    .line 447
    goto :goto_5

    :cond_7
    move v1, v3

    .line 449
    goto :goto_6

    :cond_8
    move v1, v3

    .line 450
    goto :goto_7
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getDefaultInstanceForType()Lcom/google/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getDefaultInstanceForType()Lcom/google/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Method;
    .locals 1

    .prologue
    .line 1537
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    move-object v1, v2

    .line 144
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

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
    .line 319
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

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
    .line 288
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

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
    .line 299
    iget-object v0, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1533
    sget-object v0, Lcom/google/protobuf/Method;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 179
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 180
    check-cast v1, Ljava/lang/String;

    .line 186
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 182
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 184
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    move-object v1, v2

    .line 186
    goto :goto_0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 199
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 200
    check-cast v1, Ljava/lang/String;

    .line 201
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 203
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 206
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

.method public getResponseStreaming()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 234
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 235
    check-cast v1, Ljava/lang/String;

    .line 241
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 237
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 239
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    move-object v1, v2

    .line 241
    goto :goto_0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 254
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 255
    check-cast v1, Ljava/lang/String;

    .line 256
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 258
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 261
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

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 393
    iget v1, p0, Lcom/google/protobuf/Method;->memoizedSize:I

    .line 394
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 423
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 396
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 401
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 403
    :cond_2
    iget-boolean v3, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    if-eqz v3, :cond_3

    .line 404
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    .line 405
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 408
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 410
    :cond_4
    iget-boolean v3, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    if-eqz v3, :cond_5

    .line 411
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    .line 412
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 414
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 415
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    .line 416
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    :cond_6
    iget v3, p0, Lcom/google/protobuf/Method;->syntax_:I

    sget-object v4, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v4}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 419
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/Method;->syntax_:I

    .line 420
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 422
    :cond_7
    iput v1, p0, Lcom/google/protobuf/Method;->memoizedSize:I

    move v2, v1

    .line 423
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .prologue
    .line 353
    iget v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    invoke-static {v1}, Lcom/google/protobuf/Syntax;->valueOf(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    .line 354
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
    .line 343
    iget v0, p0, Lcom/google/protobuf/Method;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 456
    iget v1, p0, Lcom/google/protobuf/Method;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 457
    iget v0, p0, Lcom/google/protobuf/Method;->memoizedHashCode:I

    .line 481
    :goto_0
    return v0

    .line 459
    :cond_0
    const/16 v0, 0x29

    .line 460
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 461
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 462
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 463
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 464
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 465
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 466
    mul-int/lit8 v1, v0, 0x35

    .line 467
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v2

    .line 466
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 468
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 469
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 470
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 471
    mul-int/lit8 v1, v0, 0x35

    .line 472
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v2

    .line 471
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 473
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 474
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x6

    .line 475
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 477
    :cond_1
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x7

    .line 478
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/Method;->syntax_:I

    add-int v0, v1, v2

    .line 479
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/Method;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 480
    iput v0, p0, Lcom/google/protobuf/Method;->memoizedHashCode:I

    goto/16 :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Method_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Method;

    const-class v2, Lcom/google/protobuf/Method$Builder;

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 359
    iget-byte v0, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    .line 360
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_0

    .line 364
    :goto_0
    return v1

    .line 361
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 363
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Method;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->newBuilderForType()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Method;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->newBuilderForType()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lcom/google/protobuf/Method;->newBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Method$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 558
    new-instance v0, Lcom/google/protobuf/Method$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Method$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Method$1;)V

    .line 559
    .local v0, "builder":Lcom/google/protobuf/Method$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->toBuilder()Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Method$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    sget-object v0, Lcom/google/protobuf/Method;->DEFAULT_INSTANCE:Lcom/google/protobuf/Method;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Method$Builder;-><init>(Lcom/google/protobuf/Method$1;)V

    .line 552
    :goto_0
    return-object v0

    .line 551
    :cond_0
    new-instance v0, Lcom/google/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Method$Builder;-><init>(Lcom/google/protobuf/Method$1;)V

    .line 552
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Method$Builder;->mergeFrom(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Method$Builder;

    move-result-object v0

    goto :goto_0
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
    .line 369
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/Method;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 375
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    if-eqz v1, :cond_2

    .line 376
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protobuf/Method;->requestStreaming_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 381
    :cond_3
    iget-boolean v1, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    if-eqz v1, :cond_4

    .line 382
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/protobuf/Method;->responseStreaming_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 384
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 385
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_5
    iget v1, p0, Lcom/google/protobuf/Method;->syntax_:I

    sget-object v2, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 388
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protobuf/Method;->syntax_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 390
    :cond_6
    return-void
.end method
