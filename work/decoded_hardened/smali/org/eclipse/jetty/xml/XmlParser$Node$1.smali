.class Lorg/eclipse/jetty/xml/XmlParser$Node$1;
.super Ljava/lang/Object;
.source "XmlParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/eclipse/jetty/xml/XmlParser$Node;",
        ">;"
    }
.end annotation


# instance fields
.field _node:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field c:I

.field final synthetic this$0:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/xml/XmlParser$Node;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 770
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->this$0:Lorg/eclipse/jetty/xml/XmlParser$Node;

    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 777
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->_node:Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v3, :cond_1

    .line 793
    :goto_0
    return v2

    .line 791
    .local v1, "o":Ljava/lang/Object;
    :cond_0
    iget v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    .line 779
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->this$0:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-static {v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->access$700(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->this$0:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-static {v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->access$700(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 781
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->this$0:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-static {v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->access$700(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 782
    .restart local v1    # "o":Ljava/lang/Object;
    instance-of v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 784
    check-cast v0, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 785
    .local v0, "n":Lorg/eclipse/jetty/xml/XmlParser$Node;
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->val$tag:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->access$800(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->_node:Lorg/eclipse/jetty/xml/XmlParser$Node;

    goto :goto_0

    .line 793
    .end local v0    # "n":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->next()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 801
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->_node:Lorg/eclipse/jetty/xml/XmlParser$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->_node:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 808
    iget v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    return-object v0

    .line 803
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->_node:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 808
    iget v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/xml/XmlParser$Node$1;->c:I

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
