.class public Lorg/eclipse/jetty/util/thread/Timeout$Task;
.super Ljava/lang/Object;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/thread/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field _delay:J

.field _expired:Z

.field _next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field _prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field _timeout:Lorg/eclipse/jetty/util/thread/Timeout;

.field _timestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 265
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->unlink()V

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/util/thread/Timeout$Task;Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .param p1, "x1"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->link(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method private link(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 2
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 300
    .local v0, "next_next":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p1, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 302
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v0, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 303
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 304
    return-void
.end method

.method private unlink()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 292
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_prev:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    .line 294
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 345
    .local v0, "timeout":Lorg/eclipse/jetty/util/thread/Timeout;
    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->access$300(Lorg/eclipse/jetty/util/thread/Timeout;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 349
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->unlink()V

    .line 350
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    .line 351
    monitor-exit v2

    .line 353
    :cond_0
    return-void

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected expire()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public expired()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public getAge()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 277
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 278
    .local v2, "t":Lorg/eclipse/jetty/util/thread/Timeout;
    if-eqz v2, :cond_0

    .line 280
    invoke-static {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->access$200(Lorg/eclipse/jetty/util/thread/Timeout;)J

    move-result-wide v0

    .line 281
    .local v0, "now":J
    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    .line 282
    iget-wide v3, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    sub-long v3, v0, v3

    .line 284
    .end local v0    # "now":J
    :cond_0
    return-wide v3
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_expired:Z

    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_next:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reschedule()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 334
    .local v0, "timeout":Lorg/eclipse/jetty/util/thread/Timeout;
    if-eqz v0, :cond_0

    .line 335
    iget-wide v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->_delay:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 336
    :cond_0
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;)V
    .locals 0
    .param p1, "timer"    # Lorg/eclipse/jetty/util/thread/Timeout;

    .prologue
    .line 313
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 314
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;J)V
    .locals 0
    .param p1, "timer"    # Lorg/eclipse/jetty/util/thread/Timeout;
    .param p2, "delay"    # J

    .prologue
    .line 323
    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 324
    return-void
.end method
