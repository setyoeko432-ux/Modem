.class public Lorg/eclipse/jetty/webapp/WebAppContext;
.super Lorg/eclipse/jetty/servlet/ServletContextHandler;
.source "WebAppContext.java"

# interfaces
.implements Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/WebAppContext$1;,
        Lorg/eclipse/jetty/webapp/WebAppContext$Context;
    }
.end annotation


# static fields
.field public static final BASETEMPDIR:Ljava/lang/String; = "org.eclipse.jetty.webapp.basetempdir"

.field public static final ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final SERVER_CONFIG:Ljava/lang/String; = "org.eclipse.jetty.webapp.configuration"

.field public static final SERVER_SRV_CLASSES:Ljava/lang/String; = "org.eclipse.jetty.webapp.serverClasses"

.field public static final SERVER_SYS_CLASSES:Ljava/lang/String; = "org.eclipse.jetty.webapp.systemClasses"

.field public static final TEMPDIR:Ljava/lang/String; = "javax.servlet.context.tempdir"

.field public static final WEB_DEFAULTS_XML:Ljava/lang/String; = "org/eclipse/jetty/webapp/webdefault.xml"

.field private static __dftConfigurationClasses:[Ljava/lang/String;

.field public static final __dftServerClasses:[Ljava/lang/String;

.field public static final __dftSystemClasses:[Ljava/lang/String;


# instance fields
.field private __dftProtectedTargets:[Ljava/lang/String;

.field private _allowDuplicateFragmentNames:Z

.field private _configurationClasses:[Ljava/lang/String;

.field private _configurationClassesSet:Z

.field private _configurationDiscovered:Z

.field private _configurations:[Lorg/eclipse/jetty/webapp/Configuration;

.field private _configurationsSet:Z

.field private _contextWhiteList:[Ljava/lang/String;

.field private _copyDir:Z

.field private _copyWebInf:Z

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _descriptor:Ljava/lang/String;

.field private _distributable:Z

.field private _extraClasspath:Ljava/lang/String;

.field private _extractWAR:Z

.field private _logUrlOnStart:Z

.field private _metadata:Lorg/eclipse/jetty/webapp/MetaData;

.field private final _overrideDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ownClassLoader:Z

.field private _parentLoaderPriority:Z

.field private _permissions:Ljava/security/PermissionCollection;

.field private _resourceAliases:Ljava/util/Map;
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

.field private _serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

.field private _systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

.field private _throwUnavailableOnStartupException:Z

.field private _tmpDir:Ljava/io/File;

.field private _unavailableException:Ljava/lang/Throwable;

.field private _war:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const-class v0, Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.eclipse.jetty.webapp.WebInfConfiguration"

    aput-object v1, v0, v3

    const-string v1, "org.eclipse.jetty.webapp.WebXmlConfiguration"

    aput-object v1, v0, v4

    const-string v1, "org.eclipse.jetty.webapp.MetaInfConfiguration"

    aput-object v1, v0, v5

    const-string v1, "org.eclipse.jetty.webapp.FragmentConfiguration"

    aput-object v1, v0, v6

    const-string v1, "org.eclipse.jetty.webapp.JettyWebXmlConfiguration"

    aput-object v1, v0, v7

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    .line 112
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "java."

    aput-object v1, v0, v3

    const-string v1, "javax."

    aput-object v1, v0, v4

    const-string v1, "org.xml."

    aput-object v1, v0, v5

    const-string v1, "org.w3c."

    aput-object v1, v0, v6

    const-string v1, "org.apache.commons.logging."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "org.eclipse.jetty.continuation."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "org.eclipse.jetty.jndi."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "org.eclipse.jetty.plus.jaas."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "org.eclipse.jetty.websocket.WebSocket"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "org.eclipse.jetty.websocket.WebSocketFactory"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "org.eclipse.jetty.websocket.WebSocketServlet"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "org.eclipse.jetty.servlet.DefaultServlet"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftSystemClasses:[Ljava/lang/String;

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-org.eclipse.jetty.continuation."

    aput-object v1, v0, v3

    const-string v1, "-org.eclipse.jetty.jndi."

    aput-object v1, v0, v4

    const-string v1, "-org.eclipse.jetty.plus.jaas."

    aput-object v1, v0, v5

    const-string v1, "-org.eclipse.jetty.websocket.WebSocket"

    aput-object v1, v0, v6

    const-string v1, "-org.eclipse.jetty.websocket.WebSocketFactory"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "-org.eclipse.jetty.websocket.WebSocketServlet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-org.eclipse.jetty.servlet.DefaultServlet"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-org.eclipse.jetty.servlet.listener."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "org.eclipse.jetty."

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftServerClasses:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(I)V

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/web-inf"

    aput-object v1, v0, v2

    const-string v1, "/meta-inf"

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    .line 145
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 146
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 147
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 150
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 153
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 154
    iput-boolean v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 155
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 156
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 157
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 158
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 161
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 169
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 170
    iput-boolean v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 171
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 172
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 173
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 174
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 178
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 196
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 197
    new-instance v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setProtectedTargets([Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "webApp"    # Ljava/lang/String;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, v3, p2, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/web-inf"

    aput-object v1, v0, v2

    const-string v1, "/meta-inf"

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    .line 145
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 146
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 147
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 150
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 153
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 154
    iput-boolean v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 155
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 156
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 157
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 158
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 161
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 169
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 170
    iput-boolean v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 171
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 172
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 173
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 174
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 178
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 209
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 210
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setProtectedTargets([Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "webApp"    # Ljava/lang/String;
    .param p3, "contextPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    const/4 v0, 0x3

    invoke-direct {p0, p1, p3, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/web-inf"

    aput-object v1, v0, v2

    const-string v1, "/meta-inf"

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    .line 145
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 146
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 147
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 150
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 153
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 154
    iput-boolean v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 155
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 156
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 157
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 158
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 161
    iput-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 169
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 170
    iput-boolean v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 171
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 172
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 173
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 174
    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 178
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 225
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 226
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 227
    new-instance v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 228
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setProtectedTargets([Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 8
    .param p1, "sessionHandler"    # Lorg/eclipse/jetty/server/session/SessionHandler;
    .param p2, "securityHandler"    # Lorg/eclipse/jetty/security/SecurityHandler;
    .param p3, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;
    .param p4, "errorHandler"    # Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 242
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "/web-inf"

    aput-object v2, v0, v6

    const-string v2, "/meta-inf"

    aput-object v2, v0, v7

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    .line 145
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 147
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 150
    const-string v0, "org/eclipse/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    .line 153
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 154
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 155
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 156
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 157
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 158
    const-string v0, "org.eclipse.jetty.server.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 161
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 169
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 170
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 171
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 172
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 173
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 174
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 178
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v0}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    .line 243
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppContext$Context;-><init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 244
    if-eqz p4, :cond_0

    .end local p4    # "errorHandler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    :goto_0
    invoke-virtual {p0, p4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftProtectedTargets:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setProtectedTargets([Ljava/lang/String;)V

    .line 246
    return-void

    .line 244
    .restart local p4    # "errorHandler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    :cond_0
    new-instance p4, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    .end local p4    # "errorHandler":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    invoke-direct {p4}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/webapp/WebAppContext;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method private dumpUrl()V
    .locals 7

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v1

    .line 573
    .local v1, "connectors":[Lorg/eclipse/jetty/server/Connector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 575
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "connectorName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "displayName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebApp@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    :cond_0
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "connectorName":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getCurrentWebAppContext()Lorg/eclipse/jetty/webapp/WebAppContext;
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 183
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 186
    .local v1, "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    instance-of v2, v1, Lorg/eclipse/jetty/webapp/WebAppContext;

    if-eqz v2, :cond_0

    .line 187
    check-cast v1, Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 189
    .end local v1    # "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadServerClasses()V
    .locals 4

    .prologue
    .line 729
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-eqz v2, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 737
    .local v0, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v0, :cond_2

    .line 739
    const-string v2, "org.eclipse.jetty.webapp.serverClasses"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 740
    .local v1, "serverClasses":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 742
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    check-cast v1, [Ljava/lang/String;

    .end local v1    # "serverClasses":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 746
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v2, :cond_0

    .line 748
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftServerClasses:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    goto :goto_0
.end method


# virtual methods
.method public addOverrideDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "overrideDescriptor"    # Ljava/lang/String;

    .prologue
    .line 939
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    return-void
.end method

.method public addServerClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 661
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPattern(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public addSystemClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 685
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPattern(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public configure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 467
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "configure {} with {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/webapp/Configuration;->configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 545
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 546
    .local v3, "mx":Lorg/eclipse/jetty/util/MultiException;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    if-eqz v4, :cond_0

    .line 548
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_0

    .line 552
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v4, v4, v1

    invoke-interface {v4, p0}, Lorg/eclipse/jetty/webapp/Configuration;->destroy(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 557
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 554
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v2, v1

    .line 557
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 561
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroy()V

    .line 562
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowRuntime()V

    .line 563
    return-void
.end method

.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isAllowDuplicateFragmentNames()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setAllowDuplicateFragmentNames(Z)V

    .line 493
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->preConfigure()V

    .line 494
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->doStart()V

    .line 495
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->postConfigure()V

    .line 497
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isLogUrlOnStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->dumpUrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed startup of context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    .line 505
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAvailable(Z)V

    .line 506
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isThrowUnavailableOnStartupException()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    throw v0
.end method

.method protected doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->doStop()V

    .line 522
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v0, v2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 523
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lorg/eclipse/jetty/webapp/Configuration;->deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 525
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/MetaData;->clear()V

    .line 527
    :cond_1
    new-instance v2, Lorg/eclipse/jetty/webapp/MetaData;

    invoke-direct {v2}, Lorg/eclipse/jetty/webapp/MetaData;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iget-boolean v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    if-eqz v2, :cond_2

    .line 533
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 535
    :cond_2
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAvailable(Z)V

    .line 536
    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    .line 538
    return-void

    .line 532
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    if-eqz v3, :cond_3

    .line 533
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 535
    :cond_3
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAvailable(Z)V

    .line 536
    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    throw v2
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurations()[Lorg/eclipse/jetty/webapp/Configuration;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    return-object v0
.end method

.method public getDefaultConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultServerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftServerClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSystemClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    sget-object v0, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftSystemClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraClasspath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extraClasspath:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Lorg/eclipse/jetty/webapp/MetaData;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    return-object v0
.end method

.method public getOverrideDescriptor()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 623
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOverrideDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_permissions:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 7
    .param p1, "uriInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 350
    if-eqz p1, :cond_0

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 351
    :cond_0
    new-instance v6, Ljava/net/MalformedURLException;

    invoke-direct {v6, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 353
    :cond_1
    const/4 v1, 0x0

    .line 354
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 355
    .local v4, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v2, 0x0

    .local v2, "loop":I
    move v3, v2

    .line 356
    .end local v2    # "loop":I
    .local v3, "loop":I
    :goto_0
    if-eqz p1, :cond_4

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    const/16 v6, 0x64

    if-ge v3, v6, :cond_5

    .line 360
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 361
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, v4

    .line 377
    .end local v4    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .local v5, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v5

    .line 364
    .end local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v4    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move v3, v2

    .line 371
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .line 366
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 369
    if-nez v1, :cond_3

    .line 370
    move-object v1, v0

    :cond_3
    move v3, v2

    .line 371
    .end local v2    # "loop":I
    .restart local v3    # "loop":I
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    move v2, v3

    .line 374
    .end local v3    # "loop":I
    .restart local v2    # "loop":I
    :cond_5
    if-eqz v1, :cond_6

    instance-of v6, v1, Ljava/net/MalformedURLException;

    if-eqz v6, :cond_6

    .line 375
    check-cast v1, Ljava/net/MalformedURLException;

    .end local v1    # "ioe":Ljava/io/IOException;
    throw v1

    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_6
    move-object v5, v4

    .line 377
    .end local v4    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    goto :goto_1
.end method

.method public getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 304
    const/4 v0, 0x0

    .line 317
    :cond_0
    return-object v0

    .line 305
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 308
    .local v2, "slash":I
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    .line 310
    const-string v3, "/"

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 311
    if-ltz v2, :cond_0

    .line 313
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    const/4 v4, 0x0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "match":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceAliases()Ljava/util/Map;
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
    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    goto :goto_0
.end method

.method public getServerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 655
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->getPatterns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 676
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->getPatterns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    return-object v0
.end method

.method public getUnavailableException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getWar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    return-object v0
.end method

.method public getWebInf()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 766
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 774
    :cond_0
    :goto_0
    return-object v0

    .line 770
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    const-string v3, "WEB-INF/"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 771
    .local v0, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 772
    goto :goto_0
.end method

.method public isAllowDuplicateFragmentNames()Z
    .locals 1

    .prologue
    .line 1210
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    return v0
.end method

.method public isConfigurationDiscovered()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    return v0
.end method

.method public isCopyWebDir()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    return v0
.end method

.method public isCopyWebInf()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    return v0
.end method

.method public isDistributable()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    return v0
.end method

.method public isExtractWAR()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    return v0
.end method

.method public isLogUrlOnStart()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    return v0
.end method

.method public isServerClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 691
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isThrowUnavailableOnStartupException()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    return v0
.end method

.method protected loadConfigurations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    if-eqz v1, :cond_1

    .line 861
    :cond_0
    return-void

    .line 853
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    if-nez v1, :cond_2

    .line 854
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 856
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lorg/eclipse/jetty/webapp/Configuration;

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 857
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 859
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/webapp/Configuration;

    aput-object v1, v2, v0

    .line 857
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected loadSystemClasses()V
    .locals 4

    .prologue
    .line 709
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-eqz v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 715
    .local v0, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v0, :cond_2

    .line 717
    const-string v2, "org.eclipse.jetty.webapp.systemClasses"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 718
    .local v1, "systemClasses":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 719
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    check-cast v1, [Ljava/lang/String;

    .end local v1    # "systemClasses":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 722
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    if-nez v2, :cond_0

    .line 723
    new-instance v2, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->__dftSystemClasses:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    goto :goto_0
.end method

.method public postConfigure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 478
    sget-object v1, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "postConfigure {} with {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/webapp/Configuration;->postConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method public preConfigure()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 424
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadConfigurations()V

    .line 427
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadSystemClasses()V

    .line 430
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadServerClasses()V

    .line 433
    iput-boolean v7, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 434
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_0

    .line 436
    new-instance v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;-><init>(Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;)V

    .line 437
    .local v0, "classLoader":Lorg/eclipse/jetty/webapp/WebAppClassLoader;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 438
    iput-boolean v8, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 441
    .end local v0    # "classLoader":Lorg/eclipse/jetty/webapp/WebAppClassLoader;
    :cond_0
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 444
    .local v2, "loader":Ljava/lang/ClassLoader;
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Thread Context classloader {}"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 446
    :goto_0
    if-eqz v2, :cond_1

    .line 448
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Parent class loader: {} "

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    .line 454
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 456
    sget-object v3, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "preConfigure {} with {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v7

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    aget-object v3, v3, v1

    invoke-interface {v3, p0}, Lorg/eclipse/jetty/webapp/Configuration;->preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_2
    return-void
.end method

.method public removeResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setAllowDuplicateFragmentNames(Z)V
    .locals 0
    .param p1, "allowDuplicateFragmentNames"    # Z

    .prologue
    .line 1217
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_allowDuplicateFragmentNames:Z

    .line 1218
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 335
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 342
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    check-cast p1, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    .line 344
    :cond_0
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 2
    .param p1, "configurations"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 879
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 881
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    .line 883
    iput-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 884
    return-void

    .line 881
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setConfigurationDiscovered(Z)V
    .locals 0
    .param p1, "discovered"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationDiscovered:Z

    .line 404
    return-void
.end method

.method public setConfigurations([Lorg/eclipse/jetty/webapp/Configuration;)V
    .locals 1
    .param p1, "configurations"    # [Lorg/eclipse/jetty/webapp/Configuration;

    .prologue
    .line 892
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 894
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurations:[Lorg/eclipse/jetty/webapp/Configuration;

    .line 895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    .line 896
    return-void

    .line 894
    :cond_1
    invoke-virtual {p1}, [Lorg/eclipse/jetty/webapp/Configuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/webapp/Configuration;

    check-cast v0, [Lorg/eclipse/jetty/webapp/Configuration;

    goto :goto_0
.end method

.method public setContextWhiteList([Ljava/lang/String;)V
    .locals 0
    .param p1, "contextWhiteList"    # [Ljava/lang/String;

    .prologue
    .line 1052
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_contextWhiteList:[Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public setCopyWebDir(Z)V
    .locals 0
    .param p1, "copy"    # Z

    .prologue
    .line 1011
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 1012
    return-void
.end method

.method public setCopyWebInf(Z)V
    .locals 0
    .param p1, "copyWebInf"    # Z

    .prologue
    .line 1020
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_copyWebInf:Z

    .line 1021
    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultsDescriptor"    # Ljava/lang/String;

    .prologue
    .line 905
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 957
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 958
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p1, "servletContextName"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setDisplayName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 257
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 258
    check-cast v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setDistributable(Z)V
    .locals 0
    .param p1, "distributable"    # Z

    .prologue
    .line 966
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_distributable:Z

    .line 967
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Ljava/util/EventListener;

    .prologue
    .line 973
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/SessionHandler;->clearEventListeners()V

    .line 976
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 978
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_3

    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 980
    aget-object v1, p1, v0

    .line 982
    .local v1, "listener":Ljava/util/EventListener;
    instance-of v2, v1, Ljavax/servlet/http/HttpSessionActivationListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionBindingListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v2, :cond_2

    .line 987
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v2, :cond_2

    .line 988
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/server/session/SessionHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 978
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    .end local v1    # "listener":Ljava/util/EventListener;
    :cond_3
    return-void
.end method

.method public setExtraClasspath(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraClasspath"    # Ljava/lang/String;

    .prologue
    .line 1168
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extraClasspath:Ljava/lang/String;

    .line 1169
    return-void
.end method

.method public setExtractWAR(Z)V
    .locals 0
    .param p1, "extractWAR"    # Z

    .prologue
    .line 1002
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 1003
    return-void
.end method

.method public setLogUrlOnStart(Z)V
    .locals 0
    .param p1, "logOnStart"    # Z

    .prologue
    .line 1185
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 1186
    return-void
.end method

.method public setOverrideDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "overrideDescriptor"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 918
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    return-void
.end method

.method public setOverrideDescriptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, "overrideDescriptors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 929
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_overrideDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 930
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0
    .param p1, "java2compliant"    # Z

    .prologue
    .line 1029
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 1030
    return-void
.end method

.method public setPermissions(Ljava/security/PermissionCollection;)V
    .locals 0
    .param p1, "permissions"    # Ljava/security/PermissionCollection;

    .prologue
    .line 1038
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_permissions:Ljava/security/PermissionCollection;

    .line 1039
    return-void
.end method

.method public setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public setResourceAliases(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 297
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    .line 298
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 1193
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 1198
    iget-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationsSet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_configurationClassesSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1200
    const-string v1, "org.eclipse.jetty.webapp.configuration"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 1201
    .local v0, "serverConfigs":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 1204
    .end local v0    # "serverConfigs":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setServerClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "serverClasses"    # [Ljava/lang/String;

    .prologue
    .line 1072
    new-instance v0, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_serverClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 1073
    return-void
.end method

.method public setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;
    .locals 15
    .param p1, "registration"    # Ljavax/servlet/ServletRegistration$Dynamic;
    .param p2, "servletSecurityElement"    # Ljavax/servlet/ServletSecurityElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletRegistration$Dynamic;",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1267
    .local v11, "unchangedURLMappings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRegistration$Dynamic;->getMappings()Ljava/util/Collection;

    move-result-object v9

    .line 1268
    .local v9, "pathMappings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    .line 1270
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRegistration$Dynamic;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v1

    .line 1272
    .local v1, "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1274
    .local v10, "pathSpec":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "constraint.url."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1276
    .local v8, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/WebAppContext$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 1281
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRegistration$Dynamic;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v12, v10, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraintsWithMappingsForPath(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletSecurityElement;)Ljava/util/List;

    move-result-object v7

    .line 1282
    .local v7, "mappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 1283
    .local v6, "m":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jetty/security/ConstraintAware;

    invoke-interface {v12, v6}, Lorg/eclipse/jetty/security/ConstraintAware;->addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_1

    .line 1284
    .end local v6    # "m":Lorg/eclipse/jetty/security/ConstraintMapping;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "constraint.url."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lorg/eclipse/jetty/webapp/Origin;->API:Lorg/eclipse/jetty/webapp/Origin;

    invoke-virtual {v12, v13, v14}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Origin;)V

    goto :goto_0

    .line 1293
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "mappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    :pswitch_1
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1301
    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jetty/security/ConstraintAware;

    invoke-interface {v12}, Lorg/eclipse/jetty/security/ConstraintAware;->getConstraintMappings()Ljava/util/List;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->removeConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1303
    .local v2, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRegistration$Dynamic;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v12, v10, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraintsWithMappingsForPath(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletSecurityElement;)Ljava/util/List;

    move-result-object v3

    .line 1304
    .local v3, "freshMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1306
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v12

    check-cast v12, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;

    invoke-virtual {v12, v2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1313
    .end local v1    # "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    .end local v2    # "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    .end local v3    # "freshMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    .end local v8    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v10    # "pathSpec":Ljava/lang/String;
    :cond_1
    return-object v11

    .line 1276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setSystemClasses([Ljava/lang/String;)V
    .locals 1
    .param p1, "systemClasses"    # [Ljava/lang/String;

    .prologue
    .line 1092
    new-instance v0, Lorg/eclipse/jetty/webapp/ClasspathPattern;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_systemClasses:Lorg/eclipse/jetty/webapp/ClasspathPattern;

    .line 1093
    return-void
.end method

.method public setTempDirectory(Ljava/io/File;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 1103
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Started"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1106
    :cond_0
    if-eqz p1, :cond_1

    .line 1108
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "dir":Ljava/io/File;
    .local v0, "dir":Ljava/io/File;
    move-object p1, v0

    .line 1112
    .end local v0    # "dir":Ljava/io/File;
    .restart local p1    # "dir":Ljava/io/File;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1114
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 1115
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 1118
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1119
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad temp directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1109
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1123
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    if-eqz p1, :cond_5

    .line 1124
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1130
    :cond_5
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 1131
    const-string v2, "javax.servlet.context.tempdir"

    iget-object v3, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    return-void

    .line 1126
    :catch_1
    move-exception v1

    .line 1128
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/webapp/WebAppContext;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setThrowUnavailableOnStartupException(Z)V
    .locals 0
    .param p1, "throwIfStartupException"    # Z

    .prologue
    .line 1223
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_throwUnavailableOnStartupException:Z

    .line 1224
    return-void
.end method

.method public setWar(Ljava/lang/String;)V
    .locals 0
    .param p1, "war"    # Ljava/lang/String;

    .prologue
    .line 1146
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 1147
    return-void
.end method

.method protected startContext()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->configure()V

    .line 1240
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_metadata:Lorg/eclipse/jetty/webapp/MetaData;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/webapp/MetaData;->resolve(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 1242
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->startContext()V

    .line 1243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
