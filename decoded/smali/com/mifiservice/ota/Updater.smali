.class public Lcom/mifiservice/ota/Updater;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mifiservice/ota/Updater$CheckUpdateTask;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEBUG:Z = false

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "Updater"

.field private static instance:Lcom/mifiservice/ota/Updater;


# instance fields
.field private downloadId:J

.field private downloadManager:Landroid/app/DownloadManager;

.field private downloadMd5:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private powerManager:Landroid/os/PowerManager;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private updaterReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mifiservice/ota/Updater;->RECOVERY_DIR:Ljava/io/File;

    .line 236
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mifiservice/ota/Updater;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mifiservice/ota/Updater;->COMMAND_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/ota/Updater;->timer:Ljava/util/Timer;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/ota/Updater;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/mifiservice/ota/Updater$1;

    invoke-direct {v0, p0}, Lcom/mifiservice/ota/Updater$1;-><init>(Lcom/mifiservice/ota/Updater;)V

    iput-object v0, p0, Lcom/mifiservice/ota/Updater;->timerTask:Ljava/util/TimerTask;

    .line 59
    new-instance v0, Lcom/mifiservice/ota/Updater$2;

    invoke-direct {v0, p0}, Lcom/mifiservice/ota/Updater$2;-><init>(Lcom/mifiservice/ota/Updater;)V

    iput-object v0, p0, Lcom/mifiservice/ota/Updater;->updaterReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/mifiservice/ota/Updater;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/mifiservice/ota/Updater;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/mifiservice/ota/Updater;->downloadManager:Landroid/app/DownloadManager;

    .line 84
    iget-object v0, p0, Lcom/mifiservice/ota/Updater;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mifiservice/ota/Updater;->powerManager:Landroid/os/PowerManager;

    .line 86
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mifiservice/ota/Updater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mifiservice/ota/Updater;->updaterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/mifiservice/ota/Updater;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/mifiservice/ota/Updater;->timerTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0x1d4c0

    const-wide/32 v4, 0x1b7740

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/mifiservice/ota/Updater;)J
    .locals 2
    .param p0, "x0"    # Lcom/mifiservice/ota/Updater;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/mifiservice/ota/Updater;->downloadId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/mifiservice/ota/Updater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/ota/Updater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mifiservice/ota/Updater;->downloadApp(Ljava/lang/String;)V

    return-void
.end method

.method private downloadApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v2, "Updater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin download update.zip :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://120.77.62.229:8080/file/doDownload?md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mifiservice/device/WanDataController;->getInstance()Lcom/mifiservice/device/WanDataController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mifiservice/device/WanDataController;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 163
    .local v0, "down":Landroid/app/DownloadManager$Request;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 170
    const-string v2, "/sdcard/data/update.zip"

    invoke-virtual {p0, v2}, Lcom/mifiservice/ota/Updater;->deleteFile(Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 172
    const-string v2, "/data"

    const-string v3, "update.zip"

    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 173
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 175
    iput-object p1, p0, Lcom/mifiservice/ota/Updater;->downloadMd5:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/mifiservice/ota/Updater;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mifiservice/ota/Updater;->downloadId:J

    .line 177
    return-void
.end method

.method public static getInstance()Lcom/mifiservice/ota/Updater;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/mifiservice/ota/Updater;->instance:Lcom/mifiservice/ota/Updater;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/mifiservice/ota/Updater;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/ota/Updater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/ota/Updater;->instance:Lcom/mifiservice/ota/Updater;

    .line 78
    :cond_0
    sget-object v0, Lcom/mifiservice/ota/Updater;->instance:Lcom/mifiservice/ota/Updater;

    return-object v0
.end method

.method private recoveryMode(Landroid/os/PowerManager;)V
    .locals 4
    .param p1, "pm"    # Landroid/os/PowerManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "--update_package=/data/update.zip"

    .line 240
    .local v0, "arg":Ljava/lang/String;
    sget-object v2, Lcom/mifiservice/ota/Updater;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 242
    new-instance v1, Ljava/io/FileWriter;

    sget-object v2, Lcom/mifiservice/ota/Updater;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 244
    .local v1, "command":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 245
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 249
    const-string v2, "recovery"

    invoke-virtual {p1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 250
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v2
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "bytesum":I
    const/4 v1, 0x0

    .line 133
    .local v1, "byteread":I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v6, "oldfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v7, 0x5a4

    new-array v0, v7, [B

    .line 138
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 139
    add-int/2addr v2, v1

    .line 140
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "buffer":[B
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "oldfile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Updater"

    const-string v8, "err2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 142
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "oldfile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 153
    return-void
.end method

.method public doCheckUpdate()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/mifiservice/ota/Updater$CheckUpdateTask;

    invoke-direct {v0, p0}, Lcom/mifiservice/ota/Updater$CheckUpdateTask;-><init>(Lcom/mifiservice/ota/Updater;)V

    .line 231
    .local v0, "task":Lcom/mifiservice/ota/Updater$CheckUpdateTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mifiservice/ota/Updater$CheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    return-void
.end method

.method public doUpdate()V
    .locals 5

    .prologue
    .line 95
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/update.zip"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {v1}, Lcom/mifiservice/utils/TextUtil;->calcMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "md5":Ljava/lang/String;
    iget-object v3, p0, Lcom/mifiservice/ota/Updater;->downloadMd5:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/mifiservice/ota/Updater;->powerManager:Landroid/os/PowerManager;

    invoke-direct {p0, v3}, Lcom/mifiservice/ota/Updater;->recoveryMode(Landroid/os/PowerManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Updater"

    const-string v4, "err1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doUpdateNoMd5()V
    .locals 4

    .prologue
    .line 115
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/update.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mifiservice/ota/Updater;->powerManager:Landroid/os/PowerManager;

    invoke-direct {p0, v2}, Lcom/mifiservice/ota/Updater;->recoveryMode(Landroid/os/PowerManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Updater"

    const-string v3, "err1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBytesAndStatus(J)[I
    .locals 6
    .param p1, "downloadId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 211
    const/4 v3, 0x3

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 212
    .local v0, "bytesAndStatus":[I
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v4, v4, [J

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 213
    .local v2, "query":Landroid/app/DownloadManager$Query;
    const/4 v1, 0x0

    .line 215
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/mifiservice/ota/Updater;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v3, 0x0

    const-string v4, "bytes_so_far"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 218
    const/4 v3, 0x1

    const-string v4, "total_size"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 219
    const/4 v3, 0x2

    const-string v4, "status"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    if-eqz v1, :cond_1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    return-object v0

    .line 222
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_2
    throw v3

    .line 211
    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data
.end method
