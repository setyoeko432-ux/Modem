.class Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilderV3.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RepeatedFieldBuilderV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageOrBuilderExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/google/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList",
        "<TIType;>;",
        "Ljava/util/List",
        "<TIType;>;"
    }
.end annotation


# instance fields
.field builder:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/protobuf/RepeatedFieldBuilderV3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3",
            "<TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<TMType;TBType;TIType;>;"
    .local p1, "builder":Lcom/google/protobuf/RepeatedFieldBuilderV3;, "Lcom/google/protobuf/RepeatedFieldBuilderV3<TMType;TBType;TIType;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 691
    iput-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 692
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/protobuf/MessageOrBuilder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 681
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<TMType;TBType;TIType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->get(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    return-object v0
.end method

.method incrementModCount()V
    .locals 1

    .prologue
    .line 705
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<TMType;TBType;TIType;>;"
    iget v0, p0, Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->modCount:I

    .line 706
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 696
    .local p0, "this":Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;, "Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method
