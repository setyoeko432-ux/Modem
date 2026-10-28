.class public Lorg/eclipse/jetty/util/log/LoggerLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "LoggerLog.java"


# instance fields
.field private volatile _debug:Z

.field private final _debugMAA:Ljava/lang/reflect/Method;

.field private final _debugMT:Ljava/lang/reflect/Method;

.field private final _getLoggerN:Ljava/lang/reflect/Method;

.field private final _getName:Ljava/lang/reflect/Method;

.field private final _infoMAA:Ljava/lang/reflect/Method;

.field private final _infoMT:Ljava/lang/reflect/Method;

.field private final _logger:Ljava/lang/Object;

.field private final _setDebugEnabledE:Ljava/lang/reflect/Method;

.field private final _warnMAA:Ljava/lang/reflect/Method;

.field private final _warnMT:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .param p1, "logger"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 44
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 46
    .local v1, "lc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "debug"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMT:Ljava/lang/reflect/Method;

    .line 47
    const-string v3, "debug"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMAA:Ljava/lang/reflect/Method;

    .line 48
    const-string v3, "info"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMT:Ljava/lang/reflect/Method;

    .line 49
    const-string v3, "info"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMAA:Ljava/lang/reflect/Method;

    .line 50
    const-string v3, "warn"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMT:Ljava/lang/reflect/Method;

    .line 51
    const-string v3, "warn"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMAA:Ljava/lang/reflect/Method;

    .line 52
    const-string v3, "isDebugEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    .local v0, "_isDebugEnabled":Ljava/lang/reflect/Method;
    const-string v3, "setDebugEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_setDebugEnabledE:Ljava/lang/reflect/Method;

    .line 54
    const-string v3, "getLogger"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getLoggerN:Ljava/lang/reflect/Method;

    .line 55
    const-string v3, "getName"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getName:Ljava/lang/reflect/Method;

    .line 57
    iget-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 59
    .end local v0    # "_isDebugEnabled":Ljava/lang/reflect/Method;
    .end local v1    # "lc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 61
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMT:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 156
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debugMAA:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getName:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ignored"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "IGNORED "

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMT:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_infoMAA:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 6
    .param p1, "fullname"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_getLoggerN:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, "logger":Ljava/lang/Object;
    new-instance v2, Lorg/eclipse/jetty/util/log/LoggerLog;

    invoke-direct {v2, v1}, Lorg/eclipse/jetty/util/log/LoggerLog;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 210
    .end local v1    # "logger":Ljava/lang/Object;
    .end local p0    # "this":Lorg/eclipse/jetty/util/log/LoggerLog;
    :goto_0
    return-object p0

    .line 207
    .restart local p0    # "this":Lorg/eclipse/jetty/util/log/LoggerLog;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDebugEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_setDebugEnabledE:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMT:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_warnMAA:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->_logger:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method
