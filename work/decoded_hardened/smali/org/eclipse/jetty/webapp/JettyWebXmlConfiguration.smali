.class public Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "JettyWebXmlConfiguration.java"


# static fields
.field public static final JETTY_WEB_XML:Ljava/lang/String; = "jetty-web.xml"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final PROPERTY_THIS_WEB_INF_URL:Ljava/lang/String; = "this.web-inf.url"

.field public static final XML_CONFIGURATION:Ljava/lang/String; = "org.eclipse.jetty.webapp.JettyWebXmlConfiguration"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    return-void
.end method

.method private setupXmlConfiguration(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlConfiguration;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "jetty_config"    # Lorg/eclipse/jetty/xml/XmlConfiguration;
    .param p3, "web_inf"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 126
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->setupXmlConfiguration(Lorg/eclipse/jetty/xml/XmlConfiguration;Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 127
    return-void
.end method

.method private setupXmlConfiguration(Lorg/eclipse/jetty/xml/XmlConfiguration;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 3
    .param p1, "jetty_config"    # Lorg/eclipse/jetty/xml/XmlConfiguration;
    .param p2, "web_inf"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 136
    invoke-virtual {p1}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 137
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .restart local v0    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    .line 144
    :cond_0
    const-string v1, "this.web-inf.url"

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method


# virtual methods
.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    sget-object v5, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Cannot configure webapp after it is started"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v5, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Configuring web-jetty.xml"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 71
    .local v4, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "jetty8-web.xml"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 75
    .local v1, "jetty":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    const-string v5, "jetty-web.xml"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 77
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 78
    const-string v5, "web-jetty.xml"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 80
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "old_server_classes":[Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    .line 87
    sget-object v5, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    sget-object v5, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_4
    const-string v5, "org.eclipse.jetty.webapp.JettyWebXmlConfiguration"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/xml/XmlConfiguration;

    .line 92
    .local v2, "jetty_config":Lorg/eclipse/jetty/xml/XmlConfiguration;
    if-nez v2, :cond_5

    .line 94
    new-instance v2, Lorg/eclipse/jetty/xml/XmlConfiguration;

    .end local v2    # "jetty_config":Lorg/eclipse/jetty/xml/XmlConfiguration;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 100
    .restart local v2    # "jetty_config":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :goto_1
    invoke-direct {p0, p1, v2, v4}, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->setupXmlConfiguration(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlConfiguration;Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 113
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_5
    :try_start_2
    const-string v5, "org.eclipse.jetty.webapp.JettyWebXmlConfiguration"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->removeAttribute(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 112
    .end local v2    # "jetty_config":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 113
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    :cond_6
    throw v5

    .line 105
    .restart local v2    # "jetty_config":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    sget-object v5, Lorg/eclipse/jetty/webapp/JettyWebXmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Unable to process jetty-web.xml"

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
