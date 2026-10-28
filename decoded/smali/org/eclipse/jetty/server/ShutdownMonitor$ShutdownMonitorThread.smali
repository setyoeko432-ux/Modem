.class public Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;
.super Ljava/lang/Thread;
.source "ShutdownMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ShutdownMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutdownMonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/ShutdownMonitor;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->setDaemon(Z)V

    .line 70
    const-string v0, "ShutdownMonitor"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->setName(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private startListenSocket()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 166
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v1

    if-gez v1, :cond_1

    .line 168
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$800(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutdownMonitor not in use (port < 0): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    new-instance v2, Ljava/net/ServerSocket;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 176
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v1

    if-nez v1, :cond_2

    .line 179
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$902(Lorg/eclipse/jetty/server/ShutdownMonitor;I)I

    .line 180
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "STOP.PORT=%d%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 183
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 186
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v2, v4

    double-to-long v2, v2

    const/16 v4, 0x24

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$202(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "STOP.KEY=%s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "STOP.PORT=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "STOP.KEY=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$700(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/Throwable;)V

    .line 193
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding monitor port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "STOP.PORT=%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "STOP.KEY=%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "STOP.PORT=%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$900(Lorg/eclipse/jetty/server/ShutdownMonitor;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "STOP.KEY=%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 76
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v6

    if-nez v6, :cond_1

    .line 143
    :cond_0
    return-void

    .line 81
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 83
    const/4 v5, 0x0

    .line 86
    .local v5, "socket":Ljava/net/Socket;
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 88
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v2, "lin":Ljava/io/LineNumberReader;
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "receivedKey":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$200(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Ignoring command with incorrect key"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    .line 140
    const/4 v5, 0x0

    goto :goto_0

    .line 96
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 98
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "cmd":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v7, "command=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const-string v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v7, "Issuing graceful shutdown.."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->getInstance()Lorg/eclipse/jetty/util/thread/ShutdownThread;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->run()V

    .line 107
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v7, "Informing client that we are stopped."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const-string v6, "Stopped\r\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 112
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v7, "Shutting down monitor"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    .line 114
    const/4 v5, 0x0

    .line 115
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    iget-object v7, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v7}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$500(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)V

    .line 116
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$102(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 118
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$600(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 121
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    const-string v7, "Killing JVM"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$300(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    .line 140
    const/4 v5, 0x0

    .line 141
    goto/16 :goto_0

    .line 125
    :cond_4
    :try_start_2
    const-string v6, "status"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    const-string v6, "OK\r\n"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 132
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "lin":Ljava/io/LineNumberReader;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "receivedKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$700(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/lang/Throwable;)V

    .line 135
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    iget-object v6, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v6, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    .line 140
    const/4 v5, 0x0

    .line 141
    goto/16 :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v7, v5}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$400(Lorg/eclipse/jetty/server/ShutdownMonitor;Ljava/net/Socket;)V

    .line 140
    const/4 v5, 0x0

    throw v6
.end method

.method public start()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ShutdownMonitorThread already started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->startListenSocket()V

    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$100(Lorg/eclipse/jetty/server/ShutdownMonitor;)Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/ShutdownMonitor$ShutdownMonitorThread;->this$0:Lorg/eclipse/jetty/server/ShutdownMonitor;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ShutdownMonitor;->access$800(Lorg/eclipse/jetty/server/ShutdownMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Starting ShutdownMonitorThread"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
