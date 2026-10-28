.class public Lorg/eclipse/jetty/util/log/StdErrLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "StdErrLog.java"


# static fields
.field private static final EOL:Ljava/lang/String;

.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_WARN:I = 0x3

.field private static final __long:Z

.field private static final __props:Ljava/util/Properties;

.field private static final __source:Z

.field private static _dateCache:Lorg/eclipse/jetty/util/DateCache;


# instance fields
.field private final _abbrevname:Ljava/lang/String;

.field private _configuredLevel:I

.field private _hideStacks:Z

.field private _level:I

.field private final _name:Ljava/lang/String;

.field private _printLongNames:Z

.field private _source:Z

.field private _stderr:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 42
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    .line 44
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    sput-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    .line 46
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v7, "org.eclipse.jetty.util.log.SOURCE"

    sget-object v8, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v9, "org.eclipse.jetty.util.log.stderr.SOURCE"

    const-string v10, "false"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    .line 48
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v7, "org.eclipse.jetty.util.log.stderr.LONG"

    const-string v8, "false"

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__long:Z

    .line 52
    sget-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    sget-object v7, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v6, v7}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 54
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "DEBUG"

    aput-object v6, v2, v11

    const-string v6, "org.eclipse.jetty.util.log.DEBUG"

    aput-object v6, v2, v12

    const/4 v6, 0x2

    const-string v7, "org.eclipse.jetty.util.log.stderr.DEBUG"

    aput-object v7, v2, v6

    .line 58
    .local v2, "deprecatedProperties":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 60
    .local v1, "deprecatedProp":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "System Property [%s] has been deprecated! (Use org.eclipse.jetty.LEVEL=DEBUG instead)%n"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v1, v8, v11

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 58
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "deprecatedProp":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v6, Lorg/eclipse/jetty/util/DateCache;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v7}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v5

    .line 72
    .local v5, "x":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 81
    const/4 v1, 0x2

    iput v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 85
    sget-boolean v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    .line 87
    sget-boolean v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__long:Z

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    .line 106
    if-eqz p2, :cond_0

    sget-object v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    if-eq p2, v1, :cond_0

    .line 107
    sget-object v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v1, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 108
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_abbrevname:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 111
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iput v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    .line 115
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".SOURCE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ace":Ljava/security/AccessControlException;
    sget-boolean v1, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    iput-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    goto :goto_0
.end method

.method protected static condensePackageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "parts":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "dense":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 214
    aget-object v3, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 218
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 518
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 519
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 523
    const/16 v2, 0x7c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_0
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 527
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 531
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 539
    .end local v0    # "c":C
    :cond_3
    return-void
.end method

.method private format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "thrown"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 414
    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->isHideStacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 406
    sget-object v2, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "d":Ljava/lang/String;
    sget-object v2, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v1

    .line 408
    .local v1, "ms":I
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->tag(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    .line 409
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method private varargs format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 484
    if-nez p2, :cond_0

    .line 486
    const-string p2, ""

    .line 487
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p3

    if-ge v4, v8, :cond_0

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "{} "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 492
    .end local v4    # "i":I
    :cond_0
    const-string v2, "{}"

    .line 493
    .local v2, "braces":Ljava/lang/String;
    const/4 v7, 0x0

    .line 494
    .local v7, "start":I
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 496
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 497
    .local v3, "bracesIndex":I
    if-gez v3, :cond_1

    .line 499
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 500
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 494
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 506
    :cond_1
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 507
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v3, v8

    goto :goto_2

    .line 511
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v3    # "bracesIndex":I
    :cond_2
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 543
    if-nez p2, :cond_1

    .line 545
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 552
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v1, :cond_2

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 554
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 559
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 561
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static getLevelId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "levelSegment"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 167
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return v1

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "levelStr":Ljava/lang/String;
    const-string v2, "ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    :cond_1
    const-string v2, "DEBUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 180
    :cond_2
    const-string v2, "INFO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const/4 v1, 0x2

    goto :goto_0

    .line 184
    :cond_3
    const-string v2, "WARN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    const/4 v1, 0x3

    goto :goto_0

    .line 189
    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown StdErrLog level ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], expecting only [ALL, DEBUG, INFO, WARN] as values."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 7
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    move-object v3, p1

    .line 139
    .local v3, "nameSegment":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "level":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 162
    .end local v1    # "level":I
    .end local v2    # "levelStr":Ljava/lang/String;
    :goto_1
    return v1

    .line 150
    .restart local v1    # "level":I
    .restart local v2    # "levelStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 151
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 157
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 162
    .end local v0    # "idx":I
    .end local v1    # "level":I
    .end local v2    # "levelStr":Ljava/lang/String;
    :cond_2
    const-string v4, "log.LEVEL"

    const-string v5, "log.LEVEL"

    const-string v6, "INFO"

    invoke-virtual {p0, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 617
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 618
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 619
    return-void
.end method

.method private tag(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "d"    # Ljava/lang/String;
    .param p3, "ms"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3a

    .line 427
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/16 v5, 0x63

    if-le p3, v5, :cond_1

    .line 431
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-boolean v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    if-eqz v5, :cond_3

    .line 444
    iget-object v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    iget-boolean v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    if-eqz v5, :cond_6

    .line 453
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 454
    .local v4, "source":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 455
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v2

    if-ge v3, v5, :cond_6

    .line 457
    aget-object v1, v2, v3

    .line 458
    .local v1, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "clazz":Ljava/lang/String;
    const-class v5, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 455
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 433
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "frame":Ljava/lang/StackTraceElement;
    .end local v2    # "frames":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v4    # "source":Ljava/lang/Throwable;
    :cond_1
    const/16 v5, 0x9

    if-le p3, v5, :cond_2

    .line 435
    const-string v5, ".0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    :cond_2
    const-string v5, ".00"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_abbrevname:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 463
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "frame":Ljava/lang/StackTraceElement;
    .restart local v2    # "frames":[Ljava/lang/StackTraceElement;
    .restart local v3    # "i":I
    .restart local v4    # "source":Ljava/lang/Throwable;
    :cond_4
    iget-boolean v5, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    if-nez v5, :cond_7

    const-string v5, "org.eclipse.jetty."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 465
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :goto_3
    const/16 v5, 0x23

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 474
    const/16 v5, 0x28

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "frame":Ljava/lang/StackTraceElement;
    .end local v2    # "frames":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v4    # "source":Ljava/lang/Throwable;
    :cond_6
    return-void

    .line 469
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "frame":Ljava/lang/StackTraceElement;
    .restart local v2    # "frames":[Ljava/lang/StackTraceElement;
    .restart local v3    # "i":I
    .restart local v4    # "source":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 396
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":DBUG:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 402
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 400
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 381
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":DBUG:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 387
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 385
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 391
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ignored"    # Ljava/lang/Throwable;

    .prologue
    .line 623
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    if-gtz v1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":IGNORED:"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 629
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 627
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 314
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":INFO:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 320
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 318
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 299
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":INFO:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 305
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 303
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 324
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideStacks()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    return v0
.end method

.method public isPrintLongNames()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    return v0
.end method

.method public isSource()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 3
    .param p1, "fullname"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "logger":Lorg/eclipse/jetty/util/log/StdErrLog;
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setPrintLongNames(Z)V

    .line 577
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setSource(Z)V

    .line 578
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    iput-object v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 581
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iget v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    if-eq v1, v2, :cond_0

    .line 582
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iput v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 584
    :cond_0
    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 333
    if-eqz p1, :cond_1

    .line 335
    iput v4, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 337
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/log/Logger;

    .line 339
    .local v1, "log":Lorg/eclipse/jetty/util/log/Logger;
    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    .end local v1    # "log":Lorg/eclipse/jetty/util/log/Logger;
    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_0

    .line 345
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    iput v2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 347
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/log/Logger;

    .line 349
    .restart local v1    # "log":Lorg/eclipse/jetty/util/log/Logger;
    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 350
    check-cast v2, Lorg/eclipse/jetty/util/log/StdErrLog;

    check-cast v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    .end local v1    # "log":Lorg/eclipse/jetty/util/log/Logger;
    iget v3, v1, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_1

    .line 353
    :cond_3
    return-void
.end method

.method public setHideStacks(Z)V
    .locals 0
    .param p1, "hideStacks"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    .line 247
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 371
    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 372
    return-void
.end method

.method public setPrintLongNames(Z)V
    .locals 0
    .param p1, "printLongNames"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    .line 232
    return-void
.end method

.method public setSource(Z)V
    .locals 0
    .param p1, "source"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    .line 270
    return-void
.end method

.method public setStdErrStream(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "stream":Ljava/io/PrintStream;
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 377
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "StdErrLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, ":LEVEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    packed-switch v1, :pswitch_data_0

    .line 609
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 597
    :pswitch_0
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 600
    :pswitch_1
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    :pswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 606
    :pswitch_3
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 289
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":WARN:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 295
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 293
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 274
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, ":WARN:"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 280
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 278
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 284
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    return-void
.end method
