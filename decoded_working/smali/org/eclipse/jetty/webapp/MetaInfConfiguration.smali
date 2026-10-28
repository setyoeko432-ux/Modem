.class public Lorg/eclipse/jetty/webapp/MetaInfConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "MetaInfConfiguration.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final METAINF_FRAGMENTS:Ljava/lang/String; = "org.eclipse.jetty.webFragments"

.field public static final METAINF_RESOURCES:Ljava/lang/String; = "org.eclipse.jetty.resources"

.field public static final METAINF_TLDS:Ljava/lang/String; = "org.eclipse.jetty.tlds"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public addResource(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 2
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "jar"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    return-void
.end method

.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public postConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 2
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    const-string v0, "org.eclipse.jetty.webFragments"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "org.eclipse.jetty.resources"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "org.eclipse.jetty.tlds"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 9
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "jars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/MetaData;->getOrderedContainerJars()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/MetaData;->getWebInfJars()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    new-instance v5, Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;

    invoke-direct {v5, p0, p1}, Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;-><init>(Lorg/eclipse/jetty/webapp/MetaInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 76
    .local v5, "scanner":Lorg/eclipse/jetty/webapp/JarScanner;
    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/net/URI;

    .line 79
    .local v6, "uris":[Ljava/net/URI;
    const/4 v0, 0x0

    .line 80
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/util/resource/Resource;

    .line 82
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v7

    aput-object v7, v6, v0

    move v0, v1

    .line 83
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 84
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v6, v8}, Lorg/eclipse/jetty/webapp/JarScanner;->scan(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 86
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "uris":[Ljava/net/URI;
    :cond_1
    return-void
.end method

.method protected processEntry(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/net/URI;Ljava/util/jar/JarEntry;)V
    .locals 6
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "jarUri"    # Ljava/net/URI;
    .param p3, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 123
    invoke-virtual {p3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "name":Ljava/lang/String;
    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    :try_start_0
    const-string v3, "META-INF/web-fragment.xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isConfigurationDiscovered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    const-string v3, "org.eclipse.jetty.webFragments"

    invoke-static {p2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URI;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->addResource(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "META-INF/resources/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isConfigurationDiscovered()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    const-string v3, "org.eclipse.jetty.resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/META-INF/resources"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->addResource(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 140
    :cond_3
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "lcname":Ljava/lang/String;
    const-string v3, ".tld"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const-string v3, "org.eclipse.jetty.tlds"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->addResource(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
