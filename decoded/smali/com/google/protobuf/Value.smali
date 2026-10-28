.class public final Lcom/google/protobuf/Value;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Value.java"

# interfaces
.implements Lcom/google/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Value$Builder;,
        Lcom/google/protobuf/Value$KindCase;
    }
.end annotation


# static fields
.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

.field public static final LIST_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_VALUE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x3

.field public static final STRUCT_VALUE_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1379
    new-instance v0, Lcom/google/protobuf/Value;

    invoke-direct {v0}, Lcom/google/protobuf/Value;-><init>()V

    sput-object v0, Lcom/google/protobuf/Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

    .line 1387
    new-instance v0, Lcom/google/protobuf/Value$1;

    invoke-direct {v0}, Lcom/google/protobuf/Value$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    .line 339
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Value;->memoizedIsInitialized:B

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
    const/4 v10, 0x6

    const/4 v9, 0x5

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/Value;-><init>()V

    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 41
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 55
    .local v3, "rawValue":I
    const/4 v7, 0x1

    iput v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    .end local v3    # "rawValue":I
    .end local v6    # "tag":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->makeExtensionsImmutable()V

    throw v7

    .line 60
    .restart local v6    # "tag":I
    :sswitch_2
    const/4 v7, 0x2

    :try_start_2
    iput v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    .line 61
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    .end local v6    # "tag":I
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 109
    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "s":Ljava/lang/String;
    const/4 v7, 0x3

    iput v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    .line 67
    iput-object v4, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 71
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_4
    const/4 v7, 0x4

    iput v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    .line 72
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_0

    .line 76
    :sswitch_5
    const/4 v5, 0x0

    .line 77
    .local v5, "subBuilder":Lcom/google/protobuf/Struct$Builder;
    iget v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v7, v9, :cond_1

    .line 78
    iget-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/Struct;

    invoke-virtual {v7}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$Builder;

    move-result-object v5

    .line 81
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 82
    if-eqz v5, :cond_2

    .line 83
    iget-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/Struct;

    invoke-virtual {v5, v7}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    .line 84
    invoke-virtual {v5}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/Struct;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 86
    :cond_2
    const/4 v7, 0x5

    iput v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    goto/16 :goto_0

    .line 90
    .end local v5    # "subBuilder":Lcom/google/protobuf/Struct$Builder;
    :sswitch_6
    const/4 v5, 0x0

    .line 91
    .local v5, "subBuilder":Lcom/google/protobuf/ListValue$Builder;
    iget v7, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v7, v10, :cond_3

    .line 92
    iget-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/ListValue;

    invoke-virtual {v7}, Lcom/google/protobuf/ListValue;->toBuilder()Lcom/google/protobuf/ListValue$Builder;

    move-result-object v5

    .line 95
    :cond_3
    invoke-static {}, Lcom/google/protobuf/ListValue;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 96
    if-eqz v5, :cond_4

    .line 97
    iget-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v7, Lcom/google/protobuf/ListValue;

    invoke-virtual {v5, v7}, Lcom/google/protobuf/ListValue$Builder;->mergeFrom(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/ListValue$Builder;

    .line 98
    invoke-virtual {v5}, Lcom/google/protobuf/ListValue$Builder;->buildPartial()Lcom/google/protobuf/ListValue;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 100
    :cond_4
    const/4 v7, 0x6

    iput v7, p0, Lcom/google/protobuf/Value;->kindCase_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 111
    .end local v5    # "subBuilder":Lcom/google/protobuf/ListValue$Builder;
    .end local v6    # "tag":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->makeExtensionsImmutable()V

    .line 113
    return-void

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Value$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/Value$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Value;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    .line 23
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    .line 339
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Value;->memoizedIsInitialized:B

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Value$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/Value$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/protobuf/Value;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/Value;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Value;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Value;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protobuf/Value;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Value;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/google/protobuf/Value;->kindCase_:I

    return p1
.end method

.method static synthetic access$500()Lcom/google/protobuf/Parser;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Value;
    .locals 1

    .prologue
    .line 1383
    sget-object v0, Lcom/google/protobuf/Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Value$Builder;
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lcom/google/protobuf/Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/protobuf/Value;->toBuilder()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Value;

    .prologue
    .line 561
    sget-object v0, Lcom/google/protobuf/Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/protobuf/Value;->toBuilder()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 533
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 540
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 500
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 506
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 546
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 553
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 521
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 528
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Value;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 516
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 410
    if-ne p1, p0, :cond_0

    .line 452
    :goto_0
    return v2

    .line 413
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/Value;

    if-nez v4, :cond_1

    .line 414
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 416
    check-cast v0, Lcom/google/protobuf/Value;

    .line 418
    .local v0, "other":Lcom/google/protobuf/Value;
    const/4 v1, 0x1

    .line 419
    .local v1, "result":Z
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getKindCase()Lcom/google/protobuf/Value$KindCase;

    move-result-object v4

    .line 420
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getKindCase()Lcom/google/protobuf/Value$KindCase;

    move-result-object v5

    .line 419
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Value$KindCase;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 421
    :goto_1
    if-nez v1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v3

    .line 419
    goto :goto_1

    .line 422
    :cond_3
    iget v4, p0, Lcom/google/protobuf/Value;->kindCase_:I

    packed-switch v4, :pswitch_data_0

    :goto_2
    move v2, v1

    .line 452
    goto :goto_0

    .line 424
    :pswitch_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getNullValueValue()I

    move-result v4

    .line 425
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getNullValueValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 426
    :goto_3
    goto :goto_2

    :cond_4
    move v1, v3

    .line 425
    goto :goto_3

    .line 428
    :pswitch_1
    if-eqz v1, :cond_5

    .line 429
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getNumberValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 431
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getNumberValue()D

    move-result-wide v6

    .line 430
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    move v1, v2

    .line 432
    :goto_4
    goto :goto_2

    :cond_5
    move v1, v3

    .line 430
    goto :goto_4

    .line 434
    :pswitch_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 436
    :goto_5
    goto :goto_2

    :cond_6
    move v1, v3

    .line 435
    goto :goto_5

    .line 438
    :pswitch_3
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getBoolValue()Z

    move-result v4

    .line 439
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getBoolValue()Z

    move-result v5

    if-ne v4, v5, :cond_7

    move v1, v2

    .line 440
    :goto_6
    goto :goto_2

    :cond_7
    move v1, v3

    .line 439
    goto :goto_6

    .line 442
    :pswitch_4
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object v4

    .line 443
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    .line 444
    :goto_7
    goto :goto_2

    :cond_8
    move v1, v3

    .line 443
    goto :goto_7

    .line 446
    :pswitch_5
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object v4

    .line 447
    invoke-virtual {v0}, Lcom/google/protobuf/Value;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ListValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v2

    .line 448
    :goto_8
    goto :goto_2

    :cond_9
    move v1, v3

    .line 447
    goto :goto_8

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getBoolValue()Z
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getDefaultInstanceForType()Lcom/google/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getDefaultInstanceForType()Lcom/google/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Value;
    .locals 1

    .prologue
    .line 1406
    sget-object v0, Lcom/google/protobuf/Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public getKindCase()Lcom/google/protobuf/Value$KindCase;
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    invoke-static {v0}, Lcom/google/protobuf/Value$KindCase;->forNumber(I)Lcom/google/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Lcom/google/protobuf/ListValue;
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ListValue;

    .line 323
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object v0

    goto :goto_0
.end method

.method public getListValueOrBuilder()Lcom/google/protobuf/ListValueOrBuilder;
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ListValue;

    .line 336
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/ListValue;->getDefaultInstance()Lcom/google/protobuf/ListValue;

    move-result-object v0

    goto :goto_0
.end method

.method public getNullValue()Lcom/google/protobuf/NullValue;
    .locals 3

    .prologue
    .line 194
    iget v1, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    invoke-static {v1}, Lcom/google/protobuf/NullValue;->valueOf(I)Lcom/google/protobuf/NullValue;

    move-result-object v0

    .line 197
    .local v0, "result":Lcom/google/protobuf/NullValue;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/NullValue;->UNRECOGNIZED:Lcom/google/protobuf/NullValue;

    .line 199
    .end local v0    # "result":Lcom/google/protobuf/NullValue;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    goto :goto_0
.end method

.method public getNullValueValue()I
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberValue()D
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 214
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1402
    sget-object v0, Lcom/google/protobuf/Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 374
    iget v0, p0, Lcom/google/protobuf/Value;->memoizedSize:I

    .line 375
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 404
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 377
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 378
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v3, :cond_1

    .line 379
    iget-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 380
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 382
    :cond_1
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v4, :cond_2

    .line 383
    iget-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    .line 385
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 384
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 387
    :cond_2
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v5, :cond_3

    .line 388
    iget-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    invoke-static {v5, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 390
    :cond_3
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v6, :cond_4

    .line 391
    iget-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 392
    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 395
    :cond_4
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v7, :cond_5

    .line 396
    iget-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Struct;

    .line 397
    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 399
    :cond_5
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 400
    const/4 v3, 0x6

    iget-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/ListValue;

    .line 401
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 403
    :cond_6
    iput v0, p0, Lcom/google/protobuf/Value;->memoizedSize:I

    move v1, v0

    .line 404
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 226
    const-string v1, ""

    .line 227
    .local v1, "ref":Ljava/lang/String;
    iget v3, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v3, v4, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 230
    .end local v1    # "ref":Ljava/lang/String;
    :cond_0
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 231
    check-cast v1, Ljava/lang/String;

    .line 239
    :goto_0
    return-object v1

    :cond_1
    move-object v0, v1

    .line 233
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 235
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "s":Ljava/lang/String;
    iget v3, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v3, v4, :cond_2

    .line 237
    iput-object v2, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    :cond_2
    move-object v1, v2

    .line 239
    goto :goto_0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 251
    const-string v1, ""

    .line 252
    .local v1, "ref":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v3, :cond_0

    .line 253
    iget-object v1, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 255
    .end local v1    # "ref":Ljava/lang/String;
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 256
    check-cast v1, Ljava/lang/String;

    .line 257
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 259
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v2, v3, :cond_1

    .line 260
    iput-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 264
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    check-cast v1, Lcom/google/protobuf/ByteString;

    move-object v0, v1

    goto :goto_0
.end method

.method public getStructValue()Lcom/google/protobuf/Struct;
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    goto :goto_0
.end method

.method public getStructValueOrBuilder()Lcom/google/protobuf/StructOrBuilder;
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 457
    iget v1, p0, Lcom/google/protobuf/Value;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 458
    iget v0, p0, Lcom/google/protobuf/Value;->memoizedHashCode:I

    .line 494
    :goto_0
    return v0

    .line 460
    :cond_0
    const/16 v0, 0x29

    .line 461
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 462
    iget v1, p0, Lcom/google/protobuf/Value;->kindCase_:I

    packed-switch v1, :pswitch_data_0

    .line 492
    :goto_1
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/Value;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 493
    iput v0, p0, Lcom/google/protobuf/Value;->memoizedHashCode:I

    goto :goto_0

    .line 464
    :pswitch_0
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 465
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getNullValueValue()I

    move-result v2

    add-int v0, v1, v2

    .line 466
    goto :goto_1

    .line 468
    :pswitch_1
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 469
    mul-int/lit8 v1, v0, 0x35

    .line 470
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getNumberValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 469
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 471
    goto :goto_1

    .line 473
    :pswitch_2
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 474
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 475
    goto :goto_1

    .line 477
    :pswitch_3
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 478
    mul-int/lit8 v1, v0, 0x35

    .line 479
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getBoolValue()Z

    move-result v2

    .line 478
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 480
    goto :goto_1

    .line 482
    :pswitch_4
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 483
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 484
    goto :goto_1

    .line 486
    :pswitch_5
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x6

    .line 487
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Value;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ListValue;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 488
    goto :goto_1

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/google/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Value;

    const-class v2, Lcom/google/protobuf/Value$Builder;

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 341
    iget-byte v0, p0, Lcom/google/protobuf/Value;->memoizedIsInitialized:B

    .line 342
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_0

    .line 346
    :goto_0
    return v1

    .line 343
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 345
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Value;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->newBuilderForType()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Value;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->newBuilderForType()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Value$Builder;
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/google/protobuf/Value;->newBuilder()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Value$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 571
    new-instance v0, Lcom/google/protobuf/Value$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Value$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Value$1;)V

    .line 572
    .local v0, "builder":Lcom/google/protobuf/Value$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->toBuilder()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/Value;->toBuilder()Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Value$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 564
    sget-object v0, Lcom/google/protobuf/Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Value;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Value$Builder;-><init>(Lcom/google/protobuf/Value$1;)V

    .line 565
    :goto_0
    return-object v0

    .line 564
    :cond_0
    new-instance v0, Lcom/google/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Value$Builder;-><init>(Lcom/google/protobuf/Value$1;)V

    .line 565
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Value$Builder;->mergeFrom(Lcom/google/protobuf/Value;)Lcom/google/protobuf/Value$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 351
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 354
    :cond_0
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v0, v2, :cond_1

    .line 355
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 355
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 358
    :cond_1
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v0, v3, :cond_2

    .line 359
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    invoke-static {p1, v3, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 361
    :cond_2
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v0, v4, :cond_3

    .line 362
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 363
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 362
    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 365
    :cond_3
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    if-ne v0, v5, :cond_4

    .line 366
    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Struct;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 368
    :cond_4
    iget v0, p0, Lcom/google/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 369
    const/4 v1, 0x6

    iget-object v0, p0, Lcom/google/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ListValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 371
    :cond_5
    return-void
.end method
