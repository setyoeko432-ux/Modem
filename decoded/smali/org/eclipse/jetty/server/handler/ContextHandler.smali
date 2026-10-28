.class public Lorg/eclipse/jetty/server/handler/ContextHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;
.implements Lorg/eclipse/jetty/server/Server$Graceful;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$ApprovePathPrefixAliases;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveSameSuffixAliases;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final MANAGED_ATTRIBUTES:Ljava/lang/String; = "org.eclipse.jetty.server.context.ManagedAttributes"

.field private static final __AVAILABLE:I = 0x1

.field private static final __SHUTDOWN:I = 0x2

.field private static final __STOPPED:I = 0x0

.field private static final __UNAVAILABLE:I = 0x3

.field private static final __context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;",
            ">;"
        }
    .end annotation
.end field

.field private _aliasesAllowed:Z

.field private _allowNullPathInfo:Z

.field private final _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private volatile _availability:I

.field private _available:Z

.field private _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _compactPath:Z

.field private _connectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextAttributeListeners:Ljava/lang/Object;

.field private final _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contextListeners:Ljava/lang/Object;

.field private _contextPath:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _durableListeners:Ljava/lang/Object;

.field private _errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

.field private _eventListeners:[Ljava/util/EventListener;

.field private final _initParams:Ljava/util/Map;
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

.field private _localeEncodingMap:Ljava/util/Map;
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

.field private _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _managedAttributes:Ljava/util/Map;
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

.field private _maxFormContentSize:I

.field private _maxFormKeys:I

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _protectedTargets:[Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field protected _scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _shutdown:Z

.field private _vhosts:[Ljava/lang/String;

.field private _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 105
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 131
    const-string v0, "/"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 143
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 144
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 146
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasesAllowed:Z

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 170
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 171
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 172
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 174
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 198
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 208
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 209
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v0, :cond_1

    .line 210
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    .end local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-eqz v0, :cond_0

    .line 212
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .end local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 131
    const-string v0, "/"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 143
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 144
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 146
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasesAllowed:Z

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 184
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 185
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 186
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 188
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ContextHandler;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1679
    if-nez p1, :cond_1

    .line 1680
    const/4 p1, 0x0

    .line 1685
    .end local p1    # "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1682
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V
    .locals 1
    .param p1, "check"    # Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;

    .prologue
    .line 1695
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    return-void
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 596
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    .line 599
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    const-class v1, Ljava/util/EventListener;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 600
    return-void
.end method

.method public addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1534
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    .line 1536
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    return-void
.end method

.method public addVirtualHosts([Ljava/lang/String;)V
    .locals 4
    .param p1, "virtualHosts"    # [Ljava/lang/String;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    .restart local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 318
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "normVhost":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    .end local v1    # "i":I
    .end local v2    # "normVhost":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "currentVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 324
    .restart local v1    # "i":I
    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public callContextDestroyed(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "l"    # Ljavax/servlet/ServletContextListener;
    .param p2, "e"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 788
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    .line 789
    return-void
.end method

.method public callContextInitialized(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "l"    # Ljavax/servlet/ServletContextListener;
    .param p2, "e"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 782
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    .line 783
    return-void
.end method

.method public checkAlias(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1599
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasesAllowed:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1601
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1602
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aliased resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1607
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;

    .line 1608
    .local v0, "check":Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;->check(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1610
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1611
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aliased resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " approved by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1617
    .end local v0    # "check":Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;>;"
    :cond_2
    :goto_0
    return v2

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;>;"
    :cond_3
    move v2, v3

    .line 1615
    goto :goto_0
.end method

.method public checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 11
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 859
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v7

    .line 861
    .local v7, "dispatch":Ljavax/servlet/DispatcherType;
    iget v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    packed-switch v2, :pswitch_data_0

    .line 871
    :pswitch_0
    sget-object v2, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v2, v7}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v10

    .line 930
    :cond_0
    :goto_0
    return v1

    :pswitch_1
    move v1, v10

    .line 865
    goto :goto_0

    .line 867
    :pswitch_2
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 868
    const/16 v1, 0x1f7

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    move v1, v10

    .line 869
    goto :goto_0

    .line 876
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 878
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "vhost":Ljava/lang/String;
    const/4 v9, 0x0

    .line 883
    .local v9, "match":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-nez v9, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v8, v2, :cond_4

    .line 885
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v0, v2, v8

    .line 886
    .local v0, "contextVhost":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 883
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 888
    :cond_2
    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 891
    const/4 v2, 0x2

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v9

    goto :goto_2

    .line 894
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    .line 896
    .end local v0    # "contextVhost":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    move v1, v10

    .line 897
    goto :goto_0

    .line 901
    .end local v3    # "vhost":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "match":Z
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 903
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v6

    .line 904
    .local v6, "connector":Ljava/lang/String;
    if-eqz v6, :cond_6

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v1, v10

    .line 905
    goto :goto_0

    .line 909
    .end local v6    # "connector":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 912
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v1, v10

    .line 913
    goto/16 :goto_0

    .line 914
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_9

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_9

    move v1, v10

    .line 915
    goto/16 :goto_0

    .line 918
    :cond_9
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 921
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 922
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-static {v2, v4}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_3
    move v1, v10

    .line 926
    goto/16 :goto_0

    .line 925
    :cond_a
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_3

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1254
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 3

    .prologue
    .line 1242
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1243
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1246
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1248
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1249
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1055
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v0

    .line 1056
    .local v0, "dispatch":Ljavax/servlet/DispatcherType;
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->takeNewContext()Z

    move-result v4

    .line 1059
    .local v4, "new_context":Z
    if-eqz v4, :cond_1

    .line 1062
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1064
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1065
    .local v5, "s":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1066
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->addEventListener(Ljava/util/EventListener;)V

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    .end local v2    # "i":I
    .end local v5    # "s":I
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 1071
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1072
    .restart local v5    # "s":I
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1073
    .local v6, "sre":Ljavax/servlet/ServletRequestEvent;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1074
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V

    .line 1073
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1078
    .end local v2    # "i":I
    .end local v5    # "s":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_1
    sget-object v7, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v7, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isProtectedTarget(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1079
    new-instance v7, Lorg/eclipse/jetty/http/HttpException;

    const/16 v8, 0x194

    invoke-direct {v7, v8}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    :catch_0
    move-exception v1

    .line 1093
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_1
    sget-object v7, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1094
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 1095
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    if-eqz v4, :cond_a

    .line 1102
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 1104
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1105
    .restart local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_7

    .line 1106
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 1083
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v3    # "i":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1084
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1100
    :cond_3
    :goto_3
    if-eqz v4, :cond_a

    .line 1102
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 1104
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1105
    .restart local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_4
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_6

    .line 1106
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 1085
    .end local v3    # "i":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v7, v8, :cond_5

    .line 1086
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v7, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1100
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-eqz v4, :cond_9

    .line 1102
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v7, :cond_8

    .line 1104
    new-instance v6, Ljavax/servlet/ServletRequestEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1105
    .restart local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_5
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_8

    .line 1106
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_5

    .line 1087
    .end local v3    # "i":I
    .end local v6    # "sre":Ljavax/servlet/ServletRequestEvent;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v7, :cond_3

    .line 1088
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v7, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_4
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1109
    :cond_6
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_a

    .line 1111
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_6
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_a

    .line 1112
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_6

    .line 1109
    .end local v3    # "i":I
    .restart local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :cond_7
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_a

    .line 1111
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_7
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_a

    .line 1112
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 1109
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v3    # "i":I
    :cond_8
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 1111
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_8
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_9

    .line 1112
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v7, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EventListener;

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_8

    .end local v3    # "i":I
    :cond_9
    throw v8

    .line 1116
    :cond_a
    return-void
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 941
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 942
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "scope {}|{}|{} @ {}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p0, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    :cond_0
    const/4 v7, 0x0

    .line 945
    .local v7, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    const/4 v8, 0x0

    .line 946
    .local v8, "old_context_path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 947
    .local v10, "old_servlet_path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 948
    .local v9, "old_path_info":Ljava/lang/String;
    const/4 v6, 0x0

    .line 949
    .local v6, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v4, 0x0

    .line 950
    .local v4, "current_thread":Ljava/lang/Thread;
    move-object/from16 v11, p1

    .line 952
    .local v11, "pathInfo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v5

    .line 954
    .local v5, "dispatch":Ljavax/servlet/DispatcherType;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v7

    .line 957
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v7, v12, :cond_7

    .line 960
    sget-object v12, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    sget-object v12, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    sget-object v12, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/AsyncContinuation;->isExpired()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 962
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    if-eqz v12, :cond_2

    .line 963
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 964
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1045
    :cond_3
    :goto_0
    return-void

    .line 967
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_b

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 970
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 971
    :cond_5
    move-object/from16 v11, p1

    .line 986
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_7

    .line 988
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 989
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 990
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v12}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 996
    :cond_7
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v8

    .line 997
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v10

    .line 998
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v9

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1002
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v12, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1003
    sget-object v12, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1005
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 1006
    const-string v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1009
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 1013
    :cond_8
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1014
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "context={}|{}|{} @ {}"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p0, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1018
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v7, v12, :cond_3

    .line 1032
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_a

    .line 1034
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1038
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1039
    sget-object v12, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v12, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1040
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 975
    const-string p1, "/"

    .line 976
    const-string v11, "/"

    goto/16 :goto_1

    .line 980
    :cond_c
    const-string p1, "/"

    .line 981
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1008
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1029
    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v7, v13, :cond_f

    .line 1032
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v13, :cond_e

    .line 1034
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1038
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1039
    sget-object v13, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v13, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1040
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_f
    throw v12

    .line 1019
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v12, :cond_11

    .line 1020
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_3

    .line 1021
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v12, :cond_12

    .line 1022
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_3

    .line 1024
    :cond_12
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method protected doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v4, 0x0

    iput v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 692
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 693
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Null contextPath"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 695
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 696
    const/4 v2, 0x0

    .line 697
    .local v2, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 698
    .local v1, "current_thread":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 703
    .local v3, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_1

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 706
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 707
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 710
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v4, :cond_2

    .line 711
    new-instance v4, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v4}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 713
    :cond_2
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object v3, v0

    .line 714
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 717
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->startContext()V

    .line 719
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 721
    :try_start_1
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_1
    iput v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 722
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 729
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_3

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 735
    :cond_3
    return-void

    .line 695
    .end local v1    # "current_thread":Ljava/lang/Thread;
    .end local v2    # "old_classloader":Ljava/lang/ClassLoader;
    .end local v3    # "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 721
    .restart local v1    # "current_thread":Ljava/lang/Thread;
    .restart local v2    # "old_classloader":Ljava/lang/ClassLoader;
    .restart local v3    # "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :cond_5
    :try_start_2
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    goto :goto_1

    .line 722
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 726
    :catchall_1
    move-exception v4

    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 729
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_7

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_7
    throw v4
.end method

.method protected doStop()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 798
    iput v12, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 800
    const/4 v6, 0x0

    .line 801
    .local v6, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v0, 0x0

    .line 803
    .local v0, "current_thread":Ljava/lang/Thread;
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 804
    .local v7, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 808
    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    .line 810
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 812
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 815
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 818
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 820
    new-instance v2, Ljavax/servlet/ServletContextEvent;

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v2, v8}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 821
    .local v2, "event":Ljavax/servlet/ServletContextEvent;
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v8}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_1

    .line 823
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v8, v3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/servlet/ServletContextListener;

    invoke-interface {v8, v2}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 828
    .end local v2    # "event":Ljavax/servlet/ServletContextEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    const-class v9, Ljava/util/EventListener;

    invoke-static {v8, v9}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/util/EventListener;

    check-cast v8, [Ljava/util/EventListener;

    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 829
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    .line 831
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v8, :cond_2

    .line 832
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->stop()V

    .line 834
    :cond_2
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 835
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 837
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 838
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 843
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    sget-object v9, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "stopped {}"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    sget-object v9, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 846
    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_3

    .line 847
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    throw v8

    .line 843
    .restart local v1    # "e":Ljava/util/Enumeration;
    :cond_4
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "stopped {}"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object p0, v10, v12

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 846
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_5

    .line 847
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 850
    :cond_5
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 851
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 4
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 220
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 222
    return-void
.end method

.method public getAliasChecks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1704
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAllowNullPathInfo()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x0

    .line 1314
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 458
    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    instance-of v8, v8, Ljava/net/URLClassLoader;

    if-nez v8, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-object v7

    .line 460
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    check-cast v4, Ljava/net/URLClassLoader;

    .line 461
    .local v4, "loader":Ljava/net/URLClassLoader;
    invoke-virtual {v4}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v6

    .line 462
    .local v6, "urls":[Ljava/net/URL;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v0, "classpath":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 467
    :try_start_0
    aget-object v8, v6, v3

    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 468
    .local v5, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 469
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 472
    sget-char v8, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 476
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 481
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getConnectorNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    return-object v0
.end method

.method public getEventListeners()[Ljava/util/EventListener;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInitParams()Ljava/util/Map;
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
    .line 528
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLocaleEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 1542
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1543
    const/4 v0, 0x0

    .line 1545
    :goto_0
    return-object v0

    .line 1544
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1545
    .local v0, "encoding":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1559
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1560
    const/4 v0, 0x0

    .line 1564
    :cond_0
    :goto_0
    return-object v0

    .line 1561
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1562
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1563
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "encoding":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public getMaxFormContentSize()I
    .locals 1

    .prologue
    .line 1442
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    return v0
.end method

.method public getMaxFormKeys()I
    .locals 1

    .prologue
    .line 1458
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    return v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1384
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method public getProtectedTargets()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1190
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1191
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return-object v0

    .line 1193
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1194
    .local v0, "tmp":[Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1572
    if-eqz p1, :cond_0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1573
    :cond_0
    new-instance v2, Ljava/net/MalformedURLException;

    invoke-direct {v2, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1575
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v3, :cond_3

    move-object v1, v2

    .line 1592
    :cond_2
    :goto_0
    return-object v1

    .line 1580
    :cond_3
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1581
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1583
    .local v1, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkAlias(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    .line 1585
    goto :goto_0

    .line 1587
    .end local v1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 1592
    goto :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 1324
    const/4 v0, 0x0

    .line 1325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1651
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1652
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 1654
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1656
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1659
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, "l":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1662
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1663
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 1664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1669
    .end local v1    # "i":I
    .end local v2    # "l":[Ljava/lang/String;
    .end local v3    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1673
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    :cond_2
    return-object v4
.end method

.method public getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getVirtualHosts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1124
    const/4 v2, 0x0

    .line 1125
    .local v2, "old_classloader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 1126
    .local v1, "current_thread":Ljava/lang/Thread;
    const/4 v3, 0x0

    .line 1129
    .local v3, "old_context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_start_0
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object v3, v0

    .line 1130
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1133
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_0

    .line 1135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1136
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1137
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1140
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1145
    if-eqz v2, :cond_1

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1150
    :cond_1
    return-void

    .line 1144
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1145
    if-eqz v2, :cond_2

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    throw v4
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasesAllowed:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 652
    monitor-enter p0

    .line 654
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    monitor-exit p0

    return v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompactPath()Z
    .locals 1

    .prologue
    .line 1477
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    return v0
.end method

.method public isProtectedTarget(Ljava/lang/String;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1160
    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1161
    :cond_0
    const/4 v2, 0x0

    .line 1172
    :cond_1
    return v2

    .line 1163
    :cond_2
    :goto_0
    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1164
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1166
    :cond_3
    const/4 v2, 0x0

    .line 1167
    .local v2, "isProtected":Z
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .line 1168
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-nez v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1170
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lorg/eclipse/jetty/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 623
    monitor-enter p0

    .line 625
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1522
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1523
    const/4 v0, 0x0

    .line 1528
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 1526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p1, "urlOrPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1641
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1626
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1206
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public removeVirtualHosts([Ljava/lang/String;)V
    .locals 4
    .param p1, "virtualHosts"    # [Ljava/lang/String;

    .prologue
    .line 338
    if-nez p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v0, "existingVirtualHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 352
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "toRemoveVirtualHost":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    .end local v2    # "toRemoveVirtualHost":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0

    .line 365
    :cond_4
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_0
.end method

.method public restrictEventListener(Ljava/util/EventListener;)V
    .locals 0
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 613
    return-void
.end method

.method public setAliases(Z)V
    .locals 0
    .param p1, "aliases"    # Z

    .prologue
    .line 1373
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasesAllowed:Z

    .line 1374
    return-void
.end method

.method public setAllowNullPathInfo(Z)V
    .locals 0
    .param p1, "allowNullPathInfo"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    .line 247
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1218
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1219
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1220
    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/eclipse/jetty/util/Attributes;

    .prologue
    .line 1229
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1230
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/AttributesMap;->addAll(Lorg/eclipse/jetty/util/Attributes;)V

    .line 1231
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1232
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1234
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1235
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1237
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 664
    monitor-enter p0

    .line 666
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 667
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 668
    monitor-exit p0

    .line 669
    return-void

    .line 667
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "base"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 1335
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 1336
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1274
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    .line 1275
    return-void
.end method

.method public setCompactPath(Z)V
    .locals 0
    .param p1, "compactPath"    # Z

    .prologue
    .line 1487
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 1488
    return-void
.end method

.method public setConnectorNames([Ljava/lang/String;)V
    .locals 2
    .param p1, "connectors"    # [Ljava/lang/String;

    .prologue
    .line 407
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 1284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ends with /"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1286
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 1288
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->isStarting()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1290
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 1291
    .local v0, "contextCollections":[Lorg/eclipse/jetty/server/Handler;
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    if-eqz v0, :cond_2

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1292
    aget-object v2, v0, v1

    check-cast v2, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 1291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1294
    .end local v0    # "contextCollections":[Lorg/eclipse/jetty/server/Handler;
    .end local v1    # "h":I
    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletContextName"    # Ljava/lang/String;

    .prologue
    .line 1303
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    .line 1304
    return-void
.end method

.method public setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 6
    .param p1, "errorHandler"    # Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .prologue
    .line 1432
    if-eqz p1, :cond_0

    .line 1433
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 1434
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1435
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v4, "errorHandler"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1436
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .line 1437
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Ljava/util/EventListener;

    .prologue
    const/4 v2, 0x0

    .line 559
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 560
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 561
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 562
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 564
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    .line 566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_4

    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 568
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    aget-object v1, v2, v0

    .line 570
    .local v1, "listener":Ljava/util/EventListener;
    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 573
    :cond_0
    instance-of v2, v1, Ljavax/servlet/ServletContextAttributeListener;

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 576
    :cond_1
    instance-of v2, v1, Ljavax/servlet/ServletRequestListener;

    if-eqz v2, :cond_2

    .line 577
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 579
    :cond_2
    instance-of v2, v1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v2, :cond_3

    .line 580
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 566
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "listener":Ljava/util/EventListener;
    :cond_4
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLogger(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/eclipse/jetty/util/log/Logger;

    .prologue
    .line 680
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    .line 681
    return-void
.end method

.method public setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1264
    .local v2, "old":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1265
    return-void
.end method

.method public setMaxFormContentSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 1452
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    .line 1453
    return-void
.end method

.method public setMaxFormKeys(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 1468
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    .line 1469
    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0
    .param p1, "mimeTypes"    # Lorg/eclipse/jetty/http/MimeTypes;

    .prologue
    .line 1394
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1395
    return-void
.end method

.method public setProtectedTargets([Ljava/lang/String;)V
    .locals 3
    .param p1, "targets"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1178
    if-nez p1, :cond_0

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    .line 1186
    :goto_0
    return-void

    .line 1184
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 1347
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    return-void

    .line 1349
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    .line 256
    .local v12, "old_server":Lorg/eclipse/jetty/server/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 257
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v4, "error"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 259
    if-eqz p1, :cond_1

    if-eq p1, v12, :cond_1

    .line 260
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v10, "error"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 261
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 265
    .end local v12    # "old_server":Lorg/eclipse/jetty/server/Server;
    :goto_0
    return-void

    .line 264
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0
.end method

.method public setShutdown(Z)V
    .locals 1
    .param p1, "shutdown"    # Z

    .prologue
    .line 639
    monitor-enter p0

    .line 641
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 642
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 643
    monitor-exit p0

    .line 644
    return-void

    .line 642
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVirtualHosts([Ljava/lang/String;)V
    .locals 3
    .param p1, "vhosts"    # [Ljava/lang/String;

    .prologue
    .line 279
    if-nez p1, :cond_1

    .line 281
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 289
    :cond_0
    return-void

    .line 285
    :cond_1
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 287
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0
    .param p1, "files"    # [Ljava/lang/String;

    .prologue
    .line 1402
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 1403
    return-void
.end method

.method protected startContext()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 746
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    const-string v12, "org.eclipse.jetty.server.context.ManagedAttributes"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 747
    .local v8, "managedAttributes":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 749
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    .line 750
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "attributes":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, v0, v6

    .line 752
    .local v1, "attribute":Ljava/lang/String;
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 754
    .end local v1    # "attribute":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 755
    .local v3, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 757
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 758
    .local v9, "name":Ljava/lang/String;
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v11, v9}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 759
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 763
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "attributes":[Ljava/lang/String;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 765
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v11, :cond_2

    .line 766
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->start()V

    .line 769
    :cond_2
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v11, :cond_3

    .line 771
    new-instance v4, Ljavax/servlet/ServletContextEvent;

    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v4, v11}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 772
    .local v4, "event":Ljavax/servlet/ServletContextEvent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 774
    iget-object v11, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v11, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/servlet/ServletContextListener;

    invoke-virtual {p0, v11, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->callContextInitialized(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V

    .line 772
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 777
    .end local v4    # "event":Ljavax/servlet/ServletContextEvent;
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x2c

    const/4 v11, 0x0

    .line 1494
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v8

    .line 1496
    .local v8, "vhosts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1498
    .local v1, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    .line 1499
    .local v5, "pkg":Ljava/lang/Package;
    if-eqz v5, :cond_0

    .line 1501
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1502
    .local v4, "p":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1504
    const-string v9, "\\."

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1505
    .local v7, "ss":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 1506
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1505
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1509
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "ss":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    const/16 v9, 0x7b

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1512
    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    .line 1513
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :cond_1
    const/16 v9, 0x7d

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
