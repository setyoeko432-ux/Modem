.class public final Lcom/google/protobuf/FieldMask$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "FieldMask.java"

# interfaces
.implements Lcom/google/protobuf/FieldMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/protobuf/FieldMask$Builder;",
        ">;",
        "Lcom/google/protobuf/FieldMaskOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private paths_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 726
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 603
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->maybeForceBuilderInitialization()V

    .line 604
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/FieldMask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/FieldMask$1;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 726
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 609
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->maybeForceBuilderInitialization()V

    .line 610
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/FieldMask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/protobuf/FieldMask$1;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensurePathsIsMutable()V
    .locals 2

    .prologue
    .line 728
    iget v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 729
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 730
    iget v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    .line 732
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/google/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 612
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 615
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPaths(Ljava/lang/Iterable;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/FieldMask$Builder;"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 819
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 821
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    .line 822
    return-object p0
.end method

.method public addPaths(Ljava/lang/String;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 801
    if-nez p1, :cond_0

    .line 802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 805
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    .line 807
    return-object p0
.end method

.method public addPathsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 849
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 850
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 851
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 852
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    .line 853
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 676
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/FieldMask;
    .locals 2

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->buildPartial()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    .line 634
    .local v0, "result":Lcom/google/protobuf/FieldMask;
    invoke-virtual {v0}, Lcom/google/protobuf/FieldMask;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    invoke-static {v0}, Lcom/google/protobuf/FieldMask$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 637
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->build()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->build()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/FieldMask;
    .locals 4

    .prologue
    .line 641
    new-instance v1, Lcom/google/protobuf/FieldMask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/FieldMask;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/FieldMask$1;)V

    .line 642
    .local v1, "result":Lcom/google/protobuf/FieldMask;
    iget v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    .line 643
    .local v0, "from_bitField0_":I
    iget v2, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 644
    iget-object v2, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 645
    iget v2, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v1, v2}, Lcom/google/protobuf/FieldMask;->access$302(Lcom/google/protobuf/FieldMask;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 648
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onBuilt()V

    .line 649
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->buildPartial()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->buildPartial()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clear()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/FieldMask$Builder;
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 618
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 619
    iget v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    .line 620
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clear()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clear()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clear()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 662
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 666
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPaths()Lcom/google/protobuf/FieldMask$Builder;
    .locals 1

    .prologue
    .line 832
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 833
    iget v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    .line 834
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    .line 835
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clone()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clone()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/FieldMask$Builder;
    .locals 1

    .prologue
    .line 653
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clone()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clone()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clone()Lcom/google/protobuf/FieldMask$Builder;

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
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->clone()Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/FieldMask;
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDefaultInstance()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/google/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPaths(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPathsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPathsCount()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getPathsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPathsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->getPathsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .prologue
    .line 596
    sget-object v0, Lcom/google/protobuf/FieldMaskProto;->internal_static_google_protobuf_FieldMask_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/FieldMask;

    const-class v2, Lcom/google/protobuf/FieldMask$Builder;

    .line 597
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 704
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
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/FieldMask$Builder;

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
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    const/4 v2, 0x0

    .line 713
    .local v2, "parsedMessage":Lcom/google/protobuf/FieldMask;
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/FieldMask;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/FieldMask;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {p0, v2}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;

    .line 722
    :cond_0
    return-object p0

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/FieldMask;

    move-object v2, v0

    .line 716
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 719
    invoke-virtual {p0, v2}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/protobuf/FieldMask;

    .prologue
    .line 688
    invoke-static {}, Lcom/google/protobuf/FieldMask;->getDefaultInstance()Lcom/google/protobuf/FieldMask;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 700
    :goto_0
    return-object p0

    .line 689
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    .line 692
    iget v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/FieldMask$Builder;->bitField0_:I

    .line 697
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    goto :goto_0

    .line 694
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 695
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protobuf/FieldMask;->access$300(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 679
    instance-of v0, p1, Lcom/google/protobuf/FieldMask;

    if-eqz v0, :cond_0

    .line 680
    check-cast p1, Lcom/google/protobuf/FieldMask;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/FieldMask;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object p0

    .line 683
    .end local p0    # "this":Lcom/google/protobuf/FieldMask$Builder;
    :goto_0
    return-object p0

    .line 682
    .restart local p0    # "this":Lcom/google/protobuf/FieldMask$Builder;
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
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/FieldMask$Builder;

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
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 862
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 658
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(ILjava/lang/String;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 784
    if-nez p2, :cond_0

    .line 785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 787
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/FieldMask$Builder;->ensurePathsIsMutable()V

    .line 788
    iget-object v0, p0, Lcom/google/protobuf/FieldMask$Builder;->paths_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-virtual {p0}, Lcom/google/protobuf/FieldMask$Builder;->onChanged()V

    .line 790
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 671
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldMask$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/FieldMask$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/FieldMask$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 857
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldMask$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/FieldMask$Builder;

    move-result-object v0

    return-object v0
.end method
