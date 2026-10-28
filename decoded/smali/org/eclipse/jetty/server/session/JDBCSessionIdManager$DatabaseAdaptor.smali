.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
.super Ljava/lang/Object;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseAdaptor"
.end annotation


# instance fields
.field _dbName:Ljava/lang/String;

.field _isLower:Z

.field _isUpper:Z

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V
    .locals 5
    .param p2, "dbMeta"    # Ljava/sql/DatabaseMetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    .line 129
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Using database {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesLowerCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    .line 131
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesUpperCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    .line 132
    return-void
.end method


# virtual methods
.method public convertIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 148
    .end local p1    # "identifier":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 145
    .restart local p1    # "identifier":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "result"    # Ljava/sql/ResultSet;
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v3, "postgres"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 184
    .local v1, "bytes":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    .end local v1    # "bytes":[B
    :goto_0
    return-object v2

    .line 187
    :cond_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object v0

    .line 188
    .local v0, "blob":Ljava/sql/Blob;
    invoke-interface {v0}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "postgres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "bytea"

    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "blob"

    goto :goto_0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 6
    .param p1, "connection"    # Ljava/sql/Connection;
    .param p2, "rowId"    # Ljava/lang/String;
    .param p3, "contextPath"    # Ljava/lang/String;
    .param p4, "virtualHosts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 212
    if-eqz p3, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->isEmptyStringNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where sessionId = ? and contextPath is null and virtualHost = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 218
    .local v0, "statement":Ljava/sql/PreparedStatement;
    invoke-interface {v0, v4, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 219
    invoke-interface {v0, v5, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move-object v1, v0

    .line 233
    .end local v0    # "statement":Ljava/sql/PreparedStatement;
    .local v1, "statement":Ljava/sql/PreparedStatement;
    :goto_0
    return-object v1

    .line 227
    .end local v1    # "statement":Ljava/sql/PreparedStatement;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v3, v3, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where sessionId = ? and contextPath = ? and virtualHost = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 229
    .restart local v0    # "statement":Ljava/sql/PreparedStatement;
    invoke-interface {v0, v4, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 230
    invoke-interface {v0, v5, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 231
    const/4 v2, 0x3

    invoke-interface {v0, v2, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move-object v1, v0

    .line 233
    .end local v0    # "statement":Ljava/sql/PreparedStatement;
    .restart local v1    # "statement":Ljava/sql/PreparedStatement;
    goto :goto_0
.end method

.method public getLongType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "number(20)"

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "bigint"

    goto :goto_0
.end method

.method public getRowIdColumnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "srowId"

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rowId"

    goto :goto_0
.end method

.method public isEmptyStringNull()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
