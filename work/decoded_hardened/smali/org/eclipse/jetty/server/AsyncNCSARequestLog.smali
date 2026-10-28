.class public Lorg/eclipse/jetty/server/AsyncNCSARequestLog;
.super Lorg/eclipse/jetty/server/NCSARequestLog;
.source "AsyncNCSARequestLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _thread:Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

.field private _warnedFull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;-><init>(Ljava/lang/String;)V

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance p2, Lorg/eclipse/jetty/util/BlockingArrayQueue;

    .end local p2    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    const/16 v0, 0x400

    invoke-direct {p2, v0}, Lorg/eclipse/jetty/util/BlockingArrayQueue;-><init>(I)V

    .line 62
    .restart local p2    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    :cond_0
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_queue:Ljava/util/concurrent/BlockingQueue;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncNCSARequestLog;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$101(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncNCSARequestLog;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncNCSARequestLog;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/NCSARequestLog;->doStart()V

    .line 106
    new-instance v0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;-><init>(Lorg/eclipse/jetty/server/AsyncNCSARequestLog;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_thread:Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_thread:Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_thread:Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->interrupt()V

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_thread:Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;->join()V

    .line 115
    invoke-super {p0}, Lorg/eclipse/jetty/server/NCSARequestLog;->doStop()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_thread:Lorg/eclipse/jetty/server/AsyncNCSARequestLog$WriterThread;

    .line 117
    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_warnedFull:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Log Queue overflow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncNCSARequestLog;->_warnedFull:Z

    .line 128
    :cond_1
    return-void
.end method
