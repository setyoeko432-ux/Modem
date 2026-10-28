.class Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Digest"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x227b36062b530eacL


# instance fields
.field cnonce:Ljava/lang/String;

.field final method:Ljava/lang/String;

.field nc:Ljava/lang/String;

.field nonce:Ljava/lang/String;

.field qop:Ljava/lang/String;

.field realm:Ljava/lang/String;

.field response:Ljava/lang/String;

.field uri:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    .line 329
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->method:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 343
    instance-of v7, p1, [C

    if-eqz v7, :cond_0

    .line 344
    new-instance v0, Ljava/lang/String;

    check-cast p1, [C

    .end local p1    # "credentials":Ljava/lang/Object;
    check-cast p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .local v0, "credentials":Ljava/lang/String;
    move-object p1, v0

    .line 345
    .end local v0    # "credentials":Ljava/lang/String;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 349
    .local v6, "password":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 351
    .local v5, "md":Ljava/security/MessageDigest;
    instance-of v7, p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    if-eqz v7, :cond_2

    .line 356
    check-cast p1, Lorg/eclipse/jetty/util/security/Credential$MD5;

    .end local p1    # "credentials":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/security/Credential$MD5;->getDigest()[B

    move-result-object v3

    .line 369
    .local v3, "ha1":[B
    :goto_1
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 370
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->method:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 371
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 372
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 373
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 382
    .local v4, "ha2":[B
    const/16 v7, 0x10

    invoke-static {v3, v7}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 383
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 384
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 385
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 386
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 387
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 388
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 389
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 390
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 391
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 392
    const/16 v7, 0x10

    invoke-static {v4, v7}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 393
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 396
    .local v1, "digest":[B
    const/16 v7, 0x10

    invoke-static {v1, v7}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 403
    .end local v1    # "digest":[B
    .end local v3    # "ha1":[B
    .end local v4    # "ha2":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    :goto_2
    return v7

    .line 345
    .end local v6    # "password":Ljava/lang/String;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 361
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "password":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 362
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 363
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 364
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 365
    const-string v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 366
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "ha1":[B
    goto/16 :goto_1

    .line 398
    .end local v3    # "ha1":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local p1    # "credentials":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 403
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
