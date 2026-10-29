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

.field private static final MAX_SESSIONS:I = 0x4

.field private static final NANOS:J = 0x3b9aca00L

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

    .line 19
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/mifiservice/security/SessionManager;->RANDOM:Ljava/security/SecureRandom;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->newPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized advanceNanosForTests(J)V
    .locals 3

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 228
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 229
    add-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v0

    return-void

    .line 227
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static blocked(Ljava/lang/String;J)Z
    .locals 7

    .line 174
    sget-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mifiservice/security/SessionManager$LoginBucket;

    .line 175
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$700(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide v4, 0x1a3185c5000L

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 179
    sget-object p1, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return v1

    .line 182
    :cond_1
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$800(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static declared-synchronized clearForTests()V
    .locals 2

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 219
    sget-object v1, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 220
    const/4 v1, 0x0

    sput-object v1, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit v0

    return-void

    .line 217
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

    .line 74
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 75
    monitor-exit v0

    return-object v1

    .line 77
    :cond_0
    :try_start_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 78
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 79
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v4, "mifi_sid="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const-string v4, "mifi_sid"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lcom/mifiservice/security/SessionManager;->isHex(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 83
    monitor-exit v0

    return-object v3

    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_2
    monitor-exit v0

    return-object v1

    .line 73
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

    .line 30
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v5

    .line 31
    invoke-static {v5, v6}, Lcom/mifiservice/security/SessionManager;->purgeExpired(J)V

    .line 32
    :goto_0
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 33
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 42
    sget-object v2, Lcom/mifiservice/security/SessionManager;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 43
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager;->toHex([B)Ljava/lang/String;

    move-result-object v3

    .line 44
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/mifiservice/security/SessionManager$Session;

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/mifiservice/security/SessionManager$Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/mifiservice/security/SessionManager$1;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v1

    return-object v3

    .line 29
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

.method public static declared-synchronized destroy(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 119
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 119
    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0
.end method

.method public static declared-synchronized destroyAll()V
    .locals 2

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static fail(Ljava/lang/String;JIZ)V
    .locals 6

    .line 194
    sget-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mifiservice/security/SessionManager$LoginBucket;

    .line 195
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$700(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide v3, 0x1a3185c5000L

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 196
    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    .line 197
    sget-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 201
    :cond_1
    new-instance v0, Lcom/mifiservice/security/SessionManager$LoginBucket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mifiservice/security/SessionManager$LoginBucket;-><init>(Lcom/mifiservice/security/SessionManager$1;)V

    .line 202
    sget-object v1, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$1008(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    .line 205
    invoke-static {v0, p1, p2}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$702(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J

    .line 206
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$1000(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    move-result p0

    if-lt p0, p3, :cond_4

    .line 207
    nop

    .line 208
    if-eqz p4, :cond_3

    .line 209
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$1000(Lcom/mifiservice/security/SessionManager$LoginBucket;)I

    move-result p0

    sub-int/2addr p0, p3

    const/16 p3, 0x14

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 210
    const-wide/16 p3, 0x1e

    shl-long/2addr p3, p0

    .line 211
    const-wide/16 v1, 0x384

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_0

    .line 208
    :cond_3
    const-wide/16 p3, 0x3c

    .line 213
    :goto_0
    const-wide/32 v1, 0x3b9aca00

    mul-long p3, p3, v1

    add-long/2addr p1, p3

    invoke-static {v0, p1, p2}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$802(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J

    .line 215
    :cond_4
    return-void
.end method

.method private static isHex(Ljava/lang/String;)Z
    .locals 4

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 278
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 279
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

    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_3
    :goto_1
    return v0

    .line 284
    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized isValid(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 49
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

    .line 49
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized list(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 130
    invoke-static {v1, v2}, Lcom/mifiservice/security/SessionManager;->purgeExpired(J)V

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    sget-object v4, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mifiservice/security/SessionManager$Session;

    .line 133
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    .line 134
    invoke-static {v5}, Lcom/mifiservice/security/SessionManager$Session;->access$300(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 135
    invoke-static {v5}, Lcom/mifiservice/security/SessionManager$Session;->access$400(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 136
    invoke-static {v5}, Lcom/mifiservice/security/SessionManager$Session;->access$500(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v7

    sub-long v7, v1, v7

    const-wide/32 v9, 0x3b9aca00

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 137
    invoke-static {v5}, Lcom/mifiservice/security/SessionManager$Session;->access$200(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v7

    sub-long v7, v1, v7

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 138
    invoke-static {v5}, Lcom/mifiservice/security/SessionManager$Session;->access$600(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_1

    :cond_0
    const-string v5, "0"

    :goto_1
    const/4 v7, 0x4

    aput-object v5, v6, v7

    .line 133
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    monitor-exit v0

    return-object v3

    .line 128
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static declared-synchronized loginAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/mifiservice/security/SessionManager;->blocked(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/mifiservice/security/SessionManager;->blocked(Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 91
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized needsPasswordChange(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;

    move-result-object p0

    .line 54
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

    .line 52
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static newPublicId()Ljava/lang/String;
    .locals 2

    .line 160
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 161
    sget-object v1, Lcom/mifiservice/security/SessionManager;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 162
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static norm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 166
    if-nez p0, :cond_0

    .line 167
    const-string p0, ""

    return-object p0

    .line 169
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static nowNanos()J
    .locals 2

    .line 262
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

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-nez v1, :cond_0

    .line 60
    monitor-exit v0

    return-void

    .line 62
    :cond_0
    :try_start_1
    sget-object v2, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 68
    :cond_1
    goto :goto_0

    .line 69
    :cond_2
    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/mifiservice/security/SessionManager$Session;->access$102(Lcom/mifiservice/security/SessionManager$Session;Z)Z

    .line 70
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/mifiservice/security/SessionManager$Session;->access$202(Lcom/mifiservice/security/SessionManager$Session;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 57
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

.method public static declared-synchronized publicId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;

    move-result-object p0

    .line 125
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$Session;->access$300(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 123
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static purgeExpired(J)V
    .locals 7

    .line 251
    sget-object v0, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mifiservice/security/SessionManager$Session;

    .line 254
    invoke-static {v1}, Lcom/mifiservice/security/SessionManager$Session;->access$500(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v2

    sub-long v2, p0, v2

    const-wide v4, 0x1a3185c50000L

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 255
    invoke-static {v1}, Lcom/mifiservice/security/SessionManager$Session;->access$200(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v1

    sub-long v1, p0, v1

    const-wide v3, 0xd18c2e2800L

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 256
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 258
    :cond_1
    goto :goto_0

    .line 259
    :cond_2
    return-void
.end method

.method public static declared-synchronized recordLoginFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Lcom/mifiservice/security/SessionManager;->fail(Ljava/lang/String;JIZ)V

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x14

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/mifiservice/security/SessionManager;->fail(Ljava/lang/String;JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-void

    .line 96
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized recordLoginSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class p0, Lcom/mifiservice/security/SessionManager;

    monitor-enter p0

    .line 103
    :try_start_0
    sget-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static remaining(Ljava/lang/String;J)J
    .locals 4

    .line 186
    sget-object v0, Lcom/mifiservice/security/SessionManager;->LOGIN_BUCKETS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mifiservice/security/SessionManager$LoginBucket;

    .line 187
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$800(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager$LoginBucket;->access$800(Lcom/mifiservice/security/SessionManager$LoginBucket;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p0, 0x3b9aca00

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p0

    return-wide v0

    .line 188
    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static declared-synchronized retryAfterSeconds(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/mifiservice/security/SessionManager;->remaining(Ljava/lang/String;J)J

    move-result-wide v3

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/mifiservice/security/SessionManager;->remaining(Ljava/lang/String;J)J

    move-result-wide p0

    .line 111
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide p0

    .line 107
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized revoke(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 145
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 146
    monitor-exit v0

    return v1

    .line 148
    :cond_0
    :try_start_0
    sget-object v2, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mifiservice/security/SessionManager$Session;

    invoke-static {v4}, Lcom/mifiservice/security/SessionManager$Session;->access$300(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 155
    :cond_1
    goto :goto_0

    .line 156
    :cond_2
    monitor-exit v0

    return v1

    .line 144
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

.method public static declared-synchronized setNowNanosForTests(J)V
    .locals 1

    const-class v0, Lcom/mifiservice/security/SessionManager;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/mifiservice/security/SessionManager;->testNowNanos:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit v0

    return-void

    .line 223
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

    .line 266
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 267
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 268
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 269
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 270
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 271
    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v4

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static touch(Ljava/lang/String;)Lcom/mifiservice/security/SessionManager$Session;
    .locals 9

    .line 233
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 234
    return-object v0

    .line 236
    :cond_0
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->nowNanos()J

    move-result-wide v1

    .line 237
    sget-object v3, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mifiservice/security/SessionManager$Session;

    .line 238
    if-nez v3, :cond_1

    .line 239
    return-object v0

    .line 241
    :cond_1
    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$Session;->access$500(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0x1a3185c50000L

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    .line 242
    invoke-static {v3}, Lcom/mifiservice/security/SessionManager$Session;->access$200(Lcom/mifiservice/security/SessionManager$Session;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide v6, 0xd18c2e2800L

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {v3, v1, v2}, Lcom/mifiservice/security/SessionManager$Session;->access$202(Lcom/mifiservice/security/SessionManager$Session;J)J

    .line 247
    return-object v3

    .line 243
    :cond_3
    :goto_0
    sget-object v1, Lcom/mifiservice/security/SessionManager;->SESSIONS:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-object v0
.end method
