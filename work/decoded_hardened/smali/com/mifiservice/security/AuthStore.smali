.class public final Lcom/mifiservice/security/AuthStore;
.super Ljava/lang/Object;
.source "AuthStore.java"


# static fields
.field static final MAX_BYTES:I = 0x10000

.field private static file:Ljava/io/File;

.field private static testNowSeconds:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/mifi_auth.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0

    .line 98
    if-eqz p0, :cond_0

    .line 100
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception p0

    .line 105
    :cond_0
    :goto_0
    return-void
.end method

.method static declared-synchronized nowSeconds()J
    .locals 5

    const-class v0, Lcom/mifiservice/security/AuthStore;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/mifiservice/security/AuthStore;->testNowSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mifiservice/security/AuthStore;->testNowSeconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 34
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static declared-synchronized read()Lorg/json/JSONObject;
    .locals 7

    const-class v0, Lcom/mifiservice/security/AuthStore;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v3, 0x10000

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_3

    .line 41
    :cond_0
    nop

    .line 43
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 47
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 48
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :try_start_3
    invoke-static {v2}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    monitor-exit v0

    return-object v3

    .line 55
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 51
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 55
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    .line 51
    :catch_1
    move-exception v2

    .line 53
    :goto_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :try_start_5
    invoke-static {v1}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 53
    monitor-exit v0

    return-object v2

    .line 55
    :goto_2
    :try_start_6
    invoke-static {v2}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V

    .line 56
    throw v1

    .line 39
    :cond_2
    :goto_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public static declared-synchronized setFile(Ljava/io/File;)V
    .locals 1

    const-class v0, Lcom/mifiservice/security/AuthStore;

    monitor-enter v0

    .line 26
    :try_start_0
    sput-object p0, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 25
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setNowSecondsForTests(Ljava/lang/Long;)V
    .locals 1

    const-class v0, Lcom/mifiservice/security/AuthStore;

    monitor-enter v0

    .line 30
    :try_start_0
    sput-object p0, Lcom/mifiservice/security/AuthStore;->testNowSeconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    .line 29
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized write(Lorg/json/JSONObject;)Z
    .locals 5

    const-class v0, Lcom/mifiservice/security/AuthStore;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 61
    monitor-exit v0

    return v2

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 68
    nop

    .line 69
    :try_start_2
    array-length v1, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_1

    .line 70
    monitor-exit v0

    return v2

    .line 72
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    nop

    .line 75
    const/4 v3, 0x0

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :try_start_5
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 77
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-static {v4}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    nop

    .line 80
    :try_start_6
    invoke-virtual {v1, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 81
    invoke-virtual {v1, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 82
    const/4 p0, 0x1

    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 83
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 84
    sget-object v4, Lcom/mifiservice/security/AuthStore;->file:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    nop

    .line 93
    :try_start_7
    invoke-static {v3}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 86
    monitor-exit v0

    return v2

    .line 88
    :cond_2
    nop

    .line 93
    :try_start_8
    invoke-static {v3}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 88
    monitor-exit v0

    return p0

    .line 93
    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    .line 89
    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_0

    .line 93
    :catchall_1
    move-exception p0

    goto :goto_1

    .line 89
    :catch_1
    move-exception p0

    .line 90
    :goto_0
    :try_start_9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 91
    nop

    .line 93
    :try_start_a
    invoke-static {v3}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 91
    monitor-exit v0

    return v2

    .line 93
    :goto_1
    :try_start_b
    invoke-static {v3}, Lcom/mifiservice/security/AuthStore;->close(Ljava/io/Closeable;)V

    .line 94
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 66
    :catch_2
    move-exception p0

    .line 67
    monitor-exit v0

    return v2

    .line 59
    :catchall_2
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw p0
.end method
