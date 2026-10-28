.class public Lorg/eclipse/jetty/servlet/FilterHolder$Registration;
.super Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.source "FilterHolder.java"

# interfaces
.implements Ljavax/servlet/FilterRegistration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/FilterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Registration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Ljavax/servlet/Filter;",
        ">.HolderRegistration;",
        "Ljavax/servlet/FilterRegistration$Dynamic;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/FilterHolder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public varargs addMappingForServletNames(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .locals 2
    .param p2, "isMatchAfter"    # Z
    .param p3, "servletNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/DispatcherType;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "dispatcherTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/servlet/DispatcherType;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->illegalStateIfContextStarted()V

    .line 195
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 196
    .local v0, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 197
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 199
    if-eqz p2, :cond_0

    .line 200
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0
.end method

.method public varargs addMappingForUrlPatterns(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .locals 2
    .param p2, "isMatchAfter"    # Z
    .param p3, "urlPatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/DispatcherType;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "dispatcherTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/servlet/DispatcherType;>;"
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->illegalStateIfContextStarted()V

    .line 208
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 209
    .local v0, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 210
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 212
    if-eqz p2, :cond_0

    .line 213
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0
.end method

.method public getServletNameMappings()Ljava/util/Collection;
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
    .line 220
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v7, v7, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v4

    .line 221
    .local v4, "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/FilterMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 224
    .local v3, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eq v7, v8, :cond_1

    .line 222
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "servlets":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 228
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 230
    .end local v3    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v6    # "servlets":[Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public getUrlPatternMappings()Ljava/util/Collection;
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
    .line 235
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v7, v7, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v4

    .line 236
    .local v4, "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v5, "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/FilterMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 239
    .local v3, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eq v7, v8, :cond_0

    .line 237
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "specs":[Ljava/lang/String;
    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 244
    .end local v3    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v6    # "specs":[Ljava/lang/String;
    :cond_1
    return-object v5
.end method
