.class public Lcom/mifiservice/device/GpioController;
.super Ljava/lang/Object;
.source "GpioController.java"


# static fields
.field private static instance:Lcom/mifiservice/device/GpioController;


# instance fields
.field mNeowayApi:Lneoway/api/NeowayApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/device/GpioController;->instance:Lcom/mifiservice/device/GpioController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/device/GpioController;->mNeowayApi:Lneoway/api/NeowayApi;

    .line 16
    invoke-static {}, Lneoway/api/NeowayApi;->getInstance()Lneoway/api/NeowayApi;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/device/GpioController;->mNeowayApi:Lneoway/api/NeowayApi;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/mifiservice/device/GpioController;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mifiservice/device/GpioController;->instance:Lcom/mifiservice/device/GpioController;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mifiservice/device/GpioController;

    invoke-direct {v0}, Lcom/mifiservice/device/GpioController;-><init>()V

    sput-object v0, Lcom/mifiservice/device/GpioController;->instance:Lcom/mifiservice/device/GpioController;

    .line 23
    :cond_0
    sget-object v0, Lcom/mifiservice/device/GpioController;->instance:Lcom/mifiservice/device/GpioController;

    return-object v0
.end method


# virtual methods
.method public configGPIO(IZ)V
    .locals 3
    .param p1, "gpio"    # I
    .param p2, "is_out"    # Z

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/mifiservice/device/GpioController;->mNeowayApi:Lneoway/api/NeowayApi;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0, v1}, Lneoway/api/NeowayApi;->neoGpioSetDir(III)I

    .line 29
    return-void

    :cond_0
    move v0, v1

    .line 28
    goto :goto_0
.end method

.method public readGPIO(I)I
    .locals 1
    .param p1, "gpio"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mifiservice/device/GpioController;->mNeowayApi:Lneoway/api/NeowayApi;

    invoke-virtual {v0, p1}, Lneoway/api/NeowayApi;->neoGpioGetValue(I)I

    move-result v0

    return v0
.end method

.method public writeGPIO(IZ)V
    .locals 2
    .param p1, "gpio"    # I
    .param p2, "onoff"    # Z

    .prologue
    .line 36
    iget-object v1, p0, Lcom/mifiservice/device/GpioController;->mNeowayApi:Lneoway/api/NeowayApi;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lneoway/api/NeowayApi;->neoGpioSetValue(II)I

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
