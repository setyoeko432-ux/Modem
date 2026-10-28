.class public Lorg/eclipse/jetty/util/security/Credential$MD5;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field private static __md:Ljava/security/MessageDigest; = null

.field public static final __md5Lock:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x4ccc2c1bfb42a250L


# instance fields
.field private final _digest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "digest"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 133
    const-string v0, "MD5:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MD5:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/TypeUtil;->parseBytes(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    .line 135
    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 200
    :try_start_0
    sget-object v4, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :try_start_1
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 206
    :try_start_2
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_0
    :try_start_3
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 216
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    const-string v5, "ISO-8859-1"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 218
    .local v0, "digest":[B
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MD5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 225
    .end local v0    # "digest":[B
    :goto_0
    return-object v2

    .line 208
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 211
    monitor-exit v4

    goto :goto_0

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 222
    :catch_1
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    const/4 v2, 0x0

    .line 151
    .local v2, "digest":[B
    :try_start_0
    instance-of v8, p1, [C

    if-eqz v8, :cond_0

    .line 152
    new-instance v1, Ljava/lang/String;

    check-cast p1, [C

    .end local p1    # "credentials":Ljava/lang/Object;
    check-cast p1, [C

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .local v1, "credentials":Ljava/lang/String;
    move-object p1, v1

    .line 153
    .end local v1    # "credentials":Ljava/lang/String;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_0
    instance-of v8, p1, Lorg/eclipse/jetty/util/security/Password;

    if-nez v8, :cond_1

    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 155
    :cond_1
    sget-object v8, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    sget-object v9, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    if-nez v9, :cond_2

    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    sput-object v9, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 158
    :cond_2
    sget-object v9, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 159
    sget-object v9, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ISO-8859-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    sget-object v9, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 161
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    if-eqz v2, :cond_3

    :try_start_2
    array-length v8, v2

    iget-object v9, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v9, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v8, v9, :cond_4

    .line 190
    .end local p1    # "credentials":Ljava/lang/Object;
    :cond_3
    :goto_0
    return v6

    .line 161
    .restart local p1    # "credentials":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    .end local p1    # "credentials":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_5
    array-length v8, v2

    if-ge v4, v8, :cond_5

    .line 164
    aget-byte v8, v2, v4

    iget-object v9, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    aget-byte v9, v9, v4

    if-ne v8, v9, :cond_3

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v6, v7

    .line 165
    goto :goto_0

    .line 167
    .end local v4    # "i":I
    :cond_6
    instance-of v8, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    if-eqz v8, :cond_8

    .line 169
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/util/security/Credential$MD5;

    move-object v5, v0

    .line 170
    .local v5, "md5":Lorg/eclipse/jetty/util/security/Credential$MD5;
    iget-object v8, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v8, v8

    iget-object v9, v5, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v9, v9

    if-ne v8, v9, :cond_3

    .line 171
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v8, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    array-length v8, v8

    if-ge v4, v8, :cond_7

    .line 172
    iget-object v8, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    aget-byte v8, v8, v4

    iget-object v9, v5, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    aget-byte v9, v9, v4

    if-ne v8, v9, :cond_3

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v6, v7

    .line 173
    goto :goto_0

    .line 175
    .end local v4    # "i":I
    .end local v5    # "md5":Lorg/eclipse/jetty/util/security/Credential$MD5;
    :cond_8
    instance-of v7, p1, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v7, :cond_9

    .line 179
    check-cast p1, Lorg/eclipse/jetty/util/security/Credential;

    .end local p1    # "credentials":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 183
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_9
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t check "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " against MD5"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->_digest:[B

    return-object v0
.end method
