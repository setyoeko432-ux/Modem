.class public Lorg/eclipse/jetty/xml/XmlConfiguration;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __factoryLoader:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<*>;"
        }
    .end annotation
.end field

.field private static final __parser:Lorg/eclipse/jetty/xml/XmlParser;

.field private static final __primitiveHolders:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final __primitives:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final __supportedCollections:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private _dtd:Ljava/lang/String;

.field private final _idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

.field private final _propertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    const-class v5, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-static {v5}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    sput-object v5, Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 75
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v11

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sput-object v5, Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    .line 78
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Character;

    aput-object v6, v5, v9

    const-class v6, Ljava/lang/Byte;

    aput-object v6, v5, v10

    const-class v6, Ljava/lang/Short;

    aput-object v6, v5, v11

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-class v7, Ljava/lang/Long;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-class v7, Ljava/lang/Float;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-class v7, Ljava/lang/Double;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-class v7, Ljava/lang/Void;

    aput-object v7, v5, v6

    sput-object v5, Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;

    .line 81
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v5, v8

    const-class v6, Lorg/eclipse/jetty/util/ArrayQueue;

    aput-object v6, v5, v9

    const-class v6, Ljava/util/HashSet;

    aput-object v6, v5, v10

    const-class v6, Ljava/util/Queue;

    aput-object v6, v5, v11

    const-class v6, Ljava/util/List;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-class v7, Ljava/util/Set;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-class v7, Ljava/util/Collection;

    aput-object v7, v5, v6

    sput-object v5, Lorg/eclipse/jetty/xml/XmlConfiguration;->__supportedCollections:[Ljava/lang/Class;

    .line 86
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->initParser()Lorg/eclipse/jetty/xml/XmlParser;

    move-result-object v5

    sput-object v5, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    .line 90
    const/4 v3, 0x0

    .line 95
    .local v3, "loader":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "java.util.ServiceLoader"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 96
    .local v4, "slc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "load"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    .local v2, "load":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-class v8, Lorg/eclipse/jetty/xml/ConfigurationProcessorFactory;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    sput-object v3, Lorg/eclipse/jetty/xml/XmlConfiguration;->__factoryLoader:Ljava/lang/Iterable;

    .line 107
    .end local v2    # "load":Ljava/lang/reflect/Method;
    .end local v4    # "slc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    sput-object v3, Lorg/eclipse/jetty/xml/XmlConfiguration;->__factoryLoader:Ljava/lang/Iterable;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sput-object v3, Lorg/eclipse/jetty/xml/XmlConfiguration;->__factoryLoader:Ljava/lang/Iterable;

    throw v5
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "configuration"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 189
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 190
    .local v0, "source":Lorg/xml/sax/InputSource;
    sget-object v2, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    monitor-enter v2

    .line 192
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration;->setConfig(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 193
    sget-object v1, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_dtd:Ljava/lang/String;

    .line 194
    monitor-exit v2

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "configuration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\"  encoding=\"ISO-8859-1\"?>\n<!DOCTYPE Configure PUBLIC \"-//Mort Bay Consulting//DTD Configure 1.2//EN\" \"http://jetty.eclipse.org/configure_1_2.dtd\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 172
    .local v0, "source":Lorg/xml/sax/InputSource;
    sget-object v2, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    monitor-enter v2

    .line 174
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration;->setConfig(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 175
    sget-object v1, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_dtd:Ljava/lang/String;

    .line 176
    monitor-exit v2

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "configuration"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 150
    sget-object v1, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    monitor-enter v1

    .line 152
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_url:Ljava/net/URL;

    .line 153
    sget-object v0, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration;->setConfig(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 154
    sget-object v0, Lorg/eclipse/jetty/xml/XmlConfiguration;->__parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_dtd:Ljava/lang/String;

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/eclipse/jetty/xml/XmlConfiguration;->__supportedCollections:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;

    return-object v0
.end method

.method private static declared-synchronized initParser()Lorg/eclipse/jetty/xml/XmlParser;
    .locals 7

    .prologue
    .line 119
    const-class v4, Lorg/eclipse/jetty/xml/XmlConfiguration;

    monitor-enter v4

    :try_start_0
    new-instance v2, Lorg/eclipse/jetty/xml/XmlParser;

    invoke-direct {v2}, Lorg/eclipse/jetty/xml/XmlParser;-><init>()V

    .line 120
    .local v2, "parser":Lorg/eclipse/jetty/xml/XmlParser;
    const-class v3, Lorg/eclipse/jetty/xml/XmlConfiguration;

    const-string v5, "org/eclipse/jetty/xml/configure_6_0.dtd"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 121
    .local v0, "config60":Ljava/net/URL;
    const-class v3, Lorg/eclipse/jetty/xml/XmlConfiguration;

    const-string v5, "org/eclipse/jetty/xml/configure_7_6.dtd"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v1

    .line 122
    .local v1, "config76":Ljava/net/URL;
    const-string v3, "configure.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 123
    const-string v3, "configure_1_0.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 124
    const-string v3, "configure_1_1.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 125
    const-string v3, "configure_1_2.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 126
    const-string v3, "configure_1_3.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 127
    const-string v3, "configure_6_0.dtd"

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 128
    const-string v3, "configure_7_6.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 130
    const-string v3, "http://jetty.mortbay.org/configure.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 131
    const-string v3, "http://jetty.eclipse.org/configure.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 132
    const-string v3, "http://www.eclipse.org/jetty/configure.dtd"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 134
    const-string v3, "-//Mort Bay Consulting//DTD Configure//EN"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 135
    const-string v3, "-//Jetty//Configure//EN"

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v4

    return-object v2

    .line 119
    .end local v0    # "config60":Ljava/net/URL;
    .end local v1    # "config76":Ljava/net/URL;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1197
    .local v0, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v2, Lorg/eclipse/jetty/xml/XmlConfiguration$1;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration$1;-><init>([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1287
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 1288
    .local v1, "th":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 1290
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 1291
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "th":Ljava/lang/Throwable;
    throw v1

    .line 1292
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 1293
    check-cast v1, Ljava/lang/Exception;

    .end local v1    # "th":Ljava/lang/Throwable;
    throw v1

    .line 1294
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 1295
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "th":Ljava/lang/Throwable;
    throw v1

    .line 1296
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1298
    :cond_3
    return-void
.end method

.method private setConfig(Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 9
    .param p1, "config"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 200
    const-string v4, "Configure"

    invoke-virtual {p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    new-instance v4, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;-><init>(Lorg/eclipse/jetty/xml/XmlConfiguration$1;)V

    iput-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    .line 230
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_url:Ljava/net/URL;

    invoke-interface {v4, v5, p1, p0}, Lorg/eclipse/jetty/xml/ConfigurationProcessor;->init(Ljava/net/URL;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/xml/XmlConfiguration;)V

    .line 231
    return-void

    .line 204
    :cond_1
    sget-object v4, Lorg/eclipse/jetty/xml/XmlConfiguration;->__factoryLoader:Ljava/lang/Iterable;

    if-eqz v4, :cond_4

    .line 206
    sget-object v4, Lorg/eclipse/jetty/xml/XmlConfiguration;->__factoryLoader:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 212
    .local v1, "factory":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getConfigurationProcessor"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 213
    .local v2, "gcp":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_dtd:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    iput-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "gcp":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    if-eqz v4, :cond_2

    .line 223
    .end local v1    # "factory":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    if-nez v4, :cond_0

    .line 224
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown configuration type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    .restart local v1    # "factory":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown XML tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public configure()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    invoke-interface {v0}, Lorg/eclipse/jetty/xml/ConfigurationProcessor;->configure()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public configure(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_processor:Lorg/eclipse/jetty/xml/ConfigurationProcessor;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/xml/ConfigurationProcessor;->configure(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public initializeDefaults(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 308
    return-void
.end method

.method public setIdMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 249
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 250
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    return-void
.end method
