.class public Lorg/eclipse/jetty/util/DateCache;
.super Ljava/lang/Object;
.source "DateCache.java"


# static fields
.field public static DEFAULT_FORMAT:Ljava/lang/String;

.field private static __hitWindow:J


# instance fields
.field private _dfs:Ljava/text/DateFormatSymbols;

.field private _formatString:Ljava/lang/String;

.field private _lastMinutes:J

.field private _lastMs:I

.field private _lastResult:Ljava/lang/String;

.field private _lastSeconds:J

.field private _locale:Ljava/util/Locale;

.field private _minFormat:Ljava/text/SimpleDateFormat;

.field private _minFormatString:Ljava/lang/String;

.field private _secFormatString:Ljava/lang/String;

.field private _secFormatString0:Ljava/lang/String;

.field private _secFormatString1:Ljava/lang/String;

.field private _tzFormat:Ljava/text/SimpleDateFormat;

.field private _tzFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    sput-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0xe10

    sput-wide v0, Lorg/eclipse/jetty/util/DateCache;->__hitWindow:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/DateCache;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 63
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 65
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 68
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/text/DateFormatSymbols;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 63
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 65
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 68
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 105
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "l"    # Ljava/util/Locale;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 63
    iput-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 65
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 68
    iput-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 95
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 97
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 98
    return-void
.end method

.method private setMinFormatString()V
    .locals 6

    .prologue
    .line 197
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v5, "ss.SSS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, "i":I
    const/4 v1, 0x6

    .line 199
    .local v1, "l":I
    if-ltz v0, :cond_0

    .line 200
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ms not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v5, "ss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 202
    const/4 v1, 0x2

    .line 205
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "ss1":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "ss2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'ss\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    .line 208
    return-void
.end method

.method private declared-synchronized setTzFormatString(Ljava/util/TimeZone;)V
    .locals 11
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/16 v10, 0xa

    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    const-string v9, "ZZZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 156
    .local v7, "zIndex":I
    if-ltz v7, :cond_3

    .line 158
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "ss1":Ljava/lang/String;
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    add-int/lit8 v9, v7, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "ss2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    .line 162
    .local v6, "tzOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    if-ltz v6, :cond_2

    .line 166
    const/16 v8, 0x2b

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :goto_0
    const v8, 0xea60

    div-int v2, v6, v8

    .line 174
    .local v2, "raw":I
    div-int/lit8 v0, v2, 0x3c

    .line 175
    .local v0, "hr":I
    rem-int/lit8 v1, v2, 0x3c

    .line 177
    .local v1, "min":I
    if-ge v0, v10, :cond_0

    .line 178
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    if-ge v1, v10, :cond_1

    .line 181
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const/16 v8, 0x27

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    .line 190
    .end local v0    # "hr":I
    .end local v1    # "min":I
    .end local v2    # "raw":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "ss1":Ljava/lang/String;
    .end local v5    # "ss2":Ljava/lang/String;
    .end local v6    # "tzOffset":I
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/DateCache;->setMinFormatString()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 169
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "ss1":Ljava/lang/String;
    .restart local v5    # "ss2":Ljava/lang/String;
    .restart local v6    # "tzOffset":I
    :cond_2
    neg-int v6, v6

    .line 170
    const/16 v8, 0x2d

    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "ss1":Ljava/lang/String;
    .end local v5    # "ss2":Ljava/lang/String;
    .end local v6    # "tzOffset":I
    .end local v7    # "zIndex":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 189
    .restart local v7    # "zIndex":I
    :cond_3
    :try_start_2
    iget-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    iput-object v8, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized format(J)Ljava/lang/String;
    .locals 13
    .param p1, "inDate"    # J

    .prologue
    .line 227
    monitor-enter p0

    const-wide/16 v9, 0x3e8

    :try_start_0
    div-long v7, p1, v9

    .line 230
    .local v7, "seconds":J
    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    cmp-long v9, v7, v9

    if-ltz v9, :cond_0

    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    sget-wide v11, Lorg/eclipse/jetty/util/DateCache;->__hitWindow:J

    add-long/2addr v9, v11

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 235
    .local v0, "d":Ljava/util/Date;
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 271
    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 241
    :cond_1
    :try_start_1
    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_2

    .line 242
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 247
    .restart local v0    # "d":Ljava/util/Date;
    const-wide/16 v9, 0x3c

    div-long v3, v7, v9

    .line 248
    .local v3, "minutes":J
    iget-wide v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    cmp-long v9, v9, v3

    if-eqz v9, :cond_3

    .line 250
    iput-wide v3, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 251
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    .line 253
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    const-string v10, "ss"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "i":I
    const/4 v2, 0x2

    .line 255
    .local v2, "l":I
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString0:Ljava/lang/String;

    .line 256
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    add-int v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString1:Ljava/lang/String;

    .line 260
    .end local v1    # "i":I
    .end local v2    # "l":I
    :cond_3
    iput-wide v7, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString0:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-wide/16 v9, 0x3c

    rem-long v9, v7, v9

    long-to-int v5, v9

    .line 264
    .local v5, "s":I
    const/16 v9, 0xa

    if-ge v5, v9, :cond_4

    .line 265
    const/16 v9, 0x30

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString1:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 271
    iget-object v9, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "d":Ljava/util/Date;
    .end local v3    # "minutes":J
    .end local v5    # "s":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "seconds":J
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "inDate"    # Ljava/util/Date;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public format(JLjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "inDate"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    return-void
.end method

.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public lastMs()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    return v0
.end method

.method public now()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 303
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTzFormatString(Ljava/util/TimeZone;)V

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    .line 130
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_1
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setTimeZoneID(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZoneId"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 150
    return-void
.end method
