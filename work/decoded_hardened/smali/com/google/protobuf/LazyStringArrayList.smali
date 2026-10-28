.class public Lcom/google/protobuf/LazyStringArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;,
        Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/protobuf/LazyStringList;

.field private static final EMPTY_LIST:Lcom/google/protobuf/LazyStringArrayList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    sput-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/google/protobuf/LazyStringArrayList;

    .line 70
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/google/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/google/protobuf/LazyStringArrayList;->makeImmutable()V

    .line 78
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/google/protobuf/LazyStringArrayList;

    sput-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "intialCapacity"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/LazyStringList;)V
    .locals 2
    .param p1, "from"    # Lcom/google/protobuf/LazyStringList;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/protobuf/LazyStringArrayList;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->add(I[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/LazyStringArrayList;ILcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->setAndReturn(ILcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/LazyStringArrayList;ILcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/LazyStringArrayList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->add(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private add(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 156
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 158
    return-void
.end method

.method private add(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # [B

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 162
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 163
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 164
    return-void
.end method

.method private static asByteArray(Ljava/lang/Object;)[B
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 298
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 299
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    .line 303
    :goto_0
    return-object p0

    .line 300
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 301
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 303
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, Lcom/google/protobuf/ByteString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    goto :goto_0
.end method

.method private static asByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 288
    instance-of v0, p0, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 289
    check-cast p0, Lcom/google/protobuf/ByteString;

    .line 293
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 290
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 291
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0

    .line 293
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_0
.end method

.method private static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 278
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    check-cast p0, Ljava/lang/String;

    .line 283
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 280
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 281
    check-cast p0, Lcom/google/protobuf/ByteString;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 283
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static emptyList()Lcom/google/protobuf/LazyStringArrayList;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/google/protobuf/LazyStringArrayList;

    return-object v0
.end method

.method private setAndReturn(ILcom/google/protobuf/ByteString;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 264
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private setAndReturn(I[B)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 274
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 150
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 152
    return-void
.end method

.method public add(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "element"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 223
    return-void
.end method

.method public add([B)V
    .locals 1
    .param p1, "element"    # [B

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 228
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 230
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 180
    instance-of v2, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/google/protobuf/LazyStringList;

    .line 181
    .end local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 183
    .local v1, "ret":Z
    iget v2, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 184
    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "ret":Z
    .restart local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    :cond_0
    move-object v0, p2

    .line 181
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAllByteArray(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 198
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 199
    .local v0, "ret":Z
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 200
    return v0
.end method

.method public addAllByteString(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/protobuf/ByteString;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 190
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 191
    .local v0, "ret":Z
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 192
    return v0
.end method

.method public asByteArrayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;

    invoke-direct {v0, p0}, Lcom/google/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Lcom/google/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public asByteStringList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;

    invoke-direct {v0, p0}, Lcom/google/protobuf/LazyStringArrayList$ByteStringListView;-><init>(Lcom/google/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 214
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 216
    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 115
    iget-object v4, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 117
    check-cast v2, Ljava/lang/String;

    .end local v2    # "o":Ljava/lang/Object;
    move-object v3, v2

    .line 131
    :cond_0
    :goto_0
    return-object v3

    .line 118
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/google/protobuf/ByteString;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 119
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 120
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    check-cast v2, [B

    .end local v2    # "o":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 127
    .local v0, "ba":[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3    # "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    iget-object v4, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v4, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 249
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    .line 251
    .local v0, "b":[B
    if-eq v0, v1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    return-object v0
.end method

.method public getByteString(I)Lcom/google/protobuf/ByteString;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 240
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 241
    .local v0, "b":Lcom/google/protobuf/ByteString;
    if-eq v0, v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    return-object v0
.end method

.method public getRaw(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnmodifiableView()Lcom/google/protobuf/LazyStringList;
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->isModifiable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    move-object p0, v0

    .line 420
    .end local p0    # "this":Lcom/google/protobuf/LazyStringArrayList;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/protobuf/AbstractProtobufList;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isModifiable()Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/protobuf/AbstractProtobufList;->isModifiable()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/LazyStringList;)V
    .locals 5
    .param p1, "other"    # Lcom/google/protobuf/LazyStringList;

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 315
    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, [B

    if-eqz v3, :cond_0

    .line 317
    check-cast v1, [B

    .end local v1    # "o":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 320
    .local v0, "b":[B
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v0    # "b":[B
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/LazyStringArrayList;

    move-result-object v0

    return-object v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/LazyStringArrayList;
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v1, v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 206
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 208
    invoke-static {v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 143
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "o":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public set(ILcom/google/protobuf/ByteString;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "s"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->setAndReturn(ILcom/google/protobuf/ByteString;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public set(I[B)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "s"    # [B

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
