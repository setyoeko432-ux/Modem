.class public Lorg/eclipse/jetty/servlet/ServletHolder$Registration;
.super Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/ServletRegistration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Registration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Ljavax/servlet/Servlet;",
        ">.HolderRegistration;",
        "Ljavax/servlet/ServletRegistration$Dynamic;"
    }
.end annotation


# instance fields
.field protected _multipartConfig:Ljavax/servlet/MultipartConfigElement;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public varargs addMapping([Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "urlPatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->illegalStateIfContextStarted()V

    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 761
    .local v5, "pattern":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v6, v6, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v4

    .line 762
    .local v4, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    if-eqz v4, :cond_1

    .line 765
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->isDefault()Z

    move-result v6

    if-nez v6, :cond_1

    .line 767
    if-nez v1, :cond_0

    .line 768
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 769
    .restart local v1    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    .end local v4    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v5    # "pattern":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 784
    .end local v1    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-object v1

    .line 779
    .restart local v1    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v4, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 780
    .restart local v4    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 782
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v6, v6, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v6, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 784
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitOrder()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 751
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMappings()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v7, v7, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v4

    .line 790
    .local v4, "mappings":[Lorg/eclipse/jetty/servlet/ServletMapping;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v5, "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 793
    move-object v0, v4

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 795
    .local v3, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 793
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v6

    .line 798
    .local v6, "specs":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 799
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 802
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v6    # "specs":[Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public getMultipartConfig()Ljavax/servlet/MultipartConfigElement;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->_multipartConfig:Ljavax/servlet/MultipartConfigElement;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAsyncSupported(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 751
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setAsyncSupported(Z)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 751
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setInitParameters(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setLoadOnStartup(I)V
    .locals 1
    .param p1, "loadOnStartup"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->illegalStateIfContextStarted()V

    .line 815
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 816
    return-void
.end method

.method public setMultipartConfig(Ljavax/servlet/MultipartConfigElement;)V
    .locals 0
    .param p1, "element"    # Ljavax/servlet/MultipartConfigElement;

    .prologue
    .line 826
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->_multipartConfig:Ljavax/servlet/MultipartConfigElement;

    .line 827
    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 837
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    return-void
.end method

.method public setServletSecurity(Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;
    .locals 1
    .param p1, "securityElement"    # Ljavax/servlet/ServletSecurityElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
