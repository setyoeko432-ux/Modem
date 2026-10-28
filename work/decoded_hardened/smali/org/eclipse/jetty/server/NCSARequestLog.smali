.class public Lorg/eclipse/jetty/server/NCSARequestLog;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "NCSARequestLog.java"

# interfaces
.implements Lorg/eclipse/jetty/server/RequestLog;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static _buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _append:Z

.field private _closeOut:Z

.field private _extended:Z

.field private transient _fileOut:Ljava/io/OutputStream;

.field private _filename:Ljava/lang/String;

.field private _filenameDateFormat:Ljava/lang/String;

.field private transient _ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _ignorePaths:[Ljava/lang/String;

.field private _logCookies:Z

.field private transient _logDateCache:Lorg/eclipse/jetty/util/DateCache;

.field private _logDateFormat:Ljava/lang/String;

.field private _logDispatch:Z

.field private _logLatency:Z

.field private _logLocale:Ljava/util/Locale;

.field private _logServer:Z

.field private _logTimeZone:Ljava/lang/String;

.field private transient _out:Ljava/io/OutputStream;

.field private _preferProxiedForAddress:Z

.field private _retainDays:I

.field private transient _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/eclipse/jetty/server/NCSARequestLog;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 56
    new-instance v0, Lorg/eclipse/jetty/server/NCSARequestLog$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/NCSARequestLog$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_buffers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 71
    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 74
    const-string v0, "GMT"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 77
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 78
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 79
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 93
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 94
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 95
    const/16 v0, 0x1f

    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 71
    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 74
    const-string v0, "GMT"

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 77
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 78
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 79
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 108
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 109
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 110
    const/16 v0, 0x1f

    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 111
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;->setFilename(Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected declared-synchronized doStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 658
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZoneID(Ljava/lang/String;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 663
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    iget v3, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    iget-object v4, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 665
    sget-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/NCSARequestLog;->getDatedFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 674
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 675
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 676
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 668
    .end local v7    # "i":I
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 679
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 681
    :cond_3
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :try_start_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 684
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 685
    :try_start_3
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 684
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 697
    monitor-enter p0

    .line 699
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 712
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 719
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 720
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 721
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 722
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 723
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 724
    monitor-exit p0

    .line 725
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 724
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 714
    :catch_1
    move-exception v0

    .line 716
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    check-cast v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->getDatedFilename()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnorePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogCookies()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    return v0
.end method

.method public getLogDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLatency()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    return v0
.end method

.method public getLogLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLogServer()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    return v0
.end method

.method public getLogTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferProxiedForAddress()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    return v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    return v0
.end method

.method public isLogDispatch()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    return v0
.end method

.method public log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V
    .locals 23
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "response"    # Lorg/eclipse/jetty/server/Response;

    .prologue
    .line 466
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 472
    sget-object v17, Lorg/eclipse/jetty/server/NCSARequestLog;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    .line 473
    .local v5, "buf":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 477
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :cond_2
    const/4 v3, 0x0

    .line 482
    .local v3, "addr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 484
    const-string v17, "X-Forwarded-For"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 487
    :cond_3
    if-nez v3, :cond_4

    .line 488
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    .line 490
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v4

    .line 493
    .local v4, "authentication":Lorg/eclipse/jetty/server/Authentication;
    instance-of v0, v4, Lorg/eclipse/jetty/server/Authentication$User;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 494
    check-cast v4, Lorg/eclipse/jetty/server/Authentication$User;

    .end local v4    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    invoke-interface {v4}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_1
    const-string v17, " ["

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_2
    const-string v17, "] \""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v17, "\" "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 513
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v16

    .line 514
    .local v16, "status":I
    if-gtz v16, :cond_5

    .line 515
    const/16 v16, 0x194

    .line 516
    :cond_5
    div-int/lit8 v17, v16, 0x64

    rem-int/lit8 v17, v17, 0xa

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    div-int/lit8 v17, v16, 0xa

    rem-int/lit8 v17, v17, 0xa

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    rem-int/lit8 v17, v16, 0xa

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    .end local v16    # "status":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v14

    .line 524
    .local v14, "responseLength":J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-ltz v17, :cond_15

    .line 526
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    const-wide/32 v17, 0x1869f

    cmp-long v17, v14, v17

    if-lez v17, :cond_10

    .line 528
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 541
    :goto_4
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/eclipse/jetty/server/NCSARequestLog;->logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V

    .line 550
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 552
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v6

    .line 553
    .local v6, "cookies":[Ljavax/servlet/http/Cookie;
    if-eqz v6, :cond_7

    array-length v0, v6

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 554
    :cond_7
    const-string v17, " -"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .end local v6    # "cookies":[Ljavax/servlet/http/Cookie;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 572
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 574
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 576
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getDispatchTime()J

    move-result-wide v7

    .line 577
    .local v7, "d":J
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-nez v17, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v7

    .end local v7    # "d":J
    :cond_a
    sub-long v17, v12, v7

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 581
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 583
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v17

    sub-long v17, v12, v17

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    .end local v12    # "now":J
    :cond_c
    sget-object v17, Lorg/eclipse/jetty/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 591
    .local v11, "log":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/NCSARequestLog;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 593
    .end local v3    # "addr":Ljava/lang/String;
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    .end local v11    # "log":Ljava/lang/String;
    .end local v14    # "responseLength":J
    :catch_0
    move-exception v9

    .line 595
    .local v9, "e":Ljava/io/IOException;
    sget-object v17, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 496
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "addr":Ljava/lang/String;
    .restart local v4    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    .restart local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_d
    :try_start_1
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 502
    .end local v4    # "authentication":Lorg/eclipse/jetty/server/Authentication;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 521
    :cond_f
    const-string v17, "Async"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 531
    .restart local v14    # "responseLength":J
    :cond_10
    const-wide/16 v17, 0x270f

    cmp-long v17, v14, v17

    if-lez v17, :cond_11

    .line 532
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0x2710

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    :cond_11
    const-wide/16 v17, 0x3e7

    cmp-long v17, v14, v17

    if-lez v17, :cond_12

    .line 534
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0x3e8

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    :cond_12
    const-wide/16 v17, 0x63

    cmp-long v17, v14, v17

    if-lez v17, :cond_13

    .line 536
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0x64

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    :cond_13
    const-wide/16 v17, 0x9

    cmp-long v17, v14, v17

    if-lez v17, :cond_14

    .line 538
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0xa

    div-long v19, v14, v19

    const-wide/16 v21, 0xa

    rem-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_14
    const-wide/16 v17, 0x30

    const-wide/16 v19, 0xa

    rem-long v19, v14, v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 544
    :cond_15
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 557
    .restart local v6    # "cookies":[Ljavax/servlet/http/Cookie;
    :cond_16
    const-string v17, " \""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_18

    .line 560
    if-eqz v10, :cond_17

    .line 561
    const/16 v17, 0x3b

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    :cond_17
    aget-object v17, v6, v10

    invoke-virtual/range {v17 .. v17}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const/16 v17, 0x3d

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    aget-object v17, v6, v10

    invoke-virtual/range {v17 .. v17}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 566
    :cond_18
    const/16 v17, 0x22

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method protected logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "response"    # Lorg/eclipse/jetty/server/Response;
    .param p3, "b"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 625
    const-string v2, "Referer"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "referer":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 627
    const-string v2, "\"-\" "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :goto_0
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "agent":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 637
    const-string v2, "\"-\" "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :goto_1
    return-void

    .line 630
    .end local v0    # "agent":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v2, "\" "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 640
    .restart local v0    # "agent":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public setAppend(Z)V
    .locals 0
    .param p1, "append"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    .line 282
    return-void
.end method

.method public setExtended(Z)V
    .locals 0
    .param p1, "extended"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 259
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 p1, 0x0

    .line 131
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setFilenameDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "logFileDateFormat"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setIgnorePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "ignorePaths"    # [Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setLogCookies(Z)V
    .locals 0
    .param p1, "logCookies"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 327
    return-void
.end method

.method public setLogDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setLogDispatch(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    .line 443
    return-void
.end method

.method public setLogLatency(Z)V
    .locals 0
    .param p1, "logLatency"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 373
    return-void
.end method

.method public setLogLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "logLocale"    # Ljava/util/Locale;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    .line 192
    return-void
.end method

.method public setLogServer(Z)V
    .locals 0
    .param p1, "logServer"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 350
    return-void
.end method

.method public setLogTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setPreferProxiedForAddress(Z)V
    .locals 0
    .param p1, "preferProxiedForAddress"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    .line 397
    return-void
.end method

.method public setRetainDays(I)V
    .locals 0
    .param p1, "retainDays"    # I

    .prologue
    .line 235
    iput p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 236
    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 605
    monitor-exit p0

    .line 609
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 608
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
