.class public Lorg/eclipse/jetty/util/RolloverFileOutputStream;
.super Ljava/io/FilterOutputStream;
.source "RolloverFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;,
        Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;
    }
.end annotation


# static fields
.field static final ROLLOVER_FILE_BACKUP_FORMAT:Ljava/lang/String; = "HHmmssSSS"

.field static final ROLLOVER_FILE_DATE_FORMAT:Ljava/lang/String; = "yyyy_MM_dd"

.field static final ROLLOVER_FILE_RETAIN_DAYS:I = 0x1f

.field static final YYYY_MM_DD:Ljava/lang/String; = "yyyy_mm_dd"

.field private static __rollover:Ljava/util/Timer;


# instance fields
.field private _append:Z

.field private _file:Ljava/io/File;

.field private _fileBackupFormat:Ljava/text/SimpleDateFormat;

.field private _fileDateFormat:Ljava/text/SimpleDateFormat;

.field private _filename:Ljava/lang/String;

.field private _retainDays:I

.field private _rollTask:Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v0, 0x1f

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "retainDays"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "retainDays"    # I
    .param p4, "zone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "retainDays"    # I
    .param p4, "zone"    # Ljava/util/TimeZone;
    .param p5, "dateFormat"    # Ljava/lang/String;
    .param p6, "backupFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, v1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    if-nez p5, :cond_0

    .line 144
    const-string p5, "yyyy_MM_dd"

    .line 145
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    .line 147
    if-nez p6, :cond_1

    .line 148
    const-string p6, "HHmmssSSS"

    .line 149
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    .line 151
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 154
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 158
    const/4 p1, 0x0

    .line 160
    :cond_2
    if-nez p1, :cond_3

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid filename"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    .line 164
    iput-boolean p2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_append:Z

    .line 165
    iput p3, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_retainDays:I

    .line 166
    invoke-direct {p0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->setFile()V

    .line 168
    const-class v7, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    monitor-enter v7

    .line 170
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    if-nez v1, :cond_4

    .line 171
    new-instance v1, Ljava/util/Timer;

    const-class v2, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    .line 173
    :cond_4
    new-instance v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;-><init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_rollTask:Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 176
    .local v6, "now":Ljava/util/Calendar;
    invoke-virtual {v6, p4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 183
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p4}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 184
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 185
    sget-object v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->__rollover:Ljava/util/Timer;

    iget-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_rollTask:Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 186
    monitor-exit v7

    .line 187
    return-void

    .line 186
    .end local v0    # "midnight":Ljava/util/GregorianCalendar;
    .end local v6    # "now":Ljava/util/Calendar;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/util/RolloverFileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->setFile()V

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->removeOldFiles()V

    return-void
.end method

.method private removeOldFiles()V
    .locals 19

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_retainDays:I

    if-lez v15, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 259
    .local v10, "now":J
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v6, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "fn":Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "yyyy_mm_dd"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 263
    .local v13, "s":I
    if-gez v13, :cond_1

    .line 281
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fn":Ljava/lang/String;
    .end local v10    # "now":J
    .end local v13    # "s":I
    :cond_0
    return-void

    .line 265
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fn":Ljava/lang/String;
    .restart local v10    # "now":J
    .restart local v13    # "s":I
    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v7, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 266
    .local v12, "prefix":Ljava/lang/String;
    const-string v15, "yyyy_mm_dd"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 268
    .local v14, "suffix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "logList":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v15, v9

    if-ge v8, v15, :cond_0

    .line 271
    aget-object v7, v9, v8

    .line 272
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_2

    .line 274
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 276
    .local v2, "date":J
    sub-long v15, v10, v2

    const-wide/32 v17, 0x5265c00

    div-long v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_retainDays:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 277
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 269
    .end local v2    # "date":J
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private declared-synchronized setFile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    iget-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v1    # "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot write log directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 221
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 224
    .local v4, "now":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "filename":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yyyy_mm_dd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, "i":I
    if-ltz v3, :cond_2

    .line 228
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_fileDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "yyyy_mm_dd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 235
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot write log file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 238
    :cond_3
    iget-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 241
    :cond_4
    iput-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 242
    iget-boolean v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_append:Z

    if-nez v6, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 243
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_fileBackupFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 244
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 245
    .local v5, "oldOut":Ljava/io/OutputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_append:Z

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 246
    if-eqz v5, :cond_6

    .line 247
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .end local v5    # "oldOut":Ljava/io/OutputStream;
    :cond_6
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    const-class v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    monitor-enter v1

    .line 308
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_rollTask:Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;->cancel()Z

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 311
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 312
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    throw v0

    .line 316
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->_retainDays:I

    return v0
.end method

.method public write([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 289
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 297
    return-void
.end method
