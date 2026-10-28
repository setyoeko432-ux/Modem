.class public Lorg/eclipse/jetty/webapp/WebXmlConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "WebXmlConfiguration.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Cannot configure webapp after it is started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;

    invoke-direct {v1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/MetaData;->addDescriptorProcessor(Lorg/eclipse/jetty/webapp/DescriptorProcessor;)V

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

    .line 124
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 126
    .local v0, "_servletHandler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected findWebXml(Lorg/eclipse/jetty/webapp/WebAppContext;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 104
    .local v1, "web":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    .end local v1    # "web":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    :goto_0
    return-object v1

    .line 107
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 108
    .local v2, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    const-string v3, "web.xml"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 112
    .restart local v1    # "web":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    sget-object v3, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    sget-object v3, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No WEB-INF/web.xml in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Serving files and default/dynamic servlets only"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .end local v1    # "web":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "defaultsDescriptor":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 51
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 52
    .local v1, "dftResource":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 54
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/webapp/MetaData;->setDefaults(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 58
    .end local v1    # "dftResource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;->findWebXml(Lorg/eclipse/jetty/webapp/WebAppContext;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 59
    .local v5, "webxml":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v5, :cond_2

    .line 61
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/webapp/MetaData;->setWebXml(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 62
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/MetaData;->getWebXml()Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/WebDescriptor;->getMajorVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setEffectiveMajorVersion(I)V

    .line 63
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/MetaData;->getWebXml()Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/WebDescriptor;->getMinorVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setEffectiveMinorVersion(I)V

    .line 67
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getOverrideDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "overrideDescriptor":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 71
    invoke-static {v4}, Lorg/eclipse/jetty/util/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 72
    .local v3, "orideResource":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v3, :cond_4

    .line 73
    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 74
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/webapp/MetaData;->addOverride(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 77
    .end local v3    # "orideResource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "overrideDescriptor":Ljava/lang/String;
    :cond_5
    return-void
.end method
