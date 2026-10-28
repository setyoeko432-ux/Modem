.class public Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;
.super Ljava/lang/Object;
.source "TagLibConfiguration.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/TagLibConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagLibListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _context:Lorg/eclipse/jetty/webapp/WebAppContext;

.field private _tldListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jetty/webapp/TagLibConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jetty/webapp/TagLibConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->this$0:Lorg/eclipse/jetty/webapp/TagLibConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 92
    return-void
.end method

.method private extractJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p1, "r"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    const/4 v3, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 194
    :goto_0
    return-object v3

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "url":Ljava/lang/String;
    const-string v4, "!/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 185
    .local v1, "idx":I
    if-ltz v1, :cond_1

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 187
    :cond_1
    const-string v4, "jar:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_2
    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 191
    .end local v1    # "idx":I
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private findTldResources()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v6, "tlds":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/util/resource/Resource;>;"
    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 217
    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceAliases()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 221
    .local v4, "location":Ljava/lang/String;
    if-eqz v4, :cond_0

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".tld"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 223
    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/WEB-INF/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    :cond_1
    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 226
    .local v3, "l":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "l":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "location":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    .line 233
    .local v7, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v7, :cond_4

    .line 235
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eqz v0, :cond_4

    array-length v9, v0

    if-ge v1, v9, :cond_4

    .line 238
    aget-object v9, v0, v1

    if-eqz v9, :cond_3

    aget-object v9, v0, v1

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".tld"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 240
    aget-object v9, v0, v1

    invoke-virtual {v7, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 241
    .restart local v3    # "l":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v3    # "l":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    if-eqz v7, :cond_6

    .line 248
    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    const-string v10, "/tlds/"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 249
    .local v8, "web_inf_tlds":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 250
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0    # "contents":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-eqz v0, :cond_6

    array-length v9, v0

    if-ge v1, v9, :cond_6

    .line 253
    aget-object v9, v0, v1

    if-eqz v9, :cond_5

    aget-object v9, v0, v1

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".tld"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 255
    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 256
    .restart local v3    # "l":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v3    # "l":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 266
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v8    # "web_inf_tlds":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    iget-object v9, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    const-string v10, "org.eclipse.jetty.tlds"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 267
    .local v5, "tld_resources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-eqz v5, :cond_7

    .line 268
    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_7
    return-object v6
.end method

.method private parseTlds(Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "tlds":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/util/resource/Resource;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;>;"
    const/4 v5, 0x0

    .line 283
    .local v5, "tld":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 284
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 288
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/eclipse/jetty/util/resource/Resource;

    move-object v5, v0

    .line 289
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TLD="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;

    invoke-direct {v1, v5}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 292
    .local v1, "d":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;
    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->parse()V

    .line 293
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "d":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse TLD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v2
.end method

.method private processTlds(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;>;"
    new-instance v2, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;

    iget-object v3, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->this$0:Lorg/eclipse/jetty/webapp/TagLibConfiguration;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;-><init>(Lorg/eclipse/jetty/webapp/TagLibConfiguration;)V

    .line 312
    .local v2, "processor":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;

    .line 313
    .local v0, "d":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->process(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 315
    .end local v0    # "d":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_tldListeners:Ljava/util/List;

    .line 316
    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 3
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 96
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_tldListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_tldListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 100
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_tldListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;

    .line 101
    .local v1, "l":Ljava/util/EventListener;
    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_2

    .line 102
    check-cast v1, Ljavax/servlet/ServletContextListener;

    .end local v1    # "l":Ljava/util/EventListener;
    invoke-interface {v1, p1}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    .line 99
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 13
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 116
    :try_start_0
    iget-object v11, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v11}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 117
    .local v6, "loader":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v11

    if-nez v11, :cond_3

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 121
    :goto_0
    const-string v11, "org.apache.jasper.compiler.TldLocationsCache"

    invoke-virtual {v6, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v11, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->$assertionsDisabled:Z

    if-nez v11, :cond_4

    if-nez v0, :cond_4

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v11

    invoke-interface {v11, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 149
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->findTldResources()Ljava/util/Set;

    move-result-object v10

    .line 150
    .local v10, "tlds":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-direct {p0, v10}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->parseTlds(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;>;"
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->processTlds(Ljava/util/List;)V

    .line 153
    iget-object v11, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_tldListeners:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v11, :cond_7

    .line 171
    .end local v1    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;>;"
    .end local v10    # "tlds":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_2
    :goto_2
    return-void

    .line 120
    .restart local v6    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    goto :goto_0

    .line 123
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    iget-object v11, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    const-string v12, "org.eclipse.jetty.tlds"

    invoke-virtual {v11, v12}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 125
    .local v9, "tld_resources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/util/resource/Resource;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v8, "tldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v9, :cond_1

    .line 130
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/resource/Resource;

    .line 132
    .local v7, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-direct {p0, v7}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->extractJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 134
    .local v4, "jarResource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 135
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 168
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "jarResource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v8    # "tldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "tld_resources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v11

    invoke-interface {v11, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "loader":Ljava/lang/ClassLoader;
    .restart local v8    # "tldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "tld_resources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v11

    const-string v12, "com.sun.appserv.tld.map"

    invoke-interface {v11, v12, v8}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 159
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "loader":Ljava/lang/ClassLoader;
    .end local v8    # "tldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "tld_resources":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/eclipse/jetty/util/resource/Resource;>;"
    .restart local v1    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;>;"
    .restart local v10    # "tlds":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_7
    :try_start_4
    iget-object v11, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_tldListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    .line 160
    .local v5, "l":Ljava/util/EventListener;
    instance-of v11, v5, Ljavax/servlet/ServletContextListener;

    if-eqz v11, :cond_8

    .line 161
    check-cast v5, Ljavax/servlet/ServletContextListener;

    .end local v5    # "l":Ljava/util/EventListener;
    invoke-interface {v5, p1}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    goto :goto_4

    .line 163
    .restart local v5    # "l":Ljava/util/EventListener;
    :cond_8
    iget-object v11, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;->_context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v11, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4
.end method
