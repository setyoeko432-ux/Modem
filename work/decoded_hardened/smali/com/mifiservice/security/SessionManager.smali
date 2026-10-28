.class public final Lcom/mifiservice/security/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mifiservice/security/SessionManager$Session;,
        Lcom/mifiservice/security/SessionManager$LoginBucket;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_TIMEOUT_NANOS:J = 0x1a3185c50000L

.field private static final IDLE_TIMEOUT_NANOS:J = 0xd18c2e2800L

.field private static final LOGIN_BUCKETS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mifiservice/security/SessionManager$LoginBucket;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGIN_COOLDOWN_NANOS:J = 0xdf8475800L

.field private static final LOGIN_WINDOW_NANOS:J = 0x45d964b800L

.field private static final MAX_SESSIONS:I = 0x4

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SESSIONS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mifiservice/security/SessionManager$Session;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKEN_BYTES:I = 0x10

.field private static testNowNanos:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/mifiservice/security/SessionManager;->RANDOM:Ljava/security/SecureRandom;

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized advanceNanosForTests(J)V
    .locals 3

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 139
    add-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    .line 137
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized clearForTests()V
    .locals 2

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 129
    sget-object v1, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized cookieToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 75
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 76
    monitor-exit v0

    return-object v1

    .line 78
    :cond_0
    :try_start_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 79
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 80
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v4, "MIFISID="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    const-string v4, "MIFISID="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lcom/mifiservice/security/SessionManager;->isHex(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 84
    monitor-exit v0

    return-object v3

    .line 79
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_2
    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized create(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const-class v1, Lcom/mifiservice/security/SessionManager;

    monitor-enter v1

    .line 31
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v5

    .line 32
    invoke-static {v5, v6}, Lcom/mifiservice/security/SessionManager;->purgeExpired(J)V

    .line 33
    :goto_0
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 34
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 43
    sget-object v2, Lcom/mifiservice/security/SessionManager;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 44
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager;->toHex([B)Ljava/lang/String;

    move-result-object v3

    .line 45
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/mifiservice/security/SessionManager$Session;

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/mifiservice/security/SessionManager$Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/mifiservice/security/SessionManager$1;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    return-object v3

    .line 30
    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static isHex(Ljava/lang/String;)Z
    .locals 4

    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 189
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_3
    :goto_1
    return v0

    .line 194
    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized isValid(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 50
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized loginAllowed(Ljava/lang/String;)Z
    .locals 11

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 92
    if-nez p0, :cond_0

    :try_start_0
    const-string p0, ""

    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 93
    :cond_0
    :goto_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mifiservice/security/SessionManager$LoginBucket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 95
    monitor-exit v0

    return v1

    .line 97
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v2

    .line 98
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$300(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    cmp-long v7, v4, v2

    if-lez v7, :cond_2

    .line 99
    monitor-exit v0

    return v6

    .line 101
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$300(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v4

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-eqz v10, :cond_3

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$400(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 102
    invoke-static {p0, v6}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$402(Lcom/mifiservice/security/SessionManager$LoginBucket;I)I

    .line 103
    invoke-static {p0, v2, v3}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$502(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J

    .line 104
    invoke-static {p0, v8, v9}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$302(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J

    .line 106
    :cond_3
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$500(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v8, 0x45d964b800L

    cmp-long v10, v4, v8

    if-lez v10, :cond_4

    .line 107
    invoke-static {p0, v6}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$402(Lcom/mifiservice/security/SessionManager$LoginBucket;I)I

    .line 108
    invoke-static {p0, v2, v3}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$502(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J

    .line 110
    :cond_4
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$400(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge p0, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0

    return v1

    .line 91
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized needsPasswordChange(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;

    move-result-object p0

    .line 55
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$Session;->access$100(Lcom/mifiservice/security/SessionManager$Session;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 53
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static nowNanos()J
    .locals 2

    .line 172
    sget-object v0, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static declared-synchronized passwordChanged(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-nez v1, :cond_0

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_0
    :try_start_1
    sget-object v2, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 69
    :cond_1
    goto :goto_0

    .line 70
    :cond_2
    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/mifiservice/security/SessionManager$Session;->access$102(Lcom/mifiservice/security/SessionManager$Session;Z)Z

    .line 71
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/mifiservice/security/SessionManager$Session;->access$202(Lcom/mifiservice/security/SessionManager$Session;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 58
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static purgeExpired(J)V
    .locals 7

    .line 161
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mifiservice/security/SessionManager$Session;

    .line 164
    invoke-static {v1}, Lcom/mifiservice/security/SessionManager$Session;->access$700(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v2

    sub-long v2, p0, v2

    const-wide v4, 0x1a3185c50000L

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 165
    invoke-static {v1}, Lcom/mifiservice/security/SessionManager$Session;->access$200(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v1

    sub-long v1, p0, v1

    const-wide v3, 0xd18c2e2800L

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 168
    :cond_1
    goto :goto_0

    .line 169
    :cond_2
    return-void
.end method

.method public static declared-synchronized recordLoginFailure(Ljava/lang/String;)V
    .locals 9

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 114
    if-nez p0, :cond_0

    :try_start_0
    const-string p0, ""

    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 115
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 116
    sget-object v3, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mifiservice/security/SessionManager$LoginBucket;

    .line 117
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$500(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0x45d964b800L

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 118
    :cond_1
    new-instance v3, Lcom/mifiservice/security/SessionManager$LoginBucket;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/mifiservice/security/SessionManager$LoginBucket;-><init>(JLcom/mifiservice/security/SessionManager$1;)V

    .line 119
    sget-object v4, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$408(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    .line 122
    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$400(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    move-result p0

    const/4 v4, 0x5

    if-lt p0, v4, :cond_3

    .line 123
    const-wide v4, 0xdf8475800L

    add-long/2addr v1, v4

    invoke-static {v3, v1, v2}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$302(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_3
    monitor-exit v0

    return-void

    .line 113
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setNowNanosForTests(J)V
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return-void

    .line 133
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6

    .line 176
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 177
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 178
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 179
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 180
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 181
    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v4

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;
    .locals 9

    .line 143
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 144
    return-object v0

    .line 146
    :cond_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 147
    sget-object v3, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mifiservice/security/SessionManager$Session;

    .line 148
    if-nez v3, :cond_1

    .line 149
    return-object v0

    .line 151
    :cond_1
    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$Session;->access$700(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0x1a3185c50000L

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    .line 152
    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$Session;->access$200(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0xd18c2e2800L

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v3, v1, v2}, Lcom/mifiservice/security/SessionManager$Session;->access$202(Lcom/mifiservice/security/SessionManager$Session;J)J

    .line 157
    return-object v3

    .line 153
    :cond_3
    :goto_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object v0
.end method
