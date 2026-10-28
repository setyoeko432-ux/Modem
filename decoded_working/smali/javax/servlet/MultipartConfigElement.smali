.class public Ljavax/servlet/MultipartConfigElement;
.super Ljava/lang/Object;
.source "MultipartConfigElement.java"


# instance fields
.field private fileSizeThreshold:I

.field private location:Ljava/lang/String;

.field private maxFileSize:J

.field private maxRequestSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    const-string v0, ""

    iput-object v0, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    .line 68
    :goto_0
    iput-wide v1, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    .line 69
    iput-wide v1, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    .line 71
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "maxFileSize"    # J
    .param p4, "maxRequestSize"    # J
    .param p6, "fileSizeThreshold"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p1, :cond_0

    .line 86
    const-string v0, ""

    iput-object v0, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    .line 90
    :goto_0
    iput-wide p2, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    .line 91
    iput-wide p4, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    .line 92
    iput p6, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    .line 93
    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/servlet/annotation/MultipartConfig;)V
    .locals 2
    .param p1, "annotation"    # Ljavax/servlet/annotation/MultipartConfig;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->location()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    .line 102
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->fileSizeThreshold()I

    move-result v0

    iput v0, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    .line 103
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->maxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    .line 104
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->maxRequestSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    .line 105
    return-void
.end method


# virtual methods
.method public getFileSizeThreshold()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    return-wide v0
.end method

.method public getMaxRequestSize()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    return-wide v0
.end method
