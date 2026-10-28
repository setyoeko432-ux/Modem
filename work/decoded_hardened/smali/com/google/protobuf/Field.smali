.class public final Lcom/google/protobuf/Field;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Field.java"

# interfaces
.implements Lcom/google/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Field$Builder;,
        Lcom/google/protobuf/Field$Cardinality;,
        Lcom/google/protobuf/Field$Kind;
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0xb

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x7

.field public static final OPTIONS_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private volatile defaultValue_:Ljava/lang/Object;

.field private volatile jsonName_:Ljava/lang/Object;

.field private kind_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

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

.field private packed_:Z

.field private volatile typeUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2419
    new-instance v0, Lcom/google/protobuf/Field;

    invoke-direct {v0}, Lcom/google/protobuf/Field;-><init>()V

    sput-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    .line 2427
    new-instance v0, Lcom/google/protobuf/Field$1;

    invoke-direct {v0}, Lcom/google/protobuf/Field$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 1018
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    .line 22
    iput v1, p0, Lcom/google/protobuf/Field;->kind_:I

    .line 23
    iput v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 24
    iput v1, p0, Lcom/google/protobuf/Field;->number_:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 27
    iput v1, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    .line 28
    iput-boolean v1, p0, Lcom/google/protobuf/Field;->packed_:Z

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 32
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
    const/16 v8, 0x80

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/Field;-><init>()V

    .line 44
    const/4 v2, 0x0

    .line 46
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 47
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 49
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 54
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :sswitch_0
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 60
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 62
    .local v3, "rawValue":I
    iput v3, p0, Lcom/google/protobuf/Field;->kind_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit16 v7, v2, 0x80

    if-ne v7, v8, :cond_1

    .line 128
    iget-object v7, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->makeExtensionsImmutable()V

    throw v6

    .line 66
    .restart local v5    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 68
    .restart local v3    # "rawValue":I
    iput v3, p0, Lcom/google/protobuf/Field;->cardinality_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 125
    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/Field;->number_:I

    goto :goto_0

    .line 77
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 85
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    goto :goto_0

    .line 95
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protobuf/Field;->packed_:Z

    goto :goto_0

    .line 99
    :sswitch_8
    and-int/lit16 v6, v2, 0x80

    if-eq v6, v8, :cond_2

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 101
    or-int/lit16 v2, v2, 0x80

    .line 103
    :cond_2
    iget-object v6, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 104
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 103
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 110
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 114
    .end local v4    # "s":Ljava/lang/String;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 116
    .restart local v4    # "s":Ljava/lang/String;
    iput-object v4, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 127
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "tag":I
    :cond_3
    and-int/lit16 v6, v2, 0x80

    if-ne v6, v8, :cond_4

    .line 128
    iget-object v6, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->makeExtensionsImmutable()V

    .line 132
    return-void

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Field$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/Field$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Field;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1018
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Field$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/Field$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Field;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Field;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->bitField0_:I

    return p1
.end method

.method static synthetic access$1400()Lcom/google/protobuf/Parser;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Field;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Field;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->kind_:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Field;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Field;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protobuf/Field;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->number_:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protobuf/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Field;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/protobuf/Field;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protobuf/Field;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Field;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/google/protobuf/Field;->packed_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Field;
    .locals 1

    .prologue
    .line 2423
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Field$Builder;
    .locals 1

    .prologue
    .line 1236
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Field;

    .prologue
    .line 1239
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1211
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1217
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1218
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1178
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1184
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1223
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1224
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1230
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1231
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1199
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    .line 1206
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1188
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1194
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2437
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1110
    if-ne p1, p0, :cond_0

    .line 1137
    :goto_0
    return v2

    .line 1113
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/Field;

    if-nez v4, :cond_1

    .line 1114
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1116
    check-cast v0, Lcom/google/protobuf/Field;

    .line 1118
    .local v0, "other":Lcom/google/protobuf/Field;
    const/4 v1, 0x1

    .line 1119
    .local v1, "result":Z
    if-eqz v1, :cond_2

    iget v4, p0, Lcom/google/protobuf/Field;->kind_:I

    iget v5, v0, Lcom/google/protobuf/Field;->kind_:I

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 1120
    :goto_1
    if-eqz v1, :cond_3

    iget v4, p0, Lcom/google/protobuf/Field;->cardinality_:I

    iget v5, v0, Lcom/google/protobuf/Field;->cardinality_:I

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 1121
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v4

    .line 1122
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 1123
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1124
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 1125
    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v4

    .line 1126
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 1127
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v4

    .line 1128
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v5

    if-ne v4, v5, :cond_7

    move v1, v2

    .line 1129
    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v4

    .line 1130
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v5

    if-ne v4, v5, :cond_8

    move v1, v2

    .line 1131
    :goto_7
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 1132
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v2

    .line 1133
    :goto_8
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v4

    .line 1134
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    .line 1135
    :goto_9
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    .line 1136
    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :goto_a
    move v2, v1

    .line 1137
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 1119
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 1120
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 1122
    goto :goto_3

    :cond_5
    move v1, v3

    .line 1124
    goto :goto_4

    :cond_6
    move v1, v3

    .line 1126
    goto :goto_5

    :cond_7
    move v1, v3

    .line 1128
    goto :goto_6

    :cond_8
    move v1, v3

    .line 1130
    goto :goto_7

    :cond_9
    move v1, v3

    .line 1132
    goto :goto_8

    :cond_a
    move v1, v3

    .line 1134
    goto :goto_9

    :cond_b
    move v1, v3

    .line 1136
    goto :goto_a
.end method

.method public getCardinality()Lcom/google/protobuf/Field$Cardinality;
    .locals 2

    .prologue
    .line 749
    iget v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    invoke-static {v1}, Lcom/google/protobuf/Field$Cardinality;->valueOf(I)Lcom/google/protobuf/Field$Cardinality;

    move-result-object v0

    .line 750
    .local v0, "result":Lcom/google/protobuf/Field$Cardinality;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/protobuf/Field$Cardinality;

    .end local v0    # "result":Lcom/google/protobuf/Field$Cardinality;
    :cond_0
    return-object v0
.end method

.method public getCardinalityValue()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/google/protobuf/Field;->cardinality_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Field;
    .locals 1

    .prologue
    .line 2446
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultInstanceForType()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultInstanceForType()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 986
    iget-object v1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 987
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 988
    check-cast v1, Ljava/lang/String;

    .line 994
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 990
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 992
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    move-object v1, v2

    .line 994
    goto :goto_0
.end method

.method public getDefaultValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1007
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1008
    check-cast v1, Ljava/lang/String;

    .line 1009
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1011
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1014
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

.method public getJsonName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 944
    iget-object v1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 945
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 946
    check-cast v1, Ljava/lang/String;

    .line 952
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 948
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 950
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    move-object v1, v2

    .line 952
    goto :goto_0
.end method

.method public getJsonNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 964
    iget-object v1, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 965
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 966
    check-cast v1, Ljava/lang/String;

    .line 967
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 969
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 972
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

.method public getKind()Lcom/google/protobuf/Field$Kind;
    .locals 2

    .prologue
    .line 725
    iget v1, p0, Lcom/google/protobuf/Field;->kind_:I

    invoke-static {v1}, Lcom/google/protobuf/Field$Kind;->valueOf(I)Lcom/google/protobuf/Field$Kind;

    move-result-object v0

    .line 726
    .local v0, "result":Lcom/google/protobuf/Field$Kind;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/google/protobuf/Field$Kind;

    .end local v0    # "result":Lcom/google/protobuf/Field$Kind;
    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/google/protobuf/Field;->kind_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 776
    iget-object v1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 777
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 778
    check-cast v1, Ljava/lang/String;

    .line 784
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 780
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 782
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    move-object v1, v2

    .line 784
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 796
    iget-object v1, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 797
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 798
    check-cast v1, Ljava/lang/String;

    .line 799
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 801
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    .line 804
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
    .line 763
    iget v0, p0, Lcom/google/protobuf/Field;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    return v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

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
    .line 889
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

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
    .line 900
    iget-object v0, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/google/protobuf/Field;->packed_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2442
    sget-object v0, Lcom/google/protobuf/Field;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1063
    iget v1, p0, Lcom/google/protobuf/Field;->memoizedSize:I

    .line 1064
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1104
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1066
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1067
    iget v3, p0, Lcom/google/protobuf/Field;->kind_:I

    sget-object v4, Lcom/google/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/google/protobuf/Field$Kind;

    invoke-virtual {v4}, Lcom/google/protobuf/Field$Kind;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1068
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/protobuf/Field;->kind_:I

    .line 1069
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1071
    :cond_1
    iget v3, p0, Lcom/google/protobuf/Field;->cardinality_:I

    sget-object v4, Lcom/google/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/protobuf/Field$Cardinality;

    invoke-virtual {v4}, Lcom/google/protobuf/Field$Cardinality;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1072
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/protobuf/Field;->cardinality_:I

    .line 1073
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1075
    :cond_2
    iget v3, p0, Lcom/google/protobuf/Field;->number_:I

    if-eqz v3, :cond_3

    .line 1076
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protobuf/Field;->number_:I

    .line 1077
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1079
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1080
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1082
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1083
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1085
    :cond_5
    iget v3, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    if-eqz v3, :cond_6

    .line 1086
    const/4 v3, 0x7

    iget v4, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    .line 1087
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1089
    :cond_6
    iget-boolean v3, p0, Lcom/google/protobuf/Field;->packed_:Z

    if-eqz v3, :cond_7

    .line 1090
    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/google/protobuf/Field;->packed_:Z

    .line 1091
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1093
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 1094
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    .line 1095
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1097
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1098
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1100
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1101
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1103
    :cond_a
    iput v1, p0, Lcom/google/protobuf/Field;->memoizedSize:I

    move v2, v1

    .line 1104
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 819
    iget-object v1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 820
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 821
    check-cast v1, Ljava/lang/String;

    .line 827
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 823
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 825
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    move-object v1, v2

    .line 827
    goto :goto_0
.end method

.method public getTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 840
    iget-object v1, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 841
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 842
    check-cast v1, Ljava/lang/String;

    .line 843
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 845
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 848
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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1142
    iget v1, p0, Lcom/google/protobuf/Field;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 1143
    iget v0, p0, Lcom/google/protobuf/Field;->memoizedHashCode:I

    .line 1172
    :goto_0
    return v0

    .line 1145
    :cond_0
    const/16 v0, 0x29

    .line 1146
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 1147
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 1148
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/Field;->kind_:I

    add-int v0, v1, v2

    .line 1149
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 1150
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/Field;->cardinality_:I

    add-int v0, v1, v2

    .line 1151
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 1152
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v2

    add-int v0, v1, v2

    .line 1153
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 1154
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1155
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x6

    .line 1156
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1157
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x7

    .line 1158
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v2

    add-int v0, v1, v2

    .line 1159
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x8

    .line 1160
    mul-int/lit8 v1, v0, 0x35

    .line 1161
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v2

    .line 1160
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int v0, v1, v2

    .line 1162
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1163
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x9

    .line 1164
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1166
    :cond_1
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xa

    .line 1167
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1168
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xb

    .line 1169
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1170
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/Field;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1171
    iput v0, p0, Lcom/google/protobuf/Field;->memoizedHashCode:I

    goto/16 :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Field;

    const-class v2, Lcom/google/protobuf/Field$Builder;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1020
    iget-byte v0, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    .line 1021
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_0

    .line 1025
    :goto_0
    return v1

    .line 1022
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1024
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Field;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Field$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-static {}, Lcom/google/protobuf/Field;->newBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Field$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 1249
    new-instance v0, Lcom/google/protobuf/Field$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Field$1;)V

    .line 1250
    .local v0, "builder":Lcom/google/protobuf/Field$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->newBuilderForType()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->newBuilderForType()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Field$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1242
    sget-object v0, Lcom/google/protobuf/Field;->DEFAULT_INSTANCE:Lcom/google/protobuf/Field;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/Field$1;)V

    .line 1243
    :goto_0
    return-object v0

    .line 1242
    :cond_0
    new-instance v0, Lcom/google/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/Field$1;)V

    .line 1243
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->toBuilder()Lcom/google/protobuf/Field$Builder;

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
    .line 1030
    iget v1, p0, Lcom/google/protobuf/Field;->kind_:I

    sget-object v2, Lcom/google/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/google/protobuf/Field$Kind;

    invoke-virtual {v2}, Lcom/google/protobuf/Field$Kind;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1031
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/protobuf/Field;->kind_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1033
    :cond_0
    iget v1, p0, Lcom/google/protobuf/Field;->cardinality_:I

    sget-object v2, Lcom/google/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/google/protobuf/Field$Cardinality;

    invoke-virtual {v2}, Lcom/google/protobuf/Field$Cardinality;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1034
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protobuf/Field;->cardinality_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1036
    :cond_1
    iget v1, p0, Lcom/google/protobuf/Field;->number_:I

    if-eqz v1, :cond_2

    .line 1037
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protobuf/Field;->number_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1040
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1042
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1043
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1045
    :cond_4
    iget v1, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    if-eqz v1, :cond_5

    .line 1046
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protobuf/Field;->oneofIndex_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1048
    :cond_5
    iget-boolean v1, p0, Lcom/google/protobuf/Field;->packed_:Z

    if-eqz v1, :cond_6

    .line 1049
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/protobuf/Field;->packed_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1051
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1052
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getJsonNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1055
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1057
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Field;->getDefaultValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1058
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1060
    :cond_9
    return-void
.end method
