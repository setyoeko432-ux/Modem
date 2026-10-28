.class public Lorg/eclipse/jetty/security/PropertyUserStore;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "PropertyUserStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _config:Ljava/lang/String;

.field private _configResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _firstLoad:Z

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private final _knownUserIdentities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/UserIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final _knownUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;",
            ">;"
        }
    .end annotation
.end field

.field private _refreshInterval:I

.field private _scanner:Lorg/eclipse/jetty/util/Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/PropertyUserStore;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_refreshInterval:I

    .line 70
    new-instance v0, Lorg/eclipse/jetty/security/DefaultIdentityService;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultIdentityService;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_firstLoad:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    .line 350
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/security/PropertyUserStore;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/security/PropertyUserStore;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/security/PropertyUserStore;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/security/PropertyUserStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->loadUsers()V

    return-void
.end method

.method private loadUsers()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 213
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v21, Lorg/eclipse/jetty/security/PropertyUserStore;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v21 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 133
    sget-object v21, Lorg/eclipse/jetty/security/PropertyUserStore;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Load "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_1
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 135
    .local v12, "properties":Ljava/util/Properties;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 137
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v10, "known":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 141
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 142
    .local v19, "username":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "credentials":Ljava/lang/String;
    const/4 v15, 0x0

    .line 144
    .local v15, "roles":Ljava/lang/String;
    const/16 v21, 0x2c

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 145
    .local v4, "c":I
    if-lez v4, :cond_4

    .line 147
    add-int/lit8 v21, v4, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 148
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 151
    :cond_4
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    .line 153
    sget-object v14, Lorg/eclipse/jetty/security/IdentityService;->NO_ROLES:[Ljava/lang/String;

    .line 154
    .local v14, "roleArray":[Ljava/lang/String;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    .line 156
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 158
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v6}, Lorg/eclipse/jetty/util/security/Credential;->getCredential(Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Credential;

    move-result-object v5

    .line 161
    .local v5, "credential":Lorg/eclipse/jetty/util/security/Credential;
    new-instance v18, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lorg/eclipse/jetty/security/MappedLoginService$KnownUser;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;)V

    .line 162
    .local v18, "userPrincipal":Ljava/security/Principal;
    new-instance v16, Ljavax/security/auth/Subject;

    invoke-direct/range {v16 .. v16}, Ljavax/security/auth/Subject;-><init>()V

    .line 163
    .local v16, "subject":Ljavax/security/auth/Subject;
    invoke-virtual/range {v16 .. v16}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual/range {v16 .. v16}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    if-eqz v15, :cond_6

    .line 168
    move-object v3, v14

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_6

    aget-object v13, v3, v9

    .line 170
    .local v13, "role":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v21

    new-instance v22, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lorg/eclipse/jetty/security/MappedLoginService$RolePrincipal;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 174
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "role":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljavax/security/auth/Subject;->setReadOnly()V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v14}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v14}, Lorg/eclipse/jetty/security/PropertyUserStore;->notifyUpdate(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 181
    .end local v4    # "c":I
    .end local v5    # "credential":Lorg/eclipse/jetty/util/security/Credential;
    .end local v6    # "credentials":Ljava/lang/String;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v14    # "roleArray":[Ljava/lang/String;
    .end local v15    # "roles":Ljava/lang/String;
    .end local v16    # "subject":Ljavax/security/auth/Subject;
    .end local v18    # "userPrincipal":Ljava/security/Principal;
    .end local v19    # "username":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_firstLoad:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 189
    .local v20, "users":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 191
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 192
    .local v17, "user":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/security/PropertyUserStore;->notifyRemove(Ljava/lang/String;)V

    goto :goto_3

    .line 207
    .end local v17    # "user":Ljava/lang/String;
    .end local v20    # "users":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 204
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/security/PropertyUserStore;->_firstLoad:Z

    goto/16 :goto_0
.end method

.method private notifyRemove(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;>;"
    :cond_0
    return-void
.end method

.method private notifyUpdate(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "credential"    # Lorg/eclipse/jetty/util/security/Credential;
    .param p3, "roleArray"    # [Ljava/lang/String;

    .prologue
    .line 310
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;->update(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 225
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 227
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getRefreshInterval()I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    new-instance v1, Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/Scanner;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 230
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getRefreshInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setScanInterval(I)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v0, "dirList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/Scanner;->setScanDirs(Ljava/util/List;)V

    .line 234
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    new-instance v2, Lorg/eclipse/jetty/security/PropertyUserStore$1;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/security/PropertyUserStore$1;-><init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 256
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    new-instance v2, Lorg/eclipse/jetty/security/PropertyUserStore$2;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/security/PropertyUserStore$2;-><init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V

    .line 279
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/util/Scanner;->setReportExistingFilesOnStartup(Z)V

    .line 280
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/Scanner;->setRecursive(Z)V

    .line 281
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Scanner;->start()V

    .line 287
    .end local v0    # "dirList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/security/PropertyUserStore;->loadUsers()V

    goto :goto_0
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->stop()V

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_scanner:Lorg/eclipse/jetty/util/Scanner;

    .line 299
    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_configResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_refreshInterval:I

    return v0
.end method

.method public getUserIdentity(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_knownUserIdentities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/UserIdentity;

    return-object v0
.end method

.method public registerUserListener(Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/security/PropertyUserStore$UserListener;

    .prologue
    .line 340
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_config:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore;->_refreshInterval:I

    .line 115
    return-void
.end method
