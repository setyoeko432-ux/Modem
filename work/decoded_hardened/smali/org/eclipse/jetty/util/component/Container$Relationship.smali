.class public Lorg/eclipse/jetty/util/component/Container$Relationship;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationship"
.end annotation


# instance fields
.field private final _child:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _container:Lorg/eclipse/jetty/util/component/Container;

.field private final _parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _relationship:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lorg/eclipse/jetty/util/component/Container;
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "child"    # Ljava/lang/Object;
    .param p4, "relationship"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    .line 248
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    .line 249
    iput-object p4, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/Container$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/util/component/Container;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/eclipse/jetty/util/component/Container$1;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/util/component/Container$Relationship;-><init>(Lorg/eclipse/jetty/util/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 287
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/eclipse/jetty/util/component/Container$Relationship;

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 289
    check-cast v0, Lorg/eclipse/jetty/util/component/Container$Relationship;

    .line 290
    .local v0, "r":Lorg/eclipse/jetty/util/component/Container$Relationship;
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getChild()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lorg/eclipse/jetty/util/component/Container;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_container:Lorg/eclipse/jetty/util/component/Container;

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/Container$Relationship;->_child:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
