.class public final Lcom/mifiservice/security/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field static final MAX_DEVICE_NAMES:I = 0x10

.field static final MAX_NAME:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static asLong(Ljava/lang/Object;)J
    .locals 2

    .line 87
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 91
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static declared-synchronized get()Lorg/json/JSONObject;
    .locals 3

    const-class v0, Lcom/mifiservice/security/Prefs;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "prefs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized merge(Lorg/json/JSONObject;)Z
    .locals 7

    const-class v0, Lcom/mifiservice/security/Prefs;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/AuthStore;->read()Lorg/json/JSONObject;

    move-result-object v1

    .line 53
    const-string v2, "prefs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 62
    const-string v6, "refreshSeconds"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-static {v5}, Lcom/mifiservice/security/Prefs;->asLong(Ljava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 65
    :cond_1
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string p0, "prefs"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    nop

    .line 71
    :try_start_2
    invoke-static {v1}, Lcom/mifiservice/security/AuthStore;->write(Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 51
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static varargs oneOf(Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 4

    .line 75
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 79
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const/4 p0, 0x1

    return p0

    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    return v1
.end method

.method private static pageName(Ljava/lang/String;)Z
    .locals 4

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_6

    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_5

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 103
    const/16 v3, 0x61

    if-lt v1, v3, :cond_1

    const/16 v3, 0x7a

    if-le v1, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v1, v3, :cond_2

    const/16 v3, 0x5a

    if-le v1, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x39

    if-le v1, v3, :cond_4

    :cond_3
    const/16 v3, 0x5f

    if-eq v1, v3, :cond_4

    .line 104
    return v2

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_5
    const/4 p0, 0x1

    return p0

    .line 99
    :cond_6
    :goto_1
    return v2
.end method

.method public static validate(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9

    .line 17
    if-nez p0, :cond_0

    .line 18
    const-string p0, "prefs"

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    const-string v3, "lang"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 25
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v8, "en"

    aput-object v8, v3, v7

    const-string v7, "zh"

    aput-object v7, v3, v6

    const-string v6, "ru"

    aput-object v6, v3, v5

    const-string v5, "id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mifiservice/security/Prefs;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    .line 26
    :cond_1
    const-string v3, "theme"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "auto"

    if-eqz v3, :cond_2

    .line 27
    new-array v3, v4, [Ljava/lang/String;

    aput-object v8, v3, v7

    const-string v4, "light"

    aput-object v4, v3, v6

    const-string v4, "dark"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mifiservice/security/Prefs;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    .line 28
    :cond_2
    const-string v3, "speedUnit"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    new-array v3, v4, [Ljava/lang/String;

    aput-object v8, v3, v7

    const-string v4, "bps"

    aput-object v4, v3, v6

    const-string v4, "Bps"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mifiservice/security/Prefs;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    .line 30
    :cond_3
    const-string v3, "refreshSeconds"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 31
    invoke-static {v2}, Lcom/mifiservice/security/Prefs;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 32
    const-wide/16 v4, 0x2

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    goto :goto_2

    .line 32
    :cond_5
    :goto_1
    return-object v1

    .line 33
    :cond_6
    const-string v3, "lastPage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 34
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mifiservice/security/Prefs;->pageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_7
    return-object v1

    .line 35
    :cond_8
    const-string v3, "deviceNames"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 36
    invoke-static {v2}, Lcom/mifiservice/security/Prefs;->validateNames(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_9

    return-object v1

    .line 38
    :cond_9
    nop

    .line 41
    :cond_a
    :goto_2
    goto/16 :goto_0

    .line 39
    :cond_b
    return-object v1

    .line 42
    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static validateNames(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 111
    instance-of v0, p0, Lorg/json/JSONObject;

    const-string v1, "deviceNames"

    if-nez v0, :cond_0

    .line 112
    return-object v1

    .line 114
    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 116
    return-object v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-static {v1}, Lcom/mifiservice/security/Validator;->isMac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_3

    .line 125
    :cond_2
    check-cast v2, Ljava/lang/String;

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_3

    .line 127
    return-object v1

    .line 129
    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 131
    if-lt v5, v4, :cond_5

    const/16 v6, 0x7f

    if-eq v5, v6, :cond_5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_5

    const/16 v6, 0x26

    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 129
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_5
    :goto_2
    return-object v1

    .line 135
    :cond_6
    goto :goto_0

    .line 123
    :cond_7
    :goto_3
    return-object v1

    .line 136
    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
