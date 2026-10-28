.class public Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;
.super Ljava/lang/Object;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesRead:J

.field private final contentLength:J

.field private items:I

.field private final listener:Lorg/apache/commons/fileupload/ProgressListener;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/ProgressListener;J)V
    .locals 0
    .param p1, "pListener"    # Lorg/apache/commons/fileupload/ProgressListener;
    .param p2, "pContentLength"    # J

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    .line 121
    iput-wide p2, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->contentLength:J

    .line 122
    return-void
.end method

.method private notifyListener()V
    .locals 6

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->listener:Lorg/apache/commons/fileupload/ProgressListener;

    iget-wide v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->bytesRead:J

    iget-wide v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->contentLength:J

    iget v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->items:I

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/fileupload/ProgressListener;->update(JJI)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method noteBytesRead(I)V
    .locals 4
    .param p1, "pBytes"    # I

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->bytesRead:J

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->notifyListener()V

    .line 135
    return-void
.end method

.method noteItem()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->items:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->items:I

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->notifyListener()V

    .line 143
    return-void
.end method
