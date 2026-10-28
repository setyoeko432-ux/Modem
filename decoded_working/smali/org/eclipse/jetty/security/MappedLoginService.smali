.class public abstract Lorg/eclipse/jetty/security/MappedLoginService;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "MappedLoginService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;,
        Lorg/eclipse/jetty/security/MappedLoginService$Anonymous;,
        Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;,
        Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _name:Ljava/lang/String;

.field protected final _users:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/eclipse/jetty/security/MappedLoginService;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/MappedLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    new-instance v0, Lorg/eclipse/jetty/security/DefaultIdentityService;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultIdentityService;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    .line 56
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->loadUsers()V

    .line 127
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 128
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 135
    return-void
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected abstract loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
.end method

.method protected abstract loadUsers()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 215
    iget-object v2, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/UserIdentity;

    .line 217
    .local v1, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/MappedLoginService;->loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 220
    :cond_0
    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v1}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;

    .line 223
    .local v0, "principal":Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;
    invoke-interface {v0, p2}, Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;->authenticate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    .end local v0    # "principal":Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;
    .end local v1    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :goto_0
    return-object v1

    .restart local v1    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public logout(Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 4
    .param p1, "identity"    # Lorg/eclipse/jetty/server/UserIdentity;

    .prologue
    .line 140
    sget-object v0, Lorg/eclipse/jetty/security/MappedLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "logout {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method protected declared-synchronized putUser(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 7
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    instance-of v5, p2, Lorg/eclipse/jetty/server/UserIdentity;

    if-eqz v5, :cond_0

    .line 162
    move-object v0, p2

    check-cast v0, Lorg/eclipse/jetty/server/UserIdentity;

    move-object v2, v0

    .line 175
    .end local p2    # "info":Ljava/lang/Object;
    .local v2, "identity":Lorg/eclipse/jetty/server/UserIdentity;
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-object v2

    .line 165
    .end local v2    # "identity":Lorg/eclipse/jetty/server/UserIdentity;
    .restart local p2    # "info":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v5, p2, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v5, :cond_1

    check-cast p2, Lorg/eclipse/jetty/util/security/Credential;

    .end local p2    # "info":Ljava/lang/Object;
    move-object v1, p2

    .line 167
    .local v1, "credential":Lorg/eclipse/jetty/util/security/Credential;
    :goto_1
    new-instance v4, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;

    invoke-direct {v4, p1, v1}, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V

    .line 168
    .local v4, "userPrincipal":Ljava/security/Principal;
    new-instance v3, Ljavax/security/auth/Subject;

    invoke-direct {v3}, Ljavax/security/auth/Subject;-><init>()V

    .line 169
    .local v3, "subject":Ljavax/security/auth/Subject;
    invoke-virtual {v3}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v3}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v3}, Ljavax/security/auth/Subject;->setReadOnly()V

    .line 172
    iget-object v5, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    sget-object v6, Lorg/eclipse/jetty/security/IdentityService;->NO_ROLES:[Ljava/lang/String;

    invoke-interface {v5, v3, v4, v6}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    .restart local v2    # "identity":Lorg/eclipse/jetty/server/UserIdentity;
    goto :goto_0

    .line 165
    .end local v1    # "credential":Lorg/eclipse/jetty/util/security/Credential;
    .end local v2    # "identity":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v3    # "subject":Ljavax/security/auth/Subject;
    .end local v4    # "userPrincipal":Ljava/security/Principal;
    .restart local p2    # "info":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/security/Credential;->getCredential(Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Credential;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 161
    .end local p2    # "info":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized putUser(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 9
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "credential"    # Lorg/eclipse/jetty/util/security/Credential;
    .param p3, "roles"    # [Ljava/lang/String;

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    new-instance v6, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;

    invoke-direct {v6, p1, p2}, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V

    .line 189
    .local v6, "userPrincipal":Ljava/security/Principal;
    new-instance v5, Ljavax/security/auth/Subject;

    invoke-direct {v5}, Ljavax/security/auth/Subject;-><init>()V

    .line 190
    .local v5, "subject":Ljavax/security/auth/Subject;
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    if-eqz p3, :cond_0

    .line 194
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 195
    .local v4, "role":Ljava/lang/String;
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;

    invoke-direct {v8, v4}, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "role":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljavax/security/auth/Subject;->setReadOnly()V

    .line 198
    iget-object v7, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v7, v5, v6, p3}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    .line 199
    .local v2, "identity":Lorg/eclipse/jetty/server/UserIdentity;
    iget-object v7, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-object v2

    .line 188
    .end local v2    # "identity":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v5    # "subject":Ljavax/security/auth/Subject;
    .end local v6    # "userPrincipal":Ljava/security/Principal;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public removeUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 2
    .param p1, "identityService"    # Lorg/eclipse/jetty/security/IdentityService;

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 94
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setUsers(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "users":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 3
    .param p1, "user"    # Lorg/eclipse/jetty/server/UserIdentity;

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-object v1, p0, Lorg/eclipse/jetty/security/MappedLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/MappedLoginService;->loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method
