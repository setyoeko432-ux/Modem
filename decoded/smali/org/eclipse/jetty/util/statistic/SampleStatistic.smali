.class public Lorg/eclipse/jetty/util/statistic/SampleStatistic;
.super Ljava/lang/Object;
.source "SampleStatistic.java"


# instance fields
.field protected final _count:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _max:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _total:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVariance()D
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 99
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 100
    .local v2, "variance100":J
    iget-object v4, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 102
    .local v0, "count":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    long-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    sub-long v6, v0, v8

    long-to-double v6, v6

    div-double/2addr v4, v6

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 57
    return-void
.end method

.method public set(J)V
    .locals 12
    .param p1, "sample"    # J

    .prologue
    const-wide/16 v10, 0xa

    .line 61
    iget-object v8, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 62
    .local v6, "total":J
    iget-object v8, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 64
    .local v0, "count":J
    const-wide/16 v8, 0x1

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 66
    mul-long v8, v6, v10

    div-long v4, v8, v0

    .line 67
    .local v4, "mean10":J
    mul-long v8, p1, v10

    sub-long v2, v8, v4

    .line 68
    .local v2, "delta10":J
    iget-object v8, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    mul-long v9, v2, v2

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 71
    .end local v2    # "delta10":J
    .end local v4    # "mean10":J
    :cond_0
    iget-object v8, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, p1, p2}, Lorg/eclipse/jetty/util/Atomics;->updateMax(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 72
    return-void
.end method
