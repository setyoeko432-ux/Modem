.class public Lorg/eclipse/jetty/util/Atomics;
.super Ljava/lang/Object;
.source "Atomics.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static updateMax(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 2
    .param p0, "currentMax"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "newValue"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 66
    .local v0, "oldValue":I
    :goto_0
    if-le p1, v0, :cond_0

    .line 68
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public static updateMax(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 3
    .param p0, "currentMax"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "newValue"    # J

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 44
    .local v0, "oldValue":J
    :goto_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 46
    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static updateMin(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 2
    .param p0, "currentMin"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "newValue"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 55
    .local v0, "oldValue":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 57
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public static updateMin(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 3
    .param p0, "currentMin"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "newValue"    # J

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 33
    .local v0, "oldValue":J
    :goto_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 35
    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0
.end method
