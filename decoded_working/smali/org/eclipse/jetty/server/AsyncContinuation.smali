.class public Lorg/eclipse/jetty/server/AsyncContinuation;
.super Ljava/lang/Object;
.source "AsyncContinuation.java"

# interfaces
.implements Ljavax/servlet/AsyncContext;
.implements Lorg/eclipse/jetty/continuation/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;,
        Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x7530L

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __ASYNCSTARTED:I = 0x2

.field private static final __ASYNCWAIT:I = 0x4

.field private static final __COMPLETED:I = 0x9

.field private static final __COMPLETING:I = 0x7

.field private static final __DISPATCHED:I = 0x1

.field private static final __IDLE:I = 0x0

.field private static final __REDISPATCH:I = 0x5

.field private static final __REDISPATCHED:I = 0x6

.field private static final __REDISPATCHING:I = 0x3

.field private static final __UNCOMPLETED:I = 0x8

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _asyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/AsyncListener;",
            ">;"
        }
    .end annotation
.end field

.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private volatile _continuation:Z

.field private _continuationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private _event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

.field private volatile _expireAt:J

.field private _expired:Z

.field private _initial:Z

.field private _lastAsyncListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/servlet/AsyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _responseWrapped:Z

.field private _resumed:Z

.field private _state:I

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 57
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 105
    return-void
.end method

.method private doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 6
    .param p1, "context"    # Ljavax/servlet/ServletContext;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 350
    monitor-enter p0

    .line 352
    :try_start_0
    iget v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v4, :sswitch_data_0

    .line 375
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 377
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 356
    :sswitch_0
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 357
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 359
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v4

    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v4

    if-ne p3, v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v4

    if-eq p1, v4, :cond_2

    .line 360
    :cond_0
    new-instance v4, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-direct {v4, p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    iput-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 366
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 367
    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 368
    .local v3, "recycle":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    iput-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    .line 369
    iput-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 370
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 371
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 377
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 381
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/AsyncListener;

    .line 385
    .local v2, "listener":Ljavax/servlet/AsyncListener;
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v2, v4}, Ljavax/servlet/AsyncListener;->onStartAsync(Ljavax/servlet/AsyncEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljavax/servlet/AsyncListener;
    .end local v3    # "recycle":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    :cond_2
    :try_start_3
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;

    .line 364
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 393
    .restart local v3    # "recycle":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    :cond_3
    return-void

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/continuation/ContinuationListener;

    .prologue
    .line 142
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit p0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addListener(Ljavax/servlet/AsyncListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/servlet/AsyncListener;

    .prologue
    .line 119
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addListener(Ljavax/servlet/AsyncListener;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "listener"    # Ljavax/servlet/AsyncListener;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 130
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 720
    monitor-enter p0

    .line 722
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 724
    monitor-exit p0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelTimeout()V
    .locals 4

    .prologue
    .line 778
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 779
    .local v0, "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    monitor-enter p0

    .line 783
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 784
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 785
    monitor-exit p0

    .line 795
    .end local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :cond_0
    :goto_0
    return-void

    .line 785
    .restart local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 789
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 790
    .local v1, "event":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    goto :goto_0
.end method

.method public complete()V
    .locals 3

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "dispatch":Z
    monitor-enter p0

    .line 563
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v1, :pswitch_data_0

    .line 579
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 567
    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :pswitch_2
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 571
    monitor-exit p0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 574
    :pswitch_3
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 575
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 581
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 586
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createListener(Ljava/lang/Class;)Ljavax/servlet/AsyncListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/AsyncListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/AsyncListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 625
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispatch()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "dispatch":Z
    monitor-enter p0

    .line 454
    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 471
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 457
    :pswitch_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 459
    monitor-exit p0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 462
    :pswitch_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 463
    :goto_1
    const/4 v1, 0x5

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 473
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 478
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 468
    :pswitch_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->setPath(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 877
    return-void
.end method

.method public dispatch(Ljavax/servlet/ServletContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljavax/servlet/ServletContext;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 867
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;

    .line 868
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->setPath(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 870
    return-void
.end method

.method protected doComplete(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 640
    monitor-enter p0

    .line 642
    :try_start_0
    iget v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v5, :pswitch_data_0

    .line 651
    const/4 v1, 0x0

    .line 652
    .local v1, "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    const/4 v0, 0x0

    .line 653
    .local v0, "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 655
    .end local v0    # "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    .end local v1    # "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 645
    :pswitch_0
    const/16 v5, 0x9

    :try_start_1
    iput v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 646
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 647
    .restart local v1    # "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 655
    .restart local v0    # "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    if-eqz v0, :cond_1

    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/servlet/AsyncListener;

    .line 663
    .local v4, "listener":Ljavax/servlet/AsyncListener;
    if-eqz p1, :cond_0

    .line 665
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v5

    const-string v6, "javax.servlet.error.exception"

    invoke-interface {v5, v6, p1}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v5

    const-string v6, "javax.servlet.error.message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v4, v5}, Ljavax/servlet/AsyncListener;->onError(Ljavax/servlet/AsyncEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 670
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v4, v5}, Ljavax/servlet/AsyncListener;->onComplete(Ljavax/servlet/AsyncEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 678
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Ljavax/servlet/AsyncListener;
    :cond_1
    if-eqz v1, :cond_2

    .line 680
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 684
    .local v4, "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :try_start_4
    invoke-interface {v4, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 686
    :catch_1
    move-exception v2

    .line 688
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 692
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :cond_2
    return-void

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public errorComplete()V
    .locals 2

    .prologue
    .line 597
    monitor-enter p0

    .line 599
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 611
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 603
    :pswitch_1
    const/4 v0, 0x7

    :try_start_1
    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 605
    monitor-exit p0

    .line 608
    :goto_0
    return-void

    :pswitch_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected expired()V
    .locals 7

    .prologue
    .line 487
    monitor-enter p0

    .line 489
    :try_start_0
    iget v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v5, :pswitch_data_0

    .line 497
    :pswitch_0
    const/4 v1, 0x0

    .line 498
    .local v1, "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    const/4 v0, 0x0

    .line 499
    .local v0, "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    monitor-exit p0

    .line 551
    :goto_0
    return-void

    .line 493
    .end local v0    # "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    .end local v1    # "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :pswitch_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 494
    .restart local v1    # "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 501
    .restart local v0    # "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 502
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/servlet/AsyncListener;

    .line 510
    .local v4, "listener":Ljavax/servlet/AsyncListener;
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-interface {v4, v5}, Ljavax/servlet/AsyncListener;->onTimeout(Ljavax/servlet/AsyncEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 512
    :catch_0
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 515
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    const-string v6, "javax.servlet.error.exception"

    invoke-virtual {v5, v6, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Ljavax/servlet/AsyncListener;
    :cond_0
    if-eqz v1, :cond_1

    .line 522
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 526
    .local v4, "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :try_start_2
    invoke-interface {v4, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 528
    :catch_1
    move-exception v2

    .line 530
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 502
    .end local v0    # "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    .end local v1    # "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 535
    .restart local v0    # "aListeners":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/AsyncListener;>;"
    .restart local v1    # "cListeners":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/continuation/ContinuationListener;>;"
    :cond_1
    monitor-enter p0

    .line 537
    :try_start_4
    iget v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v5, :pswitch_data_1

    .line 545
    :pswitch_2
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    if-nez v5, :cond_2

    .line 546
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 548
    :cond_2
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 550
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleDispatch()V

    goto :goto_0

    .line 541
    :pswitch_3
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    goto :goto_3

    .line 548
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 489
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 537
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBaseRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    return-object v0
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 930
    .local v0, "event":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 932
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    .line 890
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 898
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    .line 1025
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    .line 281
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-nez v0, :cond_0

    const-string v0, "IDLE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    if-eqz v0, :cond_a

    const-string v0, ",initial"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    if-eqz v0, :cond_b

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    if-eqz v0, :cond_c

    const-string v0, ",expired"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "DISPATCHED"

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "ASYNCSTARTED"

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const-string v0, "ASYNCWAIT"

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const-string v0, "REDISPATCHING"

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const-string v0, "REDISPATCH"

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    const-string v0, "REDISPATCHED"

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    const-string v0, "COMPLETING"

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    const-string v0, "UNCOMPLETED"

    goto :goto_0

    :cond_8
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_9

    const-string v0, "COMPLETE"

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    goto/16 :goto_1

    :cond_b
    const-string v0, ""

    goto :goto_2

    :cond_c
    const-string v0, ""

    goto :goto_3

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    monitor-exit p0

    return-wide v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handling()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 305
    monitor-enter p0

    .line 307
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 309
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 337
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 312
    :pswitch_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 313
    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 314
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 323
    :goto_0
    monitor-exit p0

    .line 334
    :goto_1
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    iput-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_asyncListeners:Ljava/util/List;

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_lastAsyncListeners:Ljava/util/List;

    goto :goto_0

    .line 326
    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 327
    monitor-exit p0

    move v0, v1

    goto :goto_1

    .line 330
    :pswitch_3
    monitor-exit p0

    move v0, v1

    goto :goto_1

    .line 333
    :pswitch_4
    const/4 v1, 0x6

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 334
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasOriginalRequestAndResponse()Z
    .locals 2

    .prologue
    .line 920
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getSuppliedResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 848
    monitor-enter p0

    .line 850
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 859
    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    .line 856
    :sswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 850
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isAsyncStarted()Z
    .locals 1

    .prologue
    .line 828
    monitor-enter p0

    .line 830
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 839
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 836
    :pswitch_0
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 818
    monitor-enter p0

    .line 820
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompleting()Z
    .locals 2

    .prologue
    .line 800
    monitor-enter p0

    .line 802
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isContinuation()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    return v0
.end method

.method public isDispatchable()Z
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    .line 252
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 258
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 953
    monitor-enter p0

    .line 955
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    monitor-exit p0

    return v0

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    monitor-exit p0

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 942
    monitor-enter p0

    .line 944
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    monitor-exit p0

    return v0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    .line 216
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 222
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSuspending()Z
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    .line 235
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :pswitch_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    .line 239
    :pswitch_1
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isUncompleted()Z
    .locals 2

    .prologue
    .line 809
    monitor-enter p0

    .line 811
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected recycle()V
    .locals 2

    .prologue
    .line 697
    monitor-enter p0

    .line 699
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    sparse-switch v0, :sswitch_data_0

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_resumed:Z

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expired:Z

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 711
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancelTimeout()V

    .line 712
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuationListeners:Ljava/util/List;

    .line 714
    monitor-exit p0

    .line 715
    return-void

    .line 703
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 699
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1043
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/Request;->removeAttribute(Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 965
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->dispatch()V

    .line 966
    return-void
.end method

.method protected scheduleDispatch()V
    .locals 2

    .prologue
    .line 730
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 731
    .local v0, "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local v0    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 735
    :cond_0
    return-void
.end method

.method protected scheduleTimeout()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 740
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    .line 741
    .local v1, "endp":Lorg/eclipse/jetty/io/EndPoint;
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 743
    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 745
    monitor-enter p0

    .line 747
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    .line 748
    iget-wide v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 749
    .local v2, "wait":J
    :goto_0
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :goto_1
    :try_start_2
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 766
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "wait":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 762
    .restart local v2    # "wait":J
    :cond_0
    :try_start_3
    iget-wide v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_expireAt:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    cmp-long v4, v2, v8

    if-gtz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 764
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    .line 766
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 773
    .end local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    .end local v2    # "wait":J
    :cond_2
    :goto_2
    return-void

    .line 770
    .restart local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :cond_3
    check-cast v1, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local v1    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    iget-object v4, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-static {v4}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;

    move-result-object v4

    iget-wide v5, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    invoke-interface {v1, v4, v5, v6}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1053
    return-void
.end method

.method protected setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 153
    monitor-enter p0

    .line 155
    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_timeoutMs:J

    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 904
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .line 905
    .local v0, "event":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    if-eqz v0, :cond_0

    .line 907
    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/server/AsyncContinuation$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation$1;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 915
    :cond_0
    return-void
.end method

.method protected startAsync()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 989
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 990
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 991
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 992
    return-void
.end method

.method protected startAsync(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 4
    .param p1, "context"    # Ljavax/servlet/ServletContext;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 975
    monitor-enter p0

    .line 977
    :try_start_0
    instance-of v1, p3, Lorg/eclipse/jetty/server/Response;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 978
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 979
    instance-of v1, p2, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v1, :cond_0

    .line 981
    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_event:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    move-object v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    move-object v1, v0

    invoke-interface {v1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljavax/servlet/http/HttpServletRequest;

    .end local p2    # "request":Ljavax/servlet/ServletRequest;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;

    .line 983
    :cond_0
    monitor-exit p0

    .line 984
    return-void

    .line 977
    .restart local p2    # "request":Ljavax/servlet/ServletRequest;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 983
    .end local p2    # "request":Ljavax/servlet/ServletRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 1014
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 1015
    return-void
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_continuation:Z

    .line 1002
    instance-of v1, p1, Lorg/eclipse/jetty/server/Response;

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_responseWrapped:Z

    .line 1003
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->doSuspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 1004
    return-void

    .line 1002
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    .line 272
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 1061
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 1066
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/AsyncContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 1068
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unhandle()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    monitor-enter p0

    .line 407
    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 443
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 411
    :pswitch_1
    const/16 v1, 0x8

    :try_start_1
    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 412
    monitor-exit p0

    .line 440
    :goto_0
    return v0

    .line 415
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :pswitch_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 419
    const/4 v2, 0x4

    iput v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 420
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncContinuation;->scheduleTimeout()V

    .line 421
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    if-ne v2, v3, :cond_0

    .line 422
    monitor-exit p0

    goto :goto_0

    .line 423
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 425
    const/16 v1, 0x8

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 426
    monitor-exit p0

    goto :goto_0

    .line 428
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 429
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 430
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 433
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 434
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 435
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 438
    :pswitch_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_initial:Z

    .line 439
    const/16 v1, 0x8

    iput v1, p0, Lorg/eclipse/jetty/server/AsyncContinuation;->_state:I

    .line 440
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
