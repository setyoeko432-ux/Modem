.class public Lcom/mifiservice/utils/CompressUtil;
.super Ljava/lang/Object;
.source "CompressUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gzip([B)[B
    .locals 5
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 18
    .local v1, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    if-eqz v2, :cond_0

    .line 23
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 21
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_1

    .line 23
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 21
    :cond_1
    :goto_2
    throw v4

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 24
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v0

    .line 25
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 21
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzip":Ljava/util/zip/GZIPOutputStream;
    goto :goto_1
.end method

.method public static ungzip([B)[B
    .locals 9
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 35
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 37
    .local v1, "ginzip":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .local v4, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    .end local v1    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .local v2, "ginzip":Ljava/util/zip/GZIPInputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 42
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    .local v5, "offset":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 43
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    .end local v0    # "buffer":[B
    .end local v5    # "offset":I
    :catchall_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "ginzip":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 48
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 52
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 54
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 46
    :cond_1
    :goto_3
    throw v7

    .end local v1    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "offset":I
    :cond_2
    if-eqz v2, :cond_3

    .line 48
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 52
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 54
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 59
    :cond_4
    :goto_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 49
    .end local v0    # "buffer":[B
    .end local v2    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "offset":I
    .restart local v1    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 55
    :catch_1
    move-exception v8

    goto :goto_3

    .line 49
    .end local v1    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "offset":I
    :catch_2
    move-exception v7

    goto :goto_4

    .line 55
    :catch_3
    move-exception v7

    goto :goto_5

    .line 46
    .end local v0    # "buffer":[B
    .end local v2    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "offset":I
    .restart local v1    # "ginzip":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    goto :goto_1

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method

.method public static unzip([B)[B
    .locals 9
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 84
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 86
    .local v5, "zin":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .end local v1    # "in":Ljava/io/ByteArrayInputStream;
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/ZipInputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 88
    .end local v5    # "zin":Ljava/util/zip/ZipInputStream;
    .local v6, "zin":Ljava/util/zip/ZipInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 89
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 91
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    .local v3, "offset":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    .line 92
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "buffer":[B
    .end local v3    # "offset":I
    :catchall_0
    move-exception v7

    move-object v5, v6

    .end local v6    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "zin":Ljava/util/zip/ZipInputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "in":Ljava/io/ByteArrayInputStream;
    :goto_1
    if-eqz v5, :cond_0

    .line 97
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 103
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 95
    :cond_1
    :goto_3
    throw v7

    .end local v1    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "offset":I
    .restart local v6    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_2
    if-eqz v6, :cond_3

    .line 97
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 101
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 103
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 108
    :cond_4
    :goto_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 98
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "offset":I
    .end local v6    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 104
    :catch_1
    move-exception v8

    goto :goto_3

    .line 98
    .end local v1    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "offset":I
    .restart local v6    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v7

    goto :goto_4

    .line 104
    :catch_3
    move-exception v7

    goto :goto_5

    .line 95
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "offset":I
    .end local v6    # "zin":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "zin":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v7

    goto :goto_1

    .end local v1    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method

.method public static zip([B)[B
    .locals 5
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 66
    .local v1, "zout":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v1    # "zout":Ljava/util/zip/ZipOutputStream;
    .local v2, "zout":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 68
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 69
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    if-eqz v2, :cond_0

    .line 73
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 71
    .end local v2    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "zout":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    :cond_1
    :goto_2
    throw v3

    .line 74
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v1    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "zout":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 71
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "zout":Ljava/util/zip/ZipOutputStream;
    goto :goto_1
.end method
