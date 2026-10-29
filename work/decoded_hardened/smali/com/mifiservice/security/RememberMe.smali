.class public final Lcom/mifiservice/security/RememberMe;
.super Ljava/lang/Object;
.source "RememberMe.java"


# static fields
.field public static final LIFETIME_SECONDS:J = 0x127500L

.field public static final MAX_TOKENS:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized consume(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/mifiservice/security/RememberMe;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/RememberMe;->wellFormed(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 62
    monitor-exit v0

    return-object v2

    .line 64
    :cond_0
    const/16 v1, 0x10

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v4

    .line 67
    const-string v5, "remember"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-nez v4, :cond_1

    .line 69
    monitor-exit v0

    return-object v2

    .line 71
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->nowSeconds()J

    move-result-wide v5

    .line 72
    nop

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 73
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 74
    if-eqz v7, :cond_5

    const-string v8, "sel"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {v1, p0}, Lcom/mifiservice/security/Crypto;->sha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "hash"

    const-string v4, ""

    .line 78
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {p0, v3}, Lcom/mifiservice/security/Crypto;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 79
    if-nez p0, :cond_3

    .line 80
    invoke-static {}, Lcom/mifiservice/security/RememberMe;->wipeAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit v0

    return-object v2

    .line 83
    :cond_3
    :try_start_3
    const-string p0, "exp"

    const-wide/16 v3, 0x0

    invoke-virtual {v7, p0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v5

    if-gtz p0, :cond_4

    .line 84
    invoke-static {v1}, Lcom/mifiservice/security/RememberMe;->removeSelector(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    monitor-exit v0

    return-object v2

    .line 87
    :cond_4
    :try_start_4
    invoke-static {v1}, Lcom/mifiservice/security/RememberMe;->removeSelector(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/mifiservice/security/RememberMe;->issue()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    .line 72
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_6
    monitor-exit v0

    return-object v2

    .line 60
    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static declared-synchronized count()I
    .locals 3

    const-class v0, Lcom/mifiservice/security/RememberMe;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "remember"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return v1

    .line 107
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized issue()Ljava/lang/String;
    .locals 12

    const-class v0, Lcom/mifiservice/security/RememberMe;

    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v1

    .line 27
    const-string v2, "remember"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 28
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 29
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->nowSeconds()J

    move-result-wide v4

    .line 30
    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 31
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 32
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 33
    if-eqz v8, :cond_0

    const-string v9, "exp"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-lez v11, :cond_0

    .line 34
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 40
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 41
    nop

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 42
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 44
    :cond_2
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/mifiservice/security/Crypto;->random(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/mifiservice/security/Crypto;->hex([B)Ljava/lang/String;

    move-result-object v3

    .line 45
    const/16 v6, 0x10

    invoke-static {v6}, Lcom/mifiservice/security/Crypto;->random(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/mifiservice/security/Crypto;->hex([B)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v9, "sel"

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v9, "hash"

    invoke-static {v3, v6}, Lcom/mifiservice/security/Crypto;->sha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v9, "exp"

    const-wide/32 v10, 0x127500

    add-long/2addr v4, v10

    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    const-string v4, "remember"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    nop

    .line 56
    :try_start_2
    invoke-static {v1}, Lcom/mifiservice/security/AuthStore;->write(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v7

    .line 53
    :catch_0
    move-exception v1

    .line 54
    monitor-exit v0

    return-object v7

    .line 25
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static removeSelector(Ljava/lang/String;)V
    .locals 8

    .line 113
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    const-string v1, "remember"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 115
    if-nez v2, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 119
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 120
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 121
    if-eqz v5, :cond_1

    const-string v6, "sel"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 122
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :cond_2
    :try_start_0
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    nop

    .line 130
    invoke-static {v0}, Lcom/mifiservice/security/AuthStore;->write(Lorg/json/JSONObject;)Z

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception p0

    .line 128
    return-void
.end method

.method public static declared-synchronized revoke(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/mifiservice/security/RememberMe;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/RememberMe;->wellFormed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/RememberMe;->removeSelector(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit v0

    return-void

    .line 93
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static wellFormed(Ljava/lang/String;)Z
    .locals 4

    .line 18
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_2

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mifiservice/security/Crypto;->isHex(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x20

    invoke-static {p0, v1}, Lcom/mifiservice/security/Crypto;->isHex(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 19
    :cond_2
    :goto_0
    return v0
.end method

.method public static declared-synchronized wipeAll()V
    .locals 3

    const-class v0, Lcom/mifiservice/security/RememberMe;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    const-string v2, "remember"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "remember"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-static {v1}, Lcom/mifiservice/security/AuthStore;->write(Lorg/json/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit v0

    return-void

    .line 99
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
