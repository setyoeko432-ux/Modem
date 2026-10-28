.class public Lcom/mifiservice/service/MifiService;
.super Landroid/app/Service;
.source "MifiService.java"


# static fields
.field private static final CHECK_WIFI_SERVER:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MifiService"

.field private static context:Landroid/content/Context;


# instance fields
.field private blink:Z

.field private handler:Landroid/os/Handler;

.field private licensed:Z

.field private mDeviceController:Lcom/mifiservice/device/DeviceController;

.field mServer:Lcom/mifiservice/server/JServer;

.field private mWanApnController:Lcom/mifiservice/device/WanApnController;

.field private mWanDataController:Lcom/mifiservice/device/WanDataController;

.field private mWifiApController:Lcom/mifiservice/device/WifiApController;

.field private mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

.field private reset_times:I

.field private rxBytes:J

.field private switchsim:Z

.field task:Ljava/util/TimerTask;

.field timer:Ljava/util/Timer;

.field private txBytes:J

.field private updater:Lcom/mifiservice/ota/Updater;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput-boolean v2, p0, Lcom/mifiservice/service/MifiService;->licensed:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 79
    new-instance v0, Lcom/mifiservice/server/JServer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lcom/mifiservice/server/JServer;-><init>(I)V

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->mServer:Lcom/mifiservice/server/JServer;

    .line 81
    iput-wide v3, p0, Lcom/mifiservice/service/MifiService;->txBytes:J

    .line 82
    iput-wide v3, p0, Lcom/mifiservice/service/MifiService;->rxBytes:J

    .line 83
    iput-boolean v2, p0, Lcom/mifiservice/service/MifiService;->blink:Z

    .line 84
    iput-boolean v2, p0, Lcom/mifiservice/service/MifiService;->switchsim:Z

    .line 85
    iput v2, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    .line 87
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->timer:Ljava/util/Timer;

    .line 219
    new-instance v0, Lcom/mifiservice/service/MifiService$1;

    invoke-direct {v0, p0}, Lcom/mifiservice/service/MifiService$1;-><init>(Lcom/mifiservice/service/MifiService;)V

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->handler:Landroid/os/Handler;

    .line 283
    new-instance v0, Lcom/mifiservice/service/MifiService$2;

    invoke-direct {v0, p0}, Lcom/mifiservice/service/MifiService$2;-><init>(Lcom/mifiservice/service/MifiService;)V

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->task:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$000(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanDataController;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mifiservice/service/MifiService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mifiservice/service/MifiService;->blink:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mifiservice/service/MifiService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mifiservice/service/MifiService;->blink:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/config/MifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mifiservice/service/MifiService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    return p1
.end method

.method static synthetic access$400(Lcom/mifiservice/service/MifiService;)J
    .locals 2
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/mifiservice/service/MifiService;->txBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/mifiservice/service/MifiService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/mifiservice/service/MifiService;->txBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/mifiservice/service/MifiService;)J
    .locals 2
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/mifiservice/service/MifiService;->rxBytes:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/mifiservice/service/MifiService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/mifiservice/service/MifiService;->rxBytes:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/mifiservice/service/MifiService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mifiservice/service/MifiService;->switchsim:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mifiservice/service/MifiService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mifiservice/service/MifiService;->switchsim:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WanApnController;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanApnController:Lcom/mifiservice/device/WanApnController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mifiservice/service/MifiService;)Lcom/mifiservice/device/WifiApController;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWifiApController:Lcom/mifiservice/device/WifiApController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mifiservice/service/MifiService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/service/MifiService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 194
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/mifiservice/service/MifiService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 195
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "MifiService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    iget-object v1, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 201
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mifiservice/service/MifiService;->context:Landroid/content/Context;

    return-object v0
.end method

.method private isLicensed()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public HandleBindCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Lcom/mifiservice/service/MifiService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mifiservice/service/MifiService$4;-><init>(Lcom/mifiservice/service/MifiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mifiservice/service/MifiService$4;->start()V

    .line 366
    return-void
.end method

.method public HandleResetData(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 302
    const-string v0, "MifiService"

    const-string v1, "restart data enable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    iget v0, v0, Lcom/mifiservice/device/WanDataController;->repower_times:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 305
    const-string v0, "MifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repower_times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    iget v2, v2, Lcom/mifiservice/device/WanDataController;->repower_times:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v0, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    if-nez v0, :cond_2

    .line 310
    iget v0, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    .line 311
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0, p1}, Lcom/mifiservice/device/WanDataController;->setPreferedNetworkType(I)V

    .line 312
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0, v2}, Lcom/mifiservice/device/WanDataController;->setcfun(I)V

    .line 313
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mifiservice/device/WanDataController;->setcfun(I)V

    .line 314
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    iget v1, v0, Lcom/mifiservice/device/WanDataController;->repower_times:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mifiservice/device/WanDataController;->repower_times:I

    .line 316
    new-instance v0, Lcom/mifiservice/service/MifiService$3;

    invoke-direct {v0, p0}, Lcom/mifiservice/service/MifiService$3;-><init>(Lcom/mifiservice/service/MifiService;)V

    invoke-virtual {v0}, Lcom/mifiservice/service/MifiService$3;->start()V

    goto :goto_0

    .line 333
    :cond_2
    iget v0, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 334
    iput v2, p0, Lcom/mifiservice/service/MifiService;->reset_times:I

    goto :goto_0
.end method

.method public HandleUnBindCommand()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/mifiservice/service/MifiService$5;

    invoke-direct {v0, p0}, Lcom/mifiservice/service/MifiService$5;-><init>(Lcom/mifiservice/service/MifiService;)V

    invoke-virtual {v0}, Lcom/mifiservice/service/MifiService$5;->start()V

    .line 378
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x1388

    const/16 v9, 0x3e8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 106
    const-string v0, "MifiService"

    const-string v1, "Mifi Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sput-object p0, Lcom/mifiservice/service/MifiService;->context:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/mifiservice/device/WifiApController;->getInstance()Lcom/mifiservice/device/WifiApController;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->mWifiApController:Lcom/mifiservice/device/WifiApController;

    .line 110
    invoke-static {}, Lcom/mifiservice/device/WanDataController;->getInstance()Lcom/mifiservice/device/WanDataController;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    .line 111
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->mDeviceController:Lcom/mifiservice/device/DeviceController;

    .line 112
    invoke-static {}, Lcom/mifiservice/device/WanApnController;->getInstance()Lcom/mifiservice/device/WanApnController;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanApnController:Lcom/mifiservice/device/WanApnController;

    .line 113
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/service/MifiService;->mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

    .line 120
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v0

    invoke-virtual {v0, v7, v5, v5}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 122
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v5}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 126
    :cond_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/mifiservice/service/MifiService;->isLicensed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mifiservice/service/MifiService;->licensed:Z

    .line 133
    const-string v0, "MifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check l: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/mifiservice/service/MifiService;->licensed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v0, p0, Lcom/mifiservice/service/MifiService;->licensed:Z

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWifiApController:Lcom/mifiservice/device/WifiApController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWifiApController:Lcom/mifiservice/device/WifiApController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

    iget-object v0, v0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/service/MifiService;->mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

    iget-object v1, v1, Lcom/mifiservice/config/MifiConfiguration;->WIFIpassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mifiservice/service/MifiService;->HandleBindCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanApnController:Lcom/mifiservice/device/WanApnController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanApnController;->getDefaultApnId()I

    move-result v6

    .line 140
    .local v6, "apnid":I
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    if-eq v0, v6, :cond_3

    if-eqz v6, :cond_3

    .line 141
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    iput v6, v0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    .line 142
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mifiservice/config/MifiConfiguration;->saveToFile()V

    .line 143
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanApnController:Lcom/mifiservice/device/WanApnController;

    invoke-virtual {v0, v5}, Lcom/mifiservice/device/WanApnController;->setCurrentAPN(I)V

    .line 144
    iput-boolean v7, p0, Lcom/mifiservice/service/MifiService;->switchsim:Z

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->isChinaTelecom()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    invoke-virtual {p0, v8}, Lcom/mifiservice/service/MifiService;->HandleResetData(I)V

    .line 160
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mifiservice/config/MifiConfiguration;->WANautoConnect:Z

    invoke-virtual {v0, v1}, Lcom/mifiservice/device/WanDataController;->setMobileDataEnable(Z)V

    .line 161
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPN:I

    if-lez v0, :cond_5

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mServer:Lcom/mifiservice/server/JServer;

    invoke-virtual {v0}, Lcom/mifiservice/server/JServer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 168
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mServer:Lcom/mifiservice/server/JServer;

    invoke-virtual {p0}, Lcom/mifiservice/service/MifiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mifiservice/server/JServer;->start(Landroid/content/Context;)V

    .line 175
    .end local v6    # "apnid":I
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/mifiservice/service/MifiService;->acquireWakeLock()V

    .line 177
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/mifiservice/service/MifiService;->task:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 179
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    return-void

    .line 150
    .restart local v6    # "apnid":I
    :cond_7
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

    iget v0, v0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    if-nez v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->HandleCheckNetwork()V

    .line 152
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0, v8}, Lcom/mifiservice/device/WanDataController;->setPreferedNetworkTypeAtcmd(I)V

    .line 153
    invoke-virtual {p0}, Lcom/mifiservice/service/MifiService;->rePowerModem()V

    goto :goto_1

    .line 156
    :cond_8
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->getNetMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mifiConfiguration:Lcom/mifiservice/config/MifiConfiguration;

    iget v0, v0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    if-nez v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController;->HandleCheckNetwork()V

    .line 158
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0, v8}, Lcom/mifiservice/device/WanDataController;->setPreferedNetworkTypeAtcmd(I)V

    goto :goto_1

    .line 171
    .end local v6    # "apnid":I
    :cond_9
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    invoke-virtual {v0, v5}, Lcom/mifiservice/device/WanDataController;->setMobileDataEnable(Z)V

    goto :goto_2

    .line 127
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "MifiService"

    const-string v1, "mifi service destroy!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 188
    return-void
.end method

.method public rePowerModem()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "MifiService"

    const-string v1, "rePowerModem "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mifiservice/device/WanDataController;->setcfun(I)V

    .line 343
    iget-object v0, p0, Lcom/mifiservice/service/MifiService;->mWanDataController:Lcom/mifiservice/device/WanDataController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mifiservice/device/WanDataController;->setcfun(I)V

    .line 344
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 294
    sget-object v1, Lcom/mifiservice/service/MifiService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    sget-object v1, Lcom/mifiservice/service/MifiService;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
