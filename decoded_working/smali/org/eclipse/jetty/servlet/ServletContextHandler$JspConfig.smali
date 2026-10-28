.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"

# interfaces
.implements Ljavax/servlet/descriptor/JspConfigDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JspConfig"
.end annotation


# instance fields
.field private _jspPropertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private _taglibs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/descriptor/TaglibDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_taglibs:Ljava/util/List;

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_jspPropertyGroups:Ljava/util/List;

    .line 762
    return-void
.end method


# virtual methods
.method public addJspPropertyGroup(Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;)V
    .locals 1
    .param p1, "g"    # Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;

    .prologue
    .line 787
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_jspPropertyGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method public addTaglibDescriptor(Ljavax/servlet/descriptor/TaglibDescriptor;)V
    .locals 1
    .param p1, "d"    # Ljavax/servlet/descriptor/TaglibDescriptor;

    .prologue
    .line 774
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_taglibs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    return-void
.end method

.method public getJspPropertyGroups()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_jspPropertyGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTaglibs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/descriptor/TaglibDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_taglibs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 792
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 793
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v4, "JspConfigDescriptor: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_taglibs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/descriptor/TaglibDescriptor;

    .line 795
    .local v3, "taglib":Ljavax/servlet/descriptor/TaglibDescriptor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 796
    .end local v3    # "taglib":Ljavax/servlet/descriptor/TaglibDescriptor;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->_jspPropertyGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;

    .line 797
    .local v1, "jpg":Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 798
    .end local v1    # "jpg":Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
