.class public final Lcom/mifiservice/security/Recovery;
.super Ljava/lang/Object;
.source "Recovery.java"


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

.field static final SYMBOLS:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized exists()Z
    .locals 3

    const-class v0, Lcom/mifiservice/security/Recovery;

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 17
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized generate()Ljava/lang/String;
    .locals 9

    const-class v0, Lcom/mifiservice/security/Recovery;

    monitor-enter v0

    .line 22
    const/16 v1, 0x14

    :try_start_0
    invoke-static {v1}, Lcom/mifiservice/security/Crypto;->random(I)[B

    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 25
    const-string v6, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

    aget-byte v7, v2, v5

    and-int/lit8 v7, v7, 0x1f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    :cond_0
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/mifiservice/security/Crypto;->random(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/mifiservice/security/Crypto;->hex([B)Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const/4 v6, 0x0

    :try_start_1
    const-string v7, "salt"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v7, "hash"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mifiservice/security/Crypto;->sha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    const-string v7, "recovery"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-static {v2}, Lcom/mifiservice/security/AuthStore;->write(Lorg/json/JSONObject;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 35
    monitor-exit v0

    return-object v6

    .line 39
    :cond_1
    nop

    .line 40
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    nop

    :goto_1
    if-ge v4, v1, :cond_3

    .line 42
    if-lez v4, :cond_2

    rem-int/lit8 v5, v4, 0x5

    if-nez v5, :cond_2

    .line 43
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    monitor-exit v0

    return-object v6

    .line 21
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

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 71
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    goto :goto_2

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 77
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    const-string v4, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 81
    return-object v0

    .line 83
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v2, 0x14

    if-ne p0, v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    .line 72
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static declared-synchronized verifyAndConsume(Ljava/lang/String;)Z
    .locals 7

    const-class v0, Lcom/mifiservice/security/Recovery;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/Recovery;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 54
    monitor-exit v0

    return v1

    .line 56
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v2

    .line 57
    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez v3, :cond_1

    .line 59
    monitor-exit v0

    return v1

    .line 61
    :cond_1
    :try_start_2
    const-string v4, "salt"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    const-string v5, "hash"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v4, p0}, Lcom/mifiservice/security/Crypto;->sha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/mifiservice/security/Crypto;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_2

    .line 64
    monitor-exit v0

    return v1

    .line 66
    :cond_2
    :try_start_3
    const-string p0, "recovery"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-static {v2}, Lcom/mifiservice/security/AuthStore;->write(Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return p0

    .line 51
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
