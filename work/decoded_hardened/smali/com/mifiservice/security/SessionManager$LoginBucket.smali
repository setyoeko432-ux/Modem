.class final Lcom/mifiservice/security/SessionManager$LoginBucket;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/security/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoginBucket"
.end annotation


# instance fields
.field private cooldownUntilNanos:J

.field private failures:I

.field private windowStartNanos:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-wide p1, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->windowStartNanos:J

    .line 220
    return-void
.end method

.method synthetic constructor <init>(JLcom/mifiservice/security/SessionManager$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/mifiservice/security/SessionManager$LoginBucket;-><init>(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/mifiservice/security/SessionManager$LoginBucket;)J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->cooldownUntilNanos:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J
    .locals 0

    .line 213
    iput-wide p1, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->cooldownUntilNanos:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/mifiservice/security/SessionManager$LoginBucket;)I
    .locals 0

    .line 213
    iget p0, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->failures:I

    return p0
.end method

.method static synthetic access$402(Lcom/mifiservice/security/SessionManager$LoginBucket;I)I
    .locals 0

    .line 213
    iput p1, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->failures:I

    return p1
.end method

.method static synthetic access$408(Lcom/mifiservice/security/SessionManager$LoginBucket;)I
    .locals 2

    .line 213
    iget v0, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->failures:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->failures:I

    return v0
.end method

.method static synthetic access$500(Lcom/mifiservice/security/SessionManager$LoginBucket;)J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->windowStartNanos:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/mifiservice/security/SessionManager$LoginBucket;J)J
    .locals 0

    .line 213
    iput-wide p1, p0, Lcom/mifiservice/security/SessionManager$LoginBucket;->windowStartNanos:J

    return-wide p1
.end method
