.class public Lorg/eclipse/jetty/webapp/WebInfConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "WebInfConfiguration.java"


# static fields
.field public static final CONTAINER_JAR_PATTERN:Ljava/lang/String; = "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final RESOURCE_URLS:Ljava/lang/String; = "org.eclipse.jetty.resources"

.field public static final TEMPDIR_CONFIGURED:Ljava/lang/String; = "org.eclipse.jetty.tmpdirConfigured"

.field public static final WEBINF_JAR_PATTERN:Ljava/lang/String; = "org.eclipse.jetty.server.webapp.WebInfIncludeJarPattern"


# instance fields
.field protected _preUnpackBaseResource:Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/webapp/WebInfConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    return-void
.end method

.method private asFile(Ljava/lang/Object;)Ljava/io/File;
    .locals 2
    .param p1, "fileattr"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 344
    if-nez p1, :cond_0

    move-object p1, v0

    .line 356
    .end local p1    # "fileattr":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 348
    .restart local p1    # "fileattr":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 350
    check-cast p1, Ljava/io/File;

    goto :goto_0

    .line 352
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 354
    new-instance v0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "fileattr":Ljava/lang/Object;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .restart local p1    # "fileattr":Ljava/lang/Object;
    :cond_2
    move-object p1, v0

    .line 356
    goto :goto_0
.end method

.method public static getCanonicalNameForWebAppTmpDir(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 605
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 606
    .local v1, "canonicalName":Ljava/lang/StringBuffer;
    const-string v12, "jetty-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v9

    .line 610
    .local v9, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v9, :cond_4

    .line 612
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v2

    .line 614
    .local v2, "connectors":[Lorg/eclipse/jetty/server/Connector;
    array-length v12, v2

    if-lez v12, :cond_4

    .line 617
    if-eqz v2, :cond_0

    const/4 v12, 0x0

    aget-object v12, v2, v12

    if-nez v12, :cond_c

    :cond_0
    const-string v5, ""

    .line 618
    .local v5, "host":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    .line 619
    const-string v5, "0.0.0.0"

    .line 620
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    if-eqz v2, :cond_2

    const/4 v12, 0x0

    aget-object v12, v2, v12

    if-nez v12, :cond_d

    :cond_2
    const/4 v7, 0x0

    .line 628
    .local v7, "port":I
    :goto_1
    if-gez v7, :cond_3

    .line 629
    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v12}, Lorg/eclipse/jetty/server/Connector;->getPort()I

    move-result v7

    .line 630
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 631
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    .end local v2    # "connectors":[Lorg/eclipse/jetty/server/Connector;
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 640
    .local v8, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v8, :cond_7

    .line 642
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 643
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 646
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 649
    :cond_7
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 650
    .local v10, "tmp":Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 651
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 652
    :cond_8
    const-string v12, "!"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 653
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 655
    :cond_9
    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 656
    .local v6, "i":I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v6    # "i":I
    .end local v8    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v10    # "tmp":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "contextPath":Ljava/lang/String;
    const/16 v12, 0x2f

    const/16 v13, 0x5f

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 667
    const/16 v12, 0x5c

    const/16 v13, 0x5f

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 668
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    .line 673
    .local v11, "vhosts":[Ljava/lang/String;
    if-eqz v11, :cond_a

    array-length v12, v11

    if-gtz v12, :cond_e

    .line 674
    :cond_a
    const-string v12, "any"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    :goto_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-ge v6, v12, :cond_f

    .line 681
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 682
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "-."

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_b

    .line 683
    const/16 v12, 0x2e

    invoke-virtual {v1, v6, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 679
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 617
    .end local v0    # "c":C
    .end local v3    # "contextPath":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v11    # "vhosts":[Ljava/lang/String;
    .restart local v2    # "connectors":[Lorg/eclipse/jetty/server/Connector;
    :cond_c
    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v12}, Lorg/eclipse/jetty/server/Connector;->getHost()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 625
    .restart local v5    # "host":Ljava/lang/String;
    :cond_d
    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v12}, Lorg/eclipse/jetty/server/Connector;->getLocalPort()I

    move-result v7

    goto/16 :goto_1

    .line 659
    .end local v2    # "connectors":[Lorg/eclipse/jetty/server/Connector;
    .end local v5    # "host":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 661
    .local v4, "e":Ljava/lang/Exception;
    sget-object v12, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Can\'t generate resourceBase as part of webapp tmp dir name"

    invoke-interface {v12, v13, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 676
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "contextPath":Ljava/lang/String;
    .restart local v11    # "vhosts":[Ljava/lang/String;
    :cond_e
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 686
    .restart local v6    # "i":I
    :cond_f
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public cloneConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 4
    .param p1, "template"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->getCanonicalNameForWebAppTmpDir(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 215
    .local v0, "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {v0}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 221
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    .line 222
    return-void
.end method

.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 12
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 150
    sget-object v9, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 151
    sget-object v9, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot configure webapp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " after it is started"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 158
    .local v8, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    instance-of v9, v9, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    if-eqz v9, :cond_4

    .line 161
    const-string v9, "classes/"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 162
    .local v0, "classes":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 163
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v9, v0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 166
    :cond_2
    const-string v9, "lib/"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 167
    .local v5, "lib":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 168
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v9, v5}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addJars(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 173
    .end local v0    # "classes":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v5    # "lib":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_4
    const-string v9, "org.eclipse.jetty.resources"

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 174
    .local v7, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-eqz v7, :cond_0

    .line 176
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Lorg/eclipse/jetty/util/resource/Resource;

    .line 177
    .local v1, "collection":[Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v2, 0x0

    .line 178
    .local v2, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    aput-object v9, v1, v2

    .line 179
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/util/resource/Resource;

    .line 180
    .local v6, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-object v6, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 181
    .end local v6    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_5
    new-instance v9, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-direct {v9, v1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string v1, "org.eclipse.jetty.tmpdirConfigured"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 191
    .local v0, "tmpdirConfigured":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->isTempWorkDirectory(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 194
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    .line 198
    const-string v1, "org.eclipse.jetty.tmpdirConfigured"

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v1, "javax.servlet.context.tempdir"

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->_preUnpackBaseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 205
    return-void
.end method

.method protected findJars(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/webapp/WebAppContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 699
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v7, "jarResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 702
    .local v8, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    move-object v7, v10

    .line 730
    .end local v7    # "jarResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_1
    return-object v7

    .line 705
    .restart local v7    # "jarResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_2
    const-string v11, "/lib"

    invoke-virtual {v8, v11}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    .line 708
    .local v9, "web_inf_lib":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 710
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "files":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "f":I
    :goto_0
    if-eqz v5, :cond_1

    array-length v11, v5

    if-ge v3, v11, :cond_1

    .line 715
    :try_start_0
    aget-object v11, v5, v3

    invoke-virtual {v9, v11}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 716
    .local v4, "file":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, "fnlc":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 718
    .local v0, "dot":I
    if-gez v0, :cond_5

    move-object v2, v10

    .line 719
    .local v2, "extension":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    const-string v11, ".jar"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, ".zip"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 721
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    .end local v0    # "dot":I
    .end local v2    # "extension":Ljava/lang/String;
    .end local v4    # "file":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v6    # "fnlc":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    .restart local v0    # "dot":I
    .restart local v4    # "file":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v6    # "fnlc":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 724
    .end local v0    # "dot":I
    .end local v4    # "file":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v6    # "fnlc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 726
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v11, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "EXCEPTION "

    invoke-interface {v11, v12, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public findWorkDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 567
    .local v0, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "work"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    .end local v0    # "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTempWorkDirectory(Ljava/io/File;)Z
    .locals 4
    .param p1, "tmpDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 583
    if-nez p1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v1

    .line 585
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    const/4 v1, 0x1

    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 588
    .local v0, "t":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p3, "deleteExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 364
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 366
    invoke-static {p2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->getCanonicalNameForWebAppTmpDir(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "temp":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v2, "tmpDir":Ljava/io/File;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    sget-object v3, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete temp dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "old":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 383
    :cond_1
    sget-object v3, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t reuse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    .end local v0    # "old":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 388
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 391
    :cond_3
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->isTempWorkDirectory(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 396
    :cond_4
    sget-object v3, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 397
    sget-object v3, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set temp dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_5
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    .line 400
    .end local v1    # "temp":Ljava/lang/String;
    .end local v2    # "tmpDir":Ljava/io/File;
    :cond_6
    return-void
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 27
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->findWorkDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/io/File;

    move-result-object v22

    .line 64
    .local v22, "work":Ljava/io/File;
    if-eqz v22, :cond_0

    .line 65
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V

    .line 68
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->resolveTempDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 71
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->unpack(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 76
    const-string v23, "org.eclipse.jetty.server.webapp.WebInfIncludeJarPattern"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 77
    .local v16, "tmp":Ljava/lang/String;
    if-nez v16, :cond_2

    const/16 v21, 0x0

    .line 78
    .local v21, "webInfPattern":Ljava/util/regex/Pattern;
    :goto_0
    const-string v23, "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "tmp":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 79
    .restart local v16    # "tmp":Ljava/lang/String;
    if-nez v16, :cond_3

    const/4 v6, 0x0

    .line 83
    .local v6, "containerPattern":Ljava/util/regex/Pattern;
    :goto_1
    new-instance v5, Lorg/eclipse/jetty/webapp/WebInfConfiguration$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration$1;-><init>(Lorg/eclipse/jetty/webapp/WebInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 90
    .local v5, "containerJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    const/4 v14, 0x0

    .line 91
    .local v14, "loader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 94
    :cond_1
    :goto_2
    if-eqz v14, :cond_6

    instance-of v0, v14, Ljava/net/URLClassLoader;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v23, v14

    .line 96
    check-cast v23, Ljava/net/URLClassLoader;

    invoke-virtual/range {v23 .. v23}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v19

    .line 97
    .local v19, "urls":[Ljava/net/URL;
    if-eqz v19, :cond_5

    .line 99
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v7, v0, [Ljava/net/URI;

    .line 100
    .local v7, "containerUris":[Ljava/net/URI;
    const/4 v9, 0x0

    .line 101
    .local v9, "i":I
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/net/URL;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v13, :cond_4

    aget-object v17, v4, v11

    .line 105
    .local v17, "u":Ljava/net/URL;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v23

    aput-object v23, v7, v9
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 101
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 77
    .end local v4    # "arr$":[Ljava/net/URL;
    .end local v5    # "containerJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    .end local v6    # "containerPattern":Ljava/util/regex/Pattern;
    .end local v7    # "containerUris":[Ljava/net/URI;
    .end local v9    # "i":I
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "loader":Ljava/lang/ClassLoader;
    .end local v17    # "u":Ljava/net/URL;
    .end local v19    # "urls":[Ljava/net/URL;
    .end local v21    # "webInfPattern":Ljava/util/regex/Pattern;
    :cond_2
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    goto :goto_0

    .line 79
    .restart local v21    # "webInfPattern":Ljava/util/regex/Pattern;
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    goto :goto_1

    .line 107
    .restart local v4    # "arr$":[Ljava/net/URL;
    .restart local v5    # "containerJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    .restart local v6    # "containerPattern":Ljava/util/regex/Pattern;
    .restart local v7    # "containerUris":[Ljava/net/URI;
    .restart local v9    # "i":I
    .restart local v11    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "u":Ljava/net/URL;
    .restart local v19    # "urls":[Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 109
    .local v8, "e":Ljava/net/URISyntaxException;
    new-instance v23, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, " "

    const-string v26, "%20"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aput-object v23, v7, v9

    goto :goto_4

    .line 113
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v17    # "u":Ljava/net/URL;
    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v6, v7, v0}, Lorg/eclipse/jetty/util/PatternMatcher;->match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 115
    .end local v4    # "arr$":[Ljava/net/URL;
    .end local v7    # "containerUris":[Ljava/net/URI;
    .end local v9    # "i":I
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    invoke-virtual {v14}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 116
    goto :goto_2

    .line 119
    .end local v19    # "urls":[Ljava/net/URL;
    :cond_6
    new-instance v20, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;-><init>(Lorg/eclipse/jetty/webapp/WebInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 127
    .local v20, "webInfJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->findJars(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/util/List;

    move-result-object v12

    .line 130
    .local v12, "jars":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/16 v18, 0x0

    .line 131
    .local v18, "uris":[Ljava/net/URI;
    if-eqz v12, :cond_7

    .line 133
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/net/URI;

    move-object/from16 v18, v0

    .line 134
    const/4 v9, 0x0

    .line 135
    .restart local v9    # "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jetty/util/resource/Resource;

    .line 137
    .local v15, "r":Lorg/eclipse/jetty/util/resource/Resource;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v23

    aput-object v23, v18, v9

    move v9, v10

    .line 138
    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_5

    .line 140
    .end local v9    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_7
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/PatternMatcher;->match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 141
    return-void
.end method

.method public resolveTempDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 264
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    .line 265
    .local v3, "tmpDir":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    const-string v5, "org.eclipse.jetty.tmpdirConfigured"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string v5, "javax.servlet.context.tempdir"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->asFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    .line 275
    .local v2, "servletTmpDir":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    move-object v3, v2

    .line 280
    const-string v5, "javax.servlet.context.tempdir"

    invoke-virtual {p1, v5, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 289
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "jetty.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "work"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v4, "work":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 292
    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    .end local v4    # "work":Ljava/io/File;
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    .line 321
    :try_start_1
    const-string v5, "JettyContext"

    const-string v6, ""

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 324
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 325
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 326
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 331
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create tmp dir in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "java.io.tmpdir"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for context "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "work":Ljava/io/File;
    :cond_4
    :try_start_2
    const-string v5, "org.eclipse.jetty.webapp.basetempdir"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->asFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 297
    .local v0, "baseTemp":Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 300
    const/4 v5, 0x0

    invoke-virtual {p0, v0, p1, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 308
    .end local v0    # "baseTemp":Ljava/io/File;
    .end local v4    # "work":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 311
    sget-object v5, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "baseTemp":Ljava/io/File;
    .restart local v4    # "work":Ljava/io/File;
    :cond_5
    :try_start_3
    new-instance v5, Ljava/io/File;

    const-string v6, "java.io.tmpdir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v5, p1, v6}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public unpack(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 22
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 406
    .local v14, "web_app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->_preUnpackBaseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 408
    if-nez v14, :cond_11

    .line 410
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "war":Ljava/lang/String;
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    .line 412
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 417
    :goto_0
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 419
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " anti-aliased to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 423
    :cond_0
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 424
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Try webapp="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", exists="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", directory="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " file="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :cond_1
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "jar:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 429
    invoke-static {v14}, Lorg/eclipse/jetty/util/resource/JarResource;->newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 430
    .local v5, "jarWebApp":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 431
    move-object v14, v5

    .line 435
    .end local v5    # "jarWebApp":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isCopyWebDir()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isExtractWAR()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isExtractWAR()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_6

    :cond_5
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_a

    .line 443
    :cond_6
    const/4 v2, 0x0

    .line 445
    .local v2, "extractedWebAppDir":Ljava/io/File;
    if-eqz v9, :cond_7

    .line 448
    invoke-static {v9}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v10

    .line 449
    .local v10, "warfile":Ljava/io/File;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ".war"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 451
    new-instance v8, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v8, "sibling":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 453
    move-object v2, v8

    .line 457
    .end local v8    # "sibling":Ljava/io/File;
    .end local v10    # "warfile":Ljava/io/File;
    :cond_7
    if-nez v2, :cond_8

    .line 459
    new-instance v2, Ljava/io/File;

    .end local v2    # "extractedWebAppDir":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "webapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    .restart local v2    # "extractedWebAppDir":Ljava/io/File;
    :cond_8
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_d

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 464
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Copy "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-virtual {v14, v2}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 498
    :cond_9
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 502
    .end local v2    # "extractedWebAppDir":Ljava/io/File;
    :cond_a
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_10

    .line 504
    :cond_b
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Web application not found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    new-instance v18, Ljava/io/FileNotFoundException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 414
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    goto/16 :goto_0

    .line 471
    .restart local v2    # "extractedWebAppDir":Ljava/io/File;
    :cond_d
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, ".extract_lock"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    .local v4, "extractionLock":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_e

    .line 476
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 477
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 478
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Extract "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-static {v14}, Lorg/eclipse/jetty/util/resource/JarResource;->newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    .line 480
    .local v6, "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v6, v2}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 481
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 486
    .end local v6    # "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_e
    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v18

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 488
    :cond_f
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 489
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 490
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 491
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Extract "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-static {v14}, Lorg/eclipse/jetty/util/resource/JarResource;->newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    .line 493
    .restart local v6    # "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v6, v2}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 494
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 508
    .end local v2    # "extractedWebAppDir":Ljava/io/File;
    .end local v4    # "extractionLock":Ljava/io/File;
    .end local v6    # "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 510
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 511
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "webapp="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    .end local v9    # "war":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isCopyWebInf()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isCopyWebDir()Z

    move-result v18

    if-nez v18, :cond_18

    .line 518
    const-string v18, "WEB-INF/"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v15

    .line 520
    .local v15, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "webinf"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    .local v3, "extractedWebInfDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 522
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 523
    :cond_12
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 524
    const-string v18, "lib/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    .line 525
    .local v17, "web_inf_lib":Lorg/eclipse/jetty/util/resource/Resource;
    new-instance v12, Ljava/io/File;

    const-string v18, "WEB-INF"

    move-object/from16 v0, v18

    invoke-direct {v12, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    .local v12, "webInfDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 528
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 530
    new-instance v13, Ljava/io/File;

    const-string v18, "lib"

    move-object/from16 v0, v18

    invoke-direct {v13, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 531
    .local v13, "webInfLibDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 532
    invoke-static {v13}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 533
    :cond_13
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 535
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Copying WEB-INF/lib "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 539
    .end local v13    # "webInfLibDir":Ljava/io/File;
    :cond_14
    const-string v18, "classes/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v16

    .line 540
    .local v16, "web_inf_classes":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 542
    new-instance v11, Ljava/io/File;

    const-string v18, "classes"

    move-object/from16 v0, v18

    invoke-direct {v11, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 543
    .local v11, "webInfClassesDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 544
    invoke-static {v11}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 545
    :cond_15
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 546
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Copying WEB-INF/classes from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 550
    .end local v11    # "webInfClassesDir":Ljava/io/File;
    :cond_16
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v15

    .line 552
    new-instance v7, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 554
    .local v7, "rc":Lorg/eclipse/jetty/util/resource/ResourceCollection;
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 555
    sget-object v18, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "context.resourcebase = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 559
    .end local v3    # "extractedWebInfDir":Ljava/io/File;
    .end local v7    # "rc":Lorg/eclipse/jetty/util/resource/ResourceCollection;
    .end local v12    # "webInfDir":Ljava/io/File;
    .end local v15    # "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v16    # "web_inf_classes":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v17    # "web_inf_lib":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_18
    return-void
.end method
