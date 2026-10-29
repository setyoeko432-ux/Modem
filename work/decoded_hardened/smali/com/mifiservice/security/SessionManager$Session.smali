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

.field private final publicId:Ljava/lang/String;

.field private final remoteAddress:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/mifiservice/security/SessionManager$Session;->token:Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->access$1100()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mifiservice/security/SessionManager$Session;->publicId:Ljava/lang/String;

    .line 298
    iput-object p2, p0, Lcom/mifiservice/security/SessionManager$Session;->remoteAddress:Ljava/lang/String;

    .line 299
    iput-wide p3, p0, Lcom/mifiservice/security/SessionManager$Session;->createdNanos:J

    .line 300
    iput-wide p3, p0, Lcom/mifiservice/security/SessionManager$Session;->lastActivityNanos:J

    .line 301
    iput-boolean p5, p0, Lcom/mifiservice/security/SessionManager$Session;->needsPasswordChange:Z

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLcom/mifiservice/security/SessionManager$1;)V
    .locals 0

    .line 287
    invoke-direct/range {p0 .. p5}, Lcom/mifiservice/security/SessionManager$Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/mifiservice/security/SessionManager$Session;)Z
    .locals 0

    .line 287
    iget-boolean p0, p0, Lcom/mifiservice/security/SessionManager$Session;->needsPasswordChange:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mifiservice/security/SessionManager$Session;Z)Z
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/mifiservice/security/SessionManager$Session;->needsPasswordChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mifiservice/security/SessionManager$Session;)J
    .locals 2

    .line 287
    iget-wide v0, p0, Lcom/mifiservice/security/SessionManager$Session;->lastActivityNanos:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/mifiservice/security/SessionManager$Session;J)J
    .locals 0

    .line 287
    iput-wide p1, p0, Lcom/mifiservice/security/SessionManager$Session;->lastActivityNanos:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/mifiservice/security/SessionManager$Session;->publicId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/mifiservice/security/SessionManager$Session;->remoteAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mifiservice/security/SessionManager$Session;)J
    .locals 2

    .line 287
    iget-wide v0, p0, Lcom/mifiservice/security/SessionManager$Session;->createdNanos:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/mifiservice/security/SessionManager$Session;)Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/mifiservice/security/SessionManager$Session;->token:Ljava/lang/String;

    return-object p0
.end method
