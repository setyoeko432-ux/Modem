.class public Lorg/eclipse/jetty/security/JDBCLoginService;
.super Lorg/eclipse/jetty/security/MappedLoginService;
.source "JDBCLoginService.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _cacheTime:I

.field private _con:Ljava/sql/Connection;

.field private _config:Ljava/lang/String;

.field private _jdbcDriver:Ljava/lang/String;

.field private _lastHashPurge:J

.field private _password:Ljava/lang/String;

.field private _roleSql:Ljava/lang/String;

.field private _roleTableRoleField:Ljava/lang/String;

.field private _url:Ljava/lang/String;

.field private _userName:Ljava/lang/String;

.field private _userSql:Ljava/lang/String;

.field private _userTableKey:Ljava/lang/String;

.field private _userTablePasswordField:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/eclipse/jetty/security/JDBCLoginService;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/JDBCLoginService;->setName(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/JDBCLoginService;->setName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/JDBCLoginService;->setConfig(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/security/IdentityService;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identityService"    # Lorg/eclipse/jetty/security/IdentityService;
    .param p3, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/eclipse/jetty/security/MappedLoginService;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/JDBCLoginService;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/JDBCLoginService;->setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V

    .line 106
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/security/JDBCLoginService;->setConfig(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private closeConnection()V
    .locals 4

    .prologue
    .line 275
    iget-object v1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    if-eqz v1, :cond_1

    .line 277
    sget-object v1, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Closing db connection for JDBCUserRealm"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    .line 281
    return-void

    .line 278
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public connectDatabase()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_jdbcDriver:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 196
    iget-object v1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_url:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userName:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_password:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/sql/SQLException;
    sget-object v1, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserRealm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not connect to database; will try later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserRealm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not connect to database; will try later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doStart()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 118
    .local v7, "properties":Ljava/util/Properties;
    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_config:Ljava/lang/String;

    invoke-static {v9}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 119
    .local v8, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 121
    const-string v9, "jdbcdriver"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_jdbcDriver:Ljava/lang/String;

    .line 122
    const-string v9, "url"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_url:Ljava/lang/String;

    .line 123
    const-string v9, "username"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userName:Ljava/lang/String;

    .line 124
    const-string v9, "password"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_password:Ljava/lang/String;

    .line 125
    const-string v9, "usertable"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "_userTable":Ljava/lang/String;
    const-string v9, "usertablekey"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userTableKey:Ljava/lang/String;

    .line 127
    const-string v9, "usertableuserfield"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "_userTableUserField":Ljava/lang/String;
    const-string v9, "usertablepasswordfield"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userTablePasswordField:Ljava/lang/String;

    .line 129
    const-string v9, "roletable"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "_roleTable":Ljava/lang/String;
    const-string v9, "roletablekey"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "_roleTableKey":Ljava/lang/String;
    const-string v9, "roletablerolefield"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_roleTableRoleField:Ljava/lang/String;

    .line 132
    const-string v9, "userroletable"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_userRoleTable":Ljava/lang/String;
    const-string v9, "userroletableuserkey"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "_userRoleTableUserKey":Ljava/lang/String;
    const-string v9, "userroletablerolekey"

    invoke-virtual {v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "_userRoleTableRoleKey":Ljava/lang/String;
    new-instance v9, Ljava/lang/Integer;

    const-string v10, "cachetime"

    invoke-virtual {v7, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_cacheTime:I

    .line 137
    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_jdbcDriver:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_jdbcDriver:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_url:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_url:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userName:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userName:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_password:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_cacheTime:I

    if-gez v9, :cond_1

    .line 145
    :cond_0
    sget-object v9, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserRealm "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has not been properly configured"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_1
    iget v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_cacheTime:I

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_cacheTime:I

    .line 148
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_lastHashPurge:J

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userTableKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userTablePasswordField:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " where "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userSql:Ljava/lang/String;

    .line 150
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select r."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_roleTableRoleField:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " r, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " u where u."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and r."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = u."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_roleSql:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_jdbcDriver:Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 164
    invoke-super {p0}, Lorg/eclipse/jetty/security/MappedLoginService;->doStart()V

    .line 165
    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_config:Ljava/lang/String;

    return-object v0
.end method

.method protected loadUser(Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 9
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 235
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    if-nez v6, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->connectDatabase()V

    .line 238
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    if-nez v6, :cond_2

    .line 239
    new-instance v6, Ljava/sql/SQLException;

    const-string v7, "Can\'t connect to database"

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/sql/SQLException;
    sget-object v6, Lorg/eclipse/jetty/security/JDBCLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UserRealm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not load user information from database"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    invoke-direct {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->closeConnection()V

    .line 267
    .end local v1    # "e":Ljava/sql/SQLException;
    :cond_1
    const/4 v6, 0x0

    :goto_0
    return-object v6

    .line 241
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    iget-object v7, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userSql:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 242
    .local v5, "stat":Ljava/sql/PreparedStatement;
    const/4 v6, 0x1

    invoke-interface {v5, v6, p1}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 243
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4

    .line 245
    .local v4, "rs":Ljava/sql/ResultSet;
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userTableKey:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, "key":I
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_userTablePasswordField:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "credentials":Ljava/lang/String;
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 251
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_con:Ljava/sql/Connection;

    iget-object v7, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_roleSql:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 252
    const/4 v6, 0x1

    invoke-interface {v5, v6, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 253
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v4

    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v3, "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    iget-object v6, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_roleTableRoleField:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_3
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 259
    invoke-static {v0}, Lorg/eclipse/jetty/util/security/Credential;->getCredential(Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Credential;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v6}, Lorg/eclipse/jetty/security/JDBCLoginService;->putUser(Ljava/lang/String;Lorg/eclipse/jetty/util/security/Credential;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method protected loadUsers()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    .local v0, "now":J
    iget-wide v2, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_lastHashPurge:J

    sub-long v2, v0, v2

    iget v4, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_cacheTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_cacheTime:I

    if-nez v2, :cond_1

    .line 215
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_users:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 216
    iput-wide v0, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_lastHashPurge:J

    .line 217
    invoke-direct {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->closeConnection()V

    .line 220
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/security/MappedLoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    return-object v2
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/JDBCLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/JDBCLoginService;->_config:Ljava/lang/String;

    .line 185
    return-void
.end method
