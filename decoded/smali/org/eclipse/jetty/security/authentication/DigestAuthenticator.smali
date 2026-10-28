.class public Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;,
        Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _maxNC:I

.field private _maxNonceAgeMs:J

.field private _nonceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;",
            ">;"
        }
    .end annotation
.end field

.field private _nonceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;",
            ">;"
        }
    .end annotation
.end field

.field _random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 62
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    .line 63
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 64
    const/16 v0, 0x400

    iput v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    .line 97
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private checkNonce(Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;Lorg/eclipse/jetty/server/Request;)I
    .locals 14
    .param p1, "digest"    # Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 287
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    sub-long v4, v10, v12

    .line 288
    .local v4, "expired":J
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    .line 289
    .local v6, "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    :goto_0
    if-eqz v6, :cond_0

    iget-wide v10, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_ts:J

    cmp-long v7, v10, v4

    if-gez v7, :cond_0

    .line 291
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v10, v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    check-cast v6, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    .restart local v6    # "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    goto :goto_0

    .line 299
    :cond_0
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v10, p1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    move-object v6, v0

    .line 300
    if-nez v6, :cond_1

    move v7, v8

    .line 314
    :goto_1
    return v7

    .line 303
    :cond_1
    iget-object v7, p1, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 304
    .local v1, "count":J
    iget v7, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    int-to-long v10, v7

    cmp-long v7, v1, v10

    if-ltz v7, :cond_2

    move v7, v8

    .line 305
    goto :goto_1

    .line 306
    :cond_2
    long-to-int v7, v1

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->seen(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 307
    goto :goto_1

    .line 308
    :cond_3
    const/4 v7, 0x1

    goto :goto_1

    .line 310
    .end local v1    # "count":J
    :catch_0
    move-exception v3

    .line 312
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v7, v9

    .line 314
    goto :goto_1
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "DIGEST"

    return-object v0
.end method

.method public getMaxNonceAge()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    return-wide v0
.end method

.method public getMaxNonceCount()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    return v0
.end method

.method public newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;
    .locals 6
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 267
    :cond_0
    const/16 v2, 0x18

    new-array v1, v2, [B

    .line 268
    .local v1, "nounce":[B
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 270
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;

    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v3

    iget v5, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;-><init>(Ljava/lang/String;JI)V

    .line 272
    .local v0, "nonce":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_nonceQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    return-object v2
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .param p4, "validatedUser"    # Lorg/eclipse/jetty/server/Authentication$User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 108
    const-string v1, "maxNonceAge"

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "mna":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 113
    :cond_0
    return-void
.end method

.method public setMaxNonceAge(J)V
    .locals 0
    .param p1, "maxNonceAgeInMillis"    # J

    .prologue
    .line 131
    iput-wide p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNonceAgeMs:J

    .line 132
    return-void
.end method

.method public setMaxNonceCount(I)V
    .locals 0
    .param p1, "maxNC"    # I

    .prologue
    .line 125
    iput p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_maxNC:I

    .line 126
    return-void
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 20
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p3, :cond_0

    .line 158
    new-instance v17, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 251
    :goto_0
    return-object v17

    :cond_0
    move-object/from16 v11, p1

    .line 160
    check-cast v11, Ljavax/servlet/http/HttpServletRequest;

    .local v11, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v12, p2

    .line 161
    check-cast v12, Ljavax/servlet/http/HttpServletResponse;

    .line 162
    .local v12, "response":Ljavax/servlet/http/HttpServletResponse;
    const-string v17, "Authorization"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "credentials":Ljava/lang/String;
    const/4 v13, 0x0

    .line 167
    .local v13, "stale":Z
    if-eqz v4, :cond_e

    .line 169
    :try_start_0
    sget-object v17, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 170
    sget-object v17, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Credentials: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_1
    new-instance v15, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v17, "=, "

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v15, v4, v0, v1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 172
    .local v15, "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    new-instance v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;

    invoke-interface {v11}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;-><init>(Ljava/lang/String;)V

    .line 173
    .local v5, "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    const/4 v8, 0x0

    .line 174
    .local v8, "last":Ljava/lang/String;
    const/4 v10, 0x0

    .line 176
    .local v10, "name":Ljava/lang/String;
    :cond_2
    :goto_1
    :sswitch_0
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 178
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, "tok":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 181
    .local v3, "c":C
    :goto_2
    sparse-switch v3, :sswitch_data_0

    .line 194
    move-object v8, v14

    .line 195
    if-eqz v10, :cond_2

    .line 197
    const-string v17, "username"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 198
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    .line 213
    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto :goto_1

    .line 179
    .end local v3    # "c":C
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 184
    .restart local v3    # "c":C
    :sswitch_1
    move-object v10, v8

    .line 185
    move-object v8, v14

    .line 186
    goto :goto_1

    .line 188
    :sswitch_2
    const/4 v10, 0x0

    .line 189
    goto :goto_1

    .line 199
    :cond_5
    const-string v17, "realm"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 200
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->realm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 253
    .end local v3    # "c":C
    .end local v5    # "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .end local v8    # "last":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v14    # "tok":Ljava/lang/String;
    .end local v15    # "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :catch_0
    move-exception v7

    .line 255
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Lorg/eclipse/jetty/security/ServerAuthException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 201
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "c":C
    .restart local v5    # "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .restart local v8    # "last":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    .restart local v14    # "tok":Ljava/lang/String;
    .restart local v15    # "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_6
    :try_start_1
    const-string v17, "nonce"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 202
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    goto :goto_3

    .line 203
    :cond_7
    const-string v17, "nc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 204
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    goto :goto_3

    .line 205
    :cond_8
    const-string v17, "cnonce"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 206
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    goto :goto_3

    .line 207
    :cond_9
    const-string v17, "qop"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 208
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    goto :goto_3

    .line 209
    :cond_a
    const-string v17, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 210
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    goto :goto_3

    .line 211
    :cond_b
    const-string v17, "response"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 212
    iput-object v14, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    goto :goto_3

    .line 218
    .end local v3    # "c":C
    .end local v14    # "tok":Ljava/lang/String;
    :cond_c
    move-object v0, v11

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->checkNonce(Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;Lorg/eclipse/jetty/server/Request;)I

    move-result v9

    .line 220
    .local v9, "n":I
    if-lez v9, :cond_d

    .line 223
    iget-object v0, v5, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v5, v2}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v16

    .line 224
    .local v16, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v16, :cond_e

    .line 226
    new-instance v17, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    goto/16 :goto_0

    .line 229
    .end local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :cond_d
    if-nez v9, :cond_e

    .line 230
    const/4 v13, 0x1

    .line 234
    .end local v5    # "digest":Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Digest;
    .end local v8    # "last":Ljava/lang/String;
    .end local v9    # "n":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "tokenizer":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_e
    invoke-static {v12}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 236
    invoke-interface {v11}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "domain":Ljava/lang/String;
    if-nez v6, :cond_f

    .line 238
    const-string v6, "/"

    .line 239
    :cond_f
    const-string v17, "WWW-Authenticate"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Digest realm=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", domain=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", nonce=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    check-cast v11, Lorg/eclipse/jetty/server/Request;

    .end local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;->newNonce(Lorg/eclipse/jetty/server/Request;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", algorithm=MD5, qop=\"auth\","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " stale="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/16 v17, 0x191

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 248
    sget-object v17, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 251
    .end local v6    # "domain":Ljava/lang/String;
    .restart local v11    # "request":Ljavax/servlet/http/HttpServletRequest;
    :cond_10
    sget-object v17, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method
