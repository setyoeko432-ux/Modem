.class public Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$Deferred;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field static final __deferredResponse:Ljavax/servlet/http/HttpServletResponse;

.field private static __nullOut:Ljavax/servlet/ServletOutputStream;


# instance fields
.field protected final _authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

.field private _previousAssociation:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 149
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    .line 319
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V
    .locals 2
    .param p1, "authenticator"    # Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No Authenticator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Ljavax/servlet/ServletOutputStream;

    return-object v0
.end method

.method public static isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 1
    .param p0, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 143
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
    .locals 8
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 68
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    sget-object v6, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Ljavax/servlet/http/HttpServletResponse;

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    .line 70
    .local v1, "authentication":Lorg/eclipse/jetty/server/Authentication;
    if-eqz v1, :cond_1

    instance-of v5, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v5, :cond_1

    instance-of v5, v1, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-nez v5, :cond_1

    .line 72
    iget-object v5, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v5}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v4

    .line 73
    .local v4, "login_service":Lorg/eclipse/jetty/security/LoginService;
    invoke-interface {v4}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v3

    .line 75
    .local v3, "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    if-eqz v3, :cond_0

    .line 76
    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v5, v0

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .end local v3    # "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    .end local v4    # "login_service":Lorg/eclipse/jetty/security/LoginService;
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Lorg/eclipse/jetty/security/ServerAuthException;
    sget-object v5, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .end local v2    # "e":Lorg/eclipse/jetty/security/ServerAuthException;
    :cond_1
    move-object v1, p0

    .line 86
    goto :goto_0
.end method

.method public authenticate(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/server/Authentication;
    .locals 7
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 97
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v5}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v4

    .line 98
    .local v4, "login_service":Lorg/eclipse/jetty/security/LoginService;
    invoke-interface {v4}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v3

    .line 100
    .local v3, "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    iget-object v5, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, p2, v6}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    .line 101
    .local v1, "authentication":Lorg/eclipse/jetty/server/Authentication;
    instance-of v5, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 102
    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v5, v0

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .end local v3    # "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    .end local v4    # "login_service":Lorg/eclipse/jetty/security/LoginService;
    :cond_0
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Lorg/eclipse/jetty/security/ServerAuthException;
    sget-object v5, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    move-object v1, p0

    .line 109
    goto :goto_0
.end method

.method public getPreviousAssociation()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/Object;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 118
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v3, p1, p2, p3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 119
    .local v1, "identity":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v1, :cond_1

    .line 121
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    .line 122
    .local v2, "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    new-instance v0, Lorg/eclipse/jetty/security/UserAuthentication;

    const-string v3, "API"

    invoke-direct {v0, v3, v1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    .line 123
    .local v0, "authentication":Lorg/eclipse/jetty/security/UserAuthentication;
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    .line 127
    .end local v0    # "authentication":Lorg/eclipse/jetty/security/UserAuthentication;
    .end local v2    # "identity_service":Lorg/eclipse/jetty/security/IdentityService;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
