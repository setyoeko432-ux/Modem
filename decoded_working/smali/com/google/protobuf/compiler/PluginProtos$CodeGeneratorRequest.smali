.class public final Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "PluginProtos.java"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeGeneratorRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

.field public static final FILE_TO_GENERATE_FIELD_NUMBER:I = 0x1

.field public static final PARAMETER_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROTO_FILE_FIELD_NUMBER:I = 0xf

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fileToGenerate_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private volatile parameter_:Ljava/lang/Object;

.field private protoFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1617
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .line 1625
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$1;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 490
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    .line 195
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 198
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 209
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>()V

    .line 210
    const/4 v3, 0x0

    .line 212
    .local v3, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 214
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 215
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 216
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 217
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 222
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 224
    const/4 v1, 0x1

    goto :goto_0

    .line 219
    :sswitch_0
    const/4 v1, 0x1

    .line 220
    goto :goto_0

    .line 229
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 230
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    and-int/lit8 v6, v3, 0x1

    if-eq v6, v8, :cond_1

    .line 231
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    .line 232
    or-int/lit8 v3, v3, 0x1

    .line 234
    :cond_1
    iget-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v0}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v4    # "tag":I
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v3, 0x1

    if-ne v7, v8, :cond_2

    .line 261
    iget-object v7, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    .line 263
    :cond_2
    and-int/lit8 v7, v3, 0x4

    if-ne v7, v9, :cond_3

    .line 264
    iget-object v7, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 266
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->makeExtensionsImmutable()V

    throw v6

    .line 238
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 239
    .restart local v0    # "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    .line 240
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v4    # "tag":I
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 258
    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    and-int/lit8 v6, v3, 0x4

    if-eq v6, v9, :cond_4

    .line 245
    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 246
    or-int/lit8 v3, v3, 0x4

    .line 248
    :cond_4
    iget-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    sget-object v7, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 249
    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 248
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 260
    .end local v4    # "tag":I
    :cond_5
    and-int/lit8 v6, v3, 0x1

    if-ne v6, v8, :cond_6

    .line 261
    iget-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    .line 263
    :cond_6
    and-int/lit8 v6, v3, 0x4

    if-ne v6, v9, :cond_7

    .line 264
    iget-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 266
    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->makeExtensionsImmutable()V

    .line 269
    return-void

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x7a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/compiler/PluginProtos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    .line 192
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 490
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/compiler/PluginProtos$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .param p1, "x1"    # Lcom/google/protobuf/LazyStringList;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .param p1, "x1"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    .prologue
    .line 1621
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .prologue
    .line 658
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 630
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 637
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 597
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 603
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 643
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 650
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 618
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 625
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 607
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 613
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1635
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 548
    if-ne p1, p0, :cond_0

    .line 567
    :goto_0
    return v2

    .line 551
    :cond_0
    instance-of v4, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-nez v4, :cond_1

    .line 552
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 554
    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    .line 556
    .local v0, "other":Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    const/4 v1, 0x1

    .line 557
    .local v1, "result":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v4

    .line 558
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 559
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 560
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 561
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 564
    :cond_2
    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileList()Ljava/util/List;

    move-result-object v4

    .line 565
    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 566
    :goto_4
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    :goto_5
    move v2, v1

    .line 567
    goto :goto_0

    :cond_3
    move v1, v3

    .line 558
    goto :goto_1

    :cond_4
    move v1, v3

    .line 559
    goto :goto_2

    :cond_5
    move v1, v3

    .line 562
    goto :goto_3

    :cond_6
    move v1, v3

    .line 565
    goto :goto_4

    :cond_7
    move v1, v3

    .line 566
    goto :goto_5
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    .prologue
    .line 1644
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    return-object v0
.end method

.method public getFileToGenerate(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileToGenerateBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFileToGenerateCount()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getFileToGenerateList()Ljava/util/List;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 357
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 358
    check-cast v1, Ljava/lang/String;

    .line 366
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 360
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 362
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 366
    goto :goto_0
.end method

.method public getParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 379
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 380
    check-cast v1, Ljava/lang/String;

    .line 381
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 383
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    .line 386
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1640
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public getProtoFileCount()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProtoFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method public getProtoFileOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object v0
.end method

.method public getProtoFileOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 521
    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedSize:I

    .line 522
    .local v2, "size":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 542
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 524
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_1
    add-int/2addr v2, v0

    .line 531
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 533
    iget v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 534
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    .line 536
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 537
    const/16 v5, 0xf

    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    .line 538
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 540
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 541
    iput v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedSize:I

    move v3, v2

    .line 542
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasParameter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 346
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

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
    .line 572
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedHashCode:I

    if-eqz v1, :cond_0

    .line 573
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedHashCode:I

    .line 591
    :goto_0
    return v0

    .line 575
    :cond_0
    const/16 v0, 0x29

    .line 576
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 577
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 578
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 579
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 583
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 586
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0xf

    .line 587
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 589
    :cond_3
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 590
    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedHashCode:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 492
    iget-byte v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    .line 493
    .local v1, "isInitialized":B
    if-ne v1, v2, :cond_0

    .line 503
    :goto_0
    return v2

    .line 494
    :cond_0
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 496
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFileCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 497
    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 498
    iput-byte v3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    move v2, v3

    .line 499
    goto :goto_0

    .line 496
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_3
    iput-byte v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 668
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$1;)V

    .line 669
    .local v0, "builder":Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 661
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->DEFAULT_INSTANCE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/google/protobuf/compiler/PluginProtos$1;)V

    .line 662
    :goto_0
    return-object v0

    .line 661
    :cond_0
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/google/protobuf/compiler/PluginProtos$1;)V

    .line 662
    invoke-virtual {v0, p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

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
    const/4 v2, 0x1

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_0
    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 512
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->parameter_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 514
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 515
    const/16 v2, 0xf

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->protoFile_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 518
    return-void
.end method
