.class public final Lorg/apache/commons/fileupload/util/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static asString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 142
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static asString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    .line 159
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static checkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :pswitch_0
    const-string v3, "\\0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 187
    .end local v0    # "c":C
    :cond_0
    new-instance v3, Lorg/apache/commons/fileupload/InvalidFileNameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/fileupload/InvalidFileNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 190
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object p0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "closeOutputStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/fileupload/util/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z[B)J
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "closeOutputStream"    # Z
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v1, p1

    .line 94
    .local v1, "out":Ljava/io/OutputStream;
    move-object v0, p0

    .line 96
    .local v0, "in":Ljava/io/InputStream;
    const-wide/16 v3, 0x0

    .line 98
    .local v3, "total":J
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 99
    .local v2, "res":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 109
    if-eqz v1, :cond_1

    .line 110
    if-eqz p2, :cond_5

    .line 111
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 115
    :goto_1
    const/4 v1, 0x0

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    const/4 v0, 0x0

    .line 121
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 122
    if-eqz p2, :cond_2

    .line 123
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 119
    :cond_2
    return-wide v3

    .line 102
    :cond_3
    if-lez v2, :cond_0

    .line 103
    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 104
    if-eqz v1, :cond_0

    .line 105
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, p3, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v2    # "res":I
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 122
    if-eqz p2, :cond_4

    .line 123
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 125
    :cond_4
    throw v5

    .line 113
    .restart local v2    # "res":I
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
