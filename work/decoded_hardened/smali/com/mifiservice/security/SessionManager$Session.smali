.class final Lcom/mifiservice/security/SessionManager$Session;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/security/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation


# instance fields
.field private final createdNanos:J

.field private lastActivityNanos:J

.field private needsPasswordChange:Z

.field private final remoteAddress:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/mifiservice/security/SessionManager$Session;->token:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/mifiservice/security/SessionManager$Session;->remoteAddress:Ljava/lang/String;

    .line 207
    iput-wide p3, p0, Lcom/mifiservice/security/SessionManager$Session;->createdNanos:J

    .line 208
    iput-wide p3, p0, Lcom/mifiservice/security/SessionManager$Session;->lastActivityNanos:J

    .line 209
    iput-boolean p5, p0, Lcom/mifiservice/security/SessionManager$Session;->needsPasswordChange:Z

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLcom/mifiservice/security/SessionManager$1;)V
    .locals 0

    .line 197
    invoke-direct/range {p0 .. p5}, Lcom/mifiservice/security/SessionManager$Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/mifiservice/security/SessionManager$Session;)Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/mifiservice/security/SessionManager$Session;->needsPasswordChange:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mifiservice/security/SessionManager$Session;Z)Z
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/mifiservice/security/SessionManager$Session;->needsPasswordChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mifiservice/security/SessionManager$Session;)J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/mifiservice/security/SessionManager$Session;->lastActivityNanos:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/mifiservice/security/SessionManager$Session;J)J
    .locals 0

    .line 197
    iput-wide p1, p0, Lcom/mifiservice/security/SessionManager$Session;->lastActivityNanos:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/mifiservice/security/SessionManager$Session;)J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/mifiservice/security/SessionManager$Session;->createdNanos:J

    return-wide v0
.end method
