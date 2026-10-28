.class Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;
.super Ljava/lang/Thread;
.source "AsyncNCSARequestLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AsyncNCSARequestLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;)V
    .locals 3

    .prologue
    .line 68
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncNCSARequestLog@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->setName(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-static {v2}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$000(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "log":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 81
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$101(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;Ljava/lang/String;)V

    .line 83
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-static {v2}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$000(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-static {v2}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$000(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "log":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 86
    .restart local v1    # "log":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 87
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->this$0:Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$201(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 90
    .end local v1    # "log":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    return-void
.end method
