.class public Lneoway/api/NeowayApi;
.super Ljava/lang/Object;
.source "NeowayApi.java"


# static fields
.field private static mNeowayApi:Lneoway/api/NeowayApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "neo_gpio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lneoway/api/NeowayApi;->mNeowayApi:Lneoway/api/NeowayApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance()Lneoway/api/NeowayApi;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lneoway/api/NeowayApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lneoway/api/NeowayApi;->mNeowayApi:Lneoway/api/NeowayApi;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lneoway/api/NeowayApi;

    invoke-direct {v0}, Lneoway/api/NeowayApi;-><init>()V

    sput-object v0, Lneoway/api/NeowayApi;->mNeowayApi:Lneoway/api/NeowayApi;

    .line 30
    :cond_0
    sget-object v0, Lneoway/api/NeowayApi;->mNeowayApi:Lneoway/api/NeowayApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public native SetGPIOState(C)I
.end method

.method public native SetLed(III)I
.end method

.method public native neoGpioGetDir(I)I
.end method

.method public native neoGpioGetValue(I)I
.end method

.method public native neoGpioSetDir(III)I
.end method

.method public native neoGpioSetValue(II)I
.end method

.method public native sendChannelCommand(I[I[III)I
.end method

.method public native setDefaultChannelCommand(I[I)I
.end method
