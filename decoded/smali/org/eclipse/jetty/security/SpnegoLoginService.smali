.class public Lorg/eclipse/jetty/security/SpnegoLoginService;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SpnegoLoginService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/LoginService;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _config:Ljava/lang/String;

.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _name:Ljava/lang/String;

.field private _targetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/security/SpnegoLoginService;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/SpnegoLoginService;->setName(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/SpnegoLoginService;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/SpnegoLoginService;->setConfig(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 100
    .local v0, "properties":Ljava/util/Properties;
    iget-object v2, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_config:Ljava/lang/String;

    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 101
    .local v1, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 103
    const-string v2, "targetName"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_targetName:Ljava/lang/String;

    .line 105
    sget-object v2, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Target Name {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_targetName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 108
    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_config:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 15
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 115
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "encodedAuthToken":Ljava/lang/String;
    invoke-static {v2}, Lorg/eclipse/jetty/util/security/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    .local v0, "authToken":[B
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v7

    .line 122
    .local v7, "manager":Lorg/ietf/jgss/GSSManager;
    :try_start_0
    new-instance v6, Lorg/ietf/jgss/Oid;

    const-string v12, "1.3.6.1.5.5.2"

    invoke-direct {v6, v12}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 123
    .local v6, "krb5Oid":Lorg/ietf/jgss/Oid;
    iget-object v12, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_targetName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v4

    .line 124
    .local v4, "gssName":Lorg/ietf/jgss/GSSName;
    const v12, 0x7fffffff

    const/4 v13, 0x2

    invoke-virtual {v7, v4, v12, v6, v13}, Lorg/ietf/jgss/GSSManager;->createCredential(Lorg/ietf/jgss/GSSName;ILorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;

    move-result-object v9

    .line 125
    .local v9, "serverCreds":Lorg/ietf/jgss/GSSCredential;
    invoke-virtual {v7, v9}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;

    move-result-object v3

    .line 127
    .local v3, "gContext":Lorg/ietf/jgss/GSSContext;
    if-nez v3, :cond_1

    .line 129
    sget-object v12, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "SpnegoUserRealm: failed to establish GSSContext"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .end local v3    # "gContext":Lorg/ietf/jgss/GSSContext;
    .end local v4    # "gssName":Lorg/ietf/jgss/GSSName;
    .end local v6    # "krb5Oid":Lorg/ietf/jgss/Oid;
    .end local v9    # "serverCreds":Lorg/ietf/jgss/GSSCredential;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    :goto_1
    return-object v12

    .line 133
    .restart local v3    # "gContext":Lorg/ietf/jgss/GSSContext;
    .restart local v4    # "gssName":Lorg/ietf/jgss/GSSName;
    .restart local v6    # "krb5Oid":Lorg/ietf/jgss/Oid;
    .restart local v9    # "serverCreds":Lorg/ietf/jgss/GSSCredential;
    :cond_1
    :goto_2
    invoke-interface {v3}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v12

    if-nez v12, :cond_2

    .line 135
    const/4 v12, 0x0

    array-length v13, v0

    invoke-interface {v3, v0, v12, v13}, Lorg/ietf/jgss/GSSContext;->acceptSecContext([BII)[B

    move-result-object v0

    goto :goto_2

    .line 137
    :cond_2
    invoke-interface {v3}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 139
    invoke-interface {v3}, Lorg/ietf/jgss/GSSContext;->getSrcName()Lorg/ietf/jgss/GSSName;

    move-result-object v12

    invoke-interface {v12}, Lorg/ietf/jgss/GSSName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "clientName":Ljava/lang/String;
    const/16 v12, 0x40

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "role":Ljava/lang/String;
    sget-object v12, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "SpnegoUserRealm: established a security context"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v12, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Client Principal is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Lorg/ietf/jgss/GSSContext;->getSrcName()Lorg/ietf/jgss/GSSName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v12, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Server Principal is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Lorg/ietf/jgss/GSSContext;->getTargName()Lorg/ietf/jgss/GSSName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sget-object v12, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Client Default Role: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v11, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;

    invoke-direct {v11, v1, v0}, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;-><init>(Ljava/lang/String;[B)V

    .line 149
    .local v11, "user":Lorg/eclipse/jetty/security/SpnegoUserPrincipal;
    new-instance v10, Ljavax/security/auth/Subject;

    invoke-direct {v10}, Ljavax/security/auth/Subject;-><init>()V

    .line 150
    .local v10, "subject":Ljavax/security/auth/Subject;
    invoke-virtual {v10}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v12, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-interface {v12, v10, v11, v13}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 157
    .end local v1    # "clientName":Ljava/lang/String;
    .end local v3    # "gContext":Lorg/ietf/jgss/GSSContext;
    .end local v4    # "gssName":Lorg/ietf/jgss/GSSName;
    .end local v6    # "krb5Oid":Lorg/ietf/jgss/Oid;
    .end local v8    # "role":Ljava/lang/String;
    .end local v9    # "serverCreds":Lorg/ietf/jgss/GSSCredential;
    .end local v10    # "subject":Ljavax/security/auth/Subject;
    .end local v11    # "user":Lorg/eclipse/jetty/security/SpnegoUserPrincipal;
    :catch_0
    move-exception v5

    .line 159
    .local v5, "gsse":Lorg/ietf/jgss/GSSException;
    sget-object v12, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public logout(Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 0
    .param p1, "user"    # Lorg/eclipse/jetty/server/UserIdentity;

    .prologue
    .line 183
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SpnegoLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_config:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 0
    .param p1, "service"    # Lorg/eclipse/jetty/security/IdentityService;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 178
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SpnegoLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public validate(Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 1
    .param p1, "user"    # Lorg/eclipse/jetty/server/UserIdentity;

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
