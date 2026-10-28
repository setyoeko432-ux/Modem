.class public final Lcom/google/protobuf/compiler/PluginProtos;
.super Ljava/lang/Object;
.source "PluginProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;,
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponseOrBuilder;,
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;,
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4229
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"}\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\"\u00aa\u0001\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a>\n\u0004File\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\tB"

    aput-object v2, v1, v6

    const-string v2, "7\n\u001ccom.google.protobuf.compilerB\u000cPluginProtosZ\tplugin_go"

    aput-object v2, v1, v7

    .line 4243
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$1;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$1;-><init>()V

    .line 4251
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v7, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4254
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v6

    .line 4252
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4257
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4258
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "FileToGenerate"

    aput-object v5, v4, v6

    const-string v5, "Parameter"

    aput-object v5, v4, v7

    const-string v5, "ProtoFile"

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4263
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4264
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Error"

    aput-object v5, v4, v6

    const-string v5, "File"

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4268
    sget-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4269
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4270
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v3, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v6

    const-string v5, "InsertionPoint"

    aput-object v5, v4, v7

    const-string v5, "Content"

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4274
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4275
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->internal_static_google_protobuf_compiler_CodeGeneratorResponse_File_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/google/protobuf/compiler/PluginProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 4224
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/google/protobuf/compiler/PluginProtos;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 10
    return-void
.end method
