.class public Lorg/eclipse/jetty/server/ShutdownMonitor;
.super Ljava/lang/Object;
.source "ShutdownMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/ShutdownMonitor$1;,
        Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;,
        Lorg/eclipse/jetty/server/ShutdownMonitor$Holder;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field private exitVm:Z

.field private key:Ljava/lang/String;

.field private port:I

.field private serverSocket:Ljava/net/ServerSocket;

.field private thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 228
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    .line 231
    const-string v1, "STOP.PORT"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    .line 232
    const-string v1, "STOP.KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/ShutdownMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # Ljava/net/ServerSocket;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # Ljava/net/ServerSocket;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->close(Ljava/net/ServerSocket;)V

    return-void
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    return v0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    return v0
.end method

.method static synthetic access$902(Lorg/eclipse/jetty/server/ShutdownMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ShutdownMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    return p1
.end method

.method private close(Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "server"    # Ljava/net/ServerSocket;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private close(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 262
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 272
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ShutdownMonitor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 276
    :cond_0
    return-void
.end method

.method private debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 284
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/eclipse/jetty/server/ShutdownMonitor;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/eclipse/jetty/server/ShutdownMonitor$Holder;->instance:Lorg/eclipse/jetty/server/ShutdownMonitor;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    return v0
.end method

.method public getServerSocket()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method protected isAlive()Z
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "result":Z
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 374
    :goto_0
    monitor-exit p0

    .line 375
    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExitVm()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    return v0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->DEBUG:Z

    .line 310
    return-void
.end method

.method public setExitVm(Z)V
    .locals 2
    .param p1, "exitVm"    # Z

    .prologue
    .line 314
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ShutdownMonitorThread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->exitVm:Z

    .line 321
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 326
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ShutdownMonitorThread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 332
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->key:Ljava/lang/String;

    .line 333
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 338
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ShutdownMonitorThread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_0
    :try_start_1
    iput p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    .line 345
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    return-void
.end method

.method protected start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "t":Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "ShutdownMonitorThread already started"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 356
    monitor-exit p0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v1, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;-><init>(Lorg/eclipse/jetty/server/ShutdownMonitor;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    .line 360
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->thread:Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->start()V

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 382
    const-string v0, "%s[port=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
