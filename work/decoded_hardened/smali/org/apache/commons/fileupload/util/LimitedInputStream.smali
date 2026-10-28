.class public abstract Lorg/apache/commons/fileupload/util/LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedInputStream.java"

# interfaces
.implements Lorg/apache/commons/fileupload/util/Closeable;


# instance fields
.field private closed:Z

.field private count:J

.field private final sizeMax:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "pSizeMax"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    iput-wide p2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->sizeMax:J

    .line 54
    return-void
.end method

.method private checkLimit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    iget-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->sizeMax:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 76
    iget-wide v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->sizeMax:J

    iget-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/fileupload/util/LimitedInputStream;->raiseError(JJ)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->closed:Z

    .line 163
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 164
    return-void
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->closed:Z

    return v0
.end method

.method protected abstract raiseError(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 100
    .local v0, "res":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 101
    iget-wide v1, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/fileupload/util/LimitedInputStream;->checkLimit()V

    .line 104
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 133
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 134
    iget-wide v1, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/fileupload/util/LimitedInputStream;->checkLimit()V

    .line 137
    :cond_0
    return v0
.end method
