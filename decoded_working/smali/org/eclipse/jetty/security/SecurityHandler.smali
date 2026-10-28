.class public abstract Lorg/eclipse/jetty/security/SecurityHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "SecurityHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/SecurityHandler$4;,
        Lorg/eclipse/jetty/security/SecurityHandler$NotChecked;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static __NOBODY:Ljava/security/Principal;

.field public static __NO_USER:Ljava/security/Principal;


# instance fields
.field private _authMethod:Ljava/lang/String;

.field private _authenticator:Lorg/eclipse/jetty/security/Authenticator;

.field private _authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

.field private _checkWelcomeFiles:Z

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private final _initParameters:Ljava/util/Map;
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

.field private _loginService:Lorg/eclipse/jetty/security/LoginService;

.field private _loginServiceShared:Z

.field private _realmName:Ljava/lang/String;

.field private _renewSession:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 647
    new-instance v0, Lorg/eclipse/jetty/security/SecurityHandler$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/SecurityHandler$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    .line 671
    new-instance v0, Lorg/eclipse/jetty/security/SecurityHandler$3;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/SecurityHandler$3;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 71
    new-instance v0, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_renewSession:Z

    .line 83
    return-void
.end method

.method public static getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;
    .locals 4

    .prologue
    .line 582
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 583
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-nez v0, :cond_0

    .line 584
    const/4 v1, 0x0

    .line 587
    :goto_0
    return-object v1

    .line 586
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/SecurityHandler;

    .line 587
    .local v1, "security":Lorg/eclipse/jetty/security/SecurityHandler;
    goto :goto_0
.end method


# virtual methods
.method protected checkSecurity(Lorg/eclipse/jetty/server/Request;)Z
    .locals 4
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 402
    sget-object v2, Lorg/eclipse/jetty/security/SecurityHandler$4;->$SwitchMap$javax$servlet$DispatcherType:[I

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/servlet/DispatcherType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 415
    :goto_0
    :pswitch_0
    return v0

    .line 408
    :pswitch_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    if-eqz v2, :cond_0

    const-string v2, "org.eclipse.jetty.server.welcome"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 410
    const-string v1, "org.eclipse.jetty.server.welcome"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/server/Request;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 413
    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected doStart()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v6

    .line 288
    .local v6, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-eqz v6, :cond_2

    .line 290
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v8

    .line 291
    .local v8, "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 294
    .local v7, "name":Ljava/lang/String;
    const-string v0, "org.eclipse.jetty.security."

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/security/SecurityHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 300
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/security/SecurityHandler$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/security/SecurityHandler$1;-><init>(Lorg/eclipse/jetty/security/SecurityHandler;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 329
    .end local v8    # "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-nez v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->findLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v0, :cond_3

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    .line 336
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_6

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 342
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_5

    .line 343
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->findIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 345
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 346
    new-instance v0, Lorg/eclipse/jetty/security/DefaultIdentityService;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultIdentityService;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 349
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    if-nez v0, :cond_a

    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/LoginService;->setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V

    .line 357
    :cond_7
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_8

    .line 358
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    .line 360
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_9

    .line 362
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v5, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/security/Authenticator$Factory;->getAuthenticator(Lorg/eclipse/jetty/server/Server;Ljavax/servlet/ServletContext;Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;Lorg/eclipse/jetty/security/IdentityService;Lorg/eclipse/jetty/security/LoginService;)Lorg/eclipse/jetty/security/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/Authenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 367
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    if-nez v0, :cond_b

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 371
    sget-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ServerAuthentication for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ServerAuthentication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eq v0, v1, :cond_7

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginService has different IdentityService to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_b
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/security/Authenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 378
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    .line 382
    :cond_c
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 383
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 392
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 394
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 397
    :cond_0
    return-void
.end method

.method protected findIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/security/IdentityService;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method protected findLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 6

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    const-class v5, Lorg/eclipse/jetty/security/LoginService;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/Server;->getBeans(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 261
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/LoginService;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getRealmName()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "realm":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/security/LoginService;

    .line 265
    .local v3, "service":Lorg/eclipse/jetty/security/LoginService;
    invoke-interface {v3}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "service":Lorg/eclipse/jetty/security/LoginService;
    :goto_0
    return-object v3

    .line 268
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 269
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/security/LoginService;

    move-object v3, v4

    goto :goto_0

    .line 270
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticator()Lorg/eclipse/jetty/security/Authenticator;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    return-object v0
.end method

.method public getAuthenticatorFactory()Lorg/eclipse/jetty/security/Authenticator$Factory;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    return-object v0
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public getRealmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 21
    .param p1, "pathInContext"    # Ljava/lang/String;
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
    .line 448
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v8

    .line 449
    .local v8, "base_response":Lorg/eclipse/jetty/server/Response;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v17

    .line 451
    .local v17, "handler":Lorg/eclipse/jetty/server/Handler;
    if-nez v17, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 456
    .local v13, "authenticator":Lorg/eclipse/jetty/security/Authenticator;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/SecurityHandler;->checkSecurity(Lorg/eclipse/jetty/server/Request;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 458
    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jetty/security/SecurityHandler;->prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;

    move-result-object v9

    .line 461
    .local v9, "constraintInfo":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/security/SecurityHandler;->checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 463
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 465
    const/16 v5, 0x193

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 466
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 472
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v9}, Lorg/eclipse/jetty/security/SecurityHandler;->isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z

    move-result v18

    .line 475
    .local v18, "isAuthMandatory":Z
    if-eqz v18, :cond_3

    if-nez v13, :cond_3

    .line 477
    sget-object v5, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No authenticator for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 480
    const/16 v5, 0x193

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 481
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 487
    :cond_3
    const/16 v19, 0x0

    .line 490
    .local v19, "previousIdentity":Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v12

    .line 491
    .local v12, "authentication":Lorg/eclipse/jetty/server/Authentication;
    if-eqz v12, :cond_4

    sget-object v5, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    if-ne v12, v5, :cond_5

    .line 492
    :cond_4
    if-nez v13, :cond_8

    sget-object v12, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    .line 494
    :cond_5
    :goto_1
    instance-of v5, v12, Lorg/eclipse/jetty/server/Authentication$Wrapped;

    if-eqz v5, :cond_6

    .line 496
    move-object v0, v12

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Wrapped;

    move-object v5, v0

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Authentication$Wrapped;->getHttpServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p3

    .line 497
    move-object v0, v12

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Wrapped;

    move-object v5, v0

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Authentication$Wrapped;->getHttpServletResponse()Ljavax/servlet/http/HttpServletResponse;

    move-result-object p4

    .line 500
    :cond_6
    instance-of v5, v12, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-eqz v5, :cond_9

    .line 502
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v19    # "previousIdentity":Ljava/lang/Object;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 492
    .restart local v19    # "previousIdentity":Ljava/lang/Object;
    :cond_8
    :try_start_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-interface {v13, v0, v1, v2}, Lorg/eclipse/jetty/security/Authenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v12

    goto :goto_1

    .line 504
    :cond_9
    instance-of v5, v12, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v5, :cond_c

    .line 506
    move-object v0, v12

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object/from16 v20, v0

    .line 507
    .local v20, "userAuth":Lorg/eclipse/jetty/server/Authentication$User;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_a

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v19

    .line 511
    .end local v19    # "previousIdentity":Ljava/lang/Object;
    :cond_a
    if-eqz v18, :cond_b

    .line 513
    invoke-interface/range {v20 .. v20}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jetty/security/SecurityHandler;->checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z

    move-result v14

    .line 514
    .local v14, "authorized":Z
    if-nez v14, :cond_b

    .line 516
    const/16 v5, 0x193

    const-string v6, "!role"

    move-object/from16 v0, p4

    invoke-interface {v0, v5, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 517
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_1
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 522
    .end local v14    # "authorized":Z
    :cond_b
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 523
    if-eqz v13, :cond_7

    .line 524
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v13, v0, v1, v2, v3}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_2
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 562
    .end local v12    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .end local v20    # "userAuth":Lorg/eclipse/jetty/server/Authentication$User;
    :catch_0
    move-exception v16

    .line 566
    .local v16, "e":Lorg/eclipse/jetty/security/ServerAuthException;
    const/16 v5, 0x1f4

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/security/ServerAuthException;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v5, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 526
    .end local v16    # "e":Lorg/eclipse/jetty/security/ServerAuthException;
    .restart local v12    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .restart local v19    # "previousIdentity":Ljava/lang/Object;
    :cond_c
    :try_start_4
    instance-of v5, v12, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v5, :cond_f

    .line 528
    move-object v0, v12

    check-cast v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object v15, v0

    .line 529
    .local v15, "deferred":Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V
    :try_end_4
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    :try_start_5
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 537
    :try_start_6
    invoke-virtual {v15}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->getPreviousAssociation()Ljava/lang/Object;

    move-result-object v19

    .line 540
    if-eqz v13, :cond_7

    .line 542
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v11

    .line 543
    .local v11, "auth":Lorg/eclipse/jetty/server/Authentication;
    instance-of v5, v11, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v5, :cond_e

    .line 545
    move-object v0, v11

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object/from16 v20, v0

    .line 546
    .restart local v20    # "userAuth":Lorg/eclipse/jetty/server/Authentication$User;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v13, v0, v1, v2, v3}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_6
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 570
    .end local v11    # "auth":Lorg/eclipse/jetty/server/Authentication;
    .end local v12    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .end local v15    # "deferred":Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
    .end local v19    # "previousIdentity":Ljava/lang/Object;
    .end local v20    # "userAuth":Lorg/eclipse/jetty/server/Authentication$User;
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v6, :cond_d

    .line 571
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    :cond_d
    throw v5

    .line 537
    .restart local v12    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .restart local v15    # "deferred":Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
    .restart local v19    # "previousIdentity":Ljava/lang/Object;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {v15}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->getPreviousAssociation()Ljava/lang/Object;

    move-result-object v19

    throw v5

    .line 549
    .restart local v11    # "auth":Lorg/eclipse/jetty/server/Authentication;
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-interface {v13, v0, v1, v2, v5}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z

    goto/16 :goto_2

    .line 554
    .end local v11    # "auth":Lorg/eclipse/jetty/server/Authentication;
    .end local v15    # "deferred":Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
    :cond_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v5, :cond_10

    .line 556
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v19

    .line 557
    .end local v19    # "previousIdentity":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 558
    if-eqz v13, :cond_7

    .line 559
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-interface {v13, v0, v1, v2, v5}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_7
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 575
    .end local v9    # "constraintInfo":Ljava/lang/Object;
    .end local v12    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .end local v18    # "isAuthMandatory":Z
    :cond_11
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_0
.end method

.method protected abstract isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
.end method

.method public isCheckWelcomeFiles()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    return v0
.end method

.method public isSessionRenewedOnAuthentication()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_renewSession:Z

    return v0
.end method

.method public logout(Lorg/eclipse/jetty/server/Authentication$User;)V
    .locals 7
    .param p1, "user"    # Lorg/eclipse/jetty/server/Authentication$User;

    .prologue
    .line 593
    sget-object v3, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "logout {}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v1

    .line 595
    .local v1, "login_service":Lorg/eclipse/jetty/security/LoginService;
    if-eqz v1, :cond_0

    .line 597
    invoke-interface {p1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/security/LoginService;->logout(Lorg/eclipse/jetty/server/UserIdentity;)V

    .line 600
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    .line 601
    .local v0, "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    if-eqz v0, :cond_1

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "previous":Ljava/lang/Object;
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    .line 607
    .end local v2    # "previous":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method protected abstract prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;
.end method

.method public setAuthMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "authMethod"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setAuthenticator(Lorg/eclipse/jetty/security/Authenticator;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/eclipse/jetty/security/Authenticator;

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 143
    return-void
.end method

.method public setAuthenticatorFactory(Lorg/eclipse/jetty/security/Authenticator$Factory;)V
    .locals 2
    .param p1, "authenticatorFactory"    # Lorg/eclipse/jetty/security/Authenticator$Factory;

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    .line 164
    return-void
.end method

.method public setCheckWelcomeFiles(Z)V
    .locals 2
    .param p1, "authenticateWelcomeFiles"    # Z

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 228
    return-void
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 2
    .param p1, "identityService"    # Lorg/eclipse/jetty/security/IdentityService;

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 103
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLoginService(Lorg/eclipse/jetty/security/LoginService;)V
    .locals 2
    .param p1, "loginService"    # Lorg/eclipse/jetty/security/LoginService;

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    .line 124
    return-void
.end method

.method public setRealmName(Ljava/lang/String;)V
    .locals 2
    .param p1, "realmName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSessionRenewedOnAuthentication(Z)V
    .locals 0
    .param p1, "renew"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_renewSession:Z

    .line 437
    return-void
.end method
