.class public Lcom/mifiservice/device/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceController"

.field private static instance:Lcom/mifiservice/device/DeviceController;


# instance fields
.field private batteryCapacity:I

.field private isCharging:Z

.field private isReFac:Z

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private pPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/device/DeviceController;->instance:Lcom/mifiservice/device/DeviceController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/mifiservice/device/DeviceController;->pPowerManager:Landroid/os/PowerManager;

    .line 26
    iput-object v0, p0, Lcom/mifiservice/device/DeviceController;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean v1, p0, Lcom/mifiservice/device/DeviceController;->isCharging:Z

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/mifiservice/device/DeviceController;->batteryCapacity:I

    .line 32
    iput-boolean v1, p0, Lcom/mifiservice/device/DeviceController;->isReFac:Z

    .line 47
    new-instance v0, Lcom/mifiservice/device/DeviceController$1;

    invoke-direct {v0, p0}, Lcom/mifiservice/device/DeviceController$1;-><init>(Lcom/mifiservice/device/DeviceController;)V

    iput-object v0, p0, Lcom/mifiservice/device/DeviceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iput-object p1, p0, Lcom/mifiservice/device/DeviceController;->mContext:Landroid/content/Context;

    .line 174
    iget-object v0, p0, Lcom/mifiservice/device/DeviceController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mifiservice/device/DeviceController;->pPowerManager:Landroid/os/PowerManager;

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/DeviceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 177
    iget-object v0, p0, Lcom/mifiservice/device/DeviceController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mifiservice/device/DeviceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mifiservice/device/DeviceController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mifiservice/device/DeviceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method static synthetic access$002(Lcom/mifiservice/device/DeviceController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/DeviceController;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/mifiservice/device/DeviceController;->batteryCapacity:I

    return p1
.end method

.method static synthetic access$102(Lcom/mifiservice/device/DeviceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/DeviceController;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/mifiservice/device/DeviceController;->isCharging:Z

    return p1
.end method

.method public static getInstance()Lcom/mifiservice/device/DeviceController;
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/mifiservice/device/DeviceController;->instance:Lcom/mifiservice/device/DeviceController;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/mifiservice/device/DeviceController;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/device/DeviceController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/device/DeviceController;->instance:Lcom/mifiservice/device/DeviceController;

    .line 185
    :cond_0
    sget-object v0, Lcom/mifiservice/device/DeviceController;->instance:Lcom/mifiservice/device/DeviceController;

    return-object v0
.end method


# virtual methods
.method public getBatteryCapacity()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/mifiservice/device/DeviceController;->batteryCapacity:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getMaunufactor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getSWVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/mifiservice/device/DeviceController;->isCharging:Z

    return v0
.end method

.method public isRestoreFactory()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mifiservice/device/DeviceController;->isReFac:Z

    return v0
.end method

.method public rebootBootloader()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mifiservice/device/DeviceController;->pPowerManager:Landroid/os/PowerManager;

    const-string v1, "bootloader"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public rebootDevice()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mifiservice/device/DeviceController;->pPowerManager:Landroid/os/PowerManager;

    const-string v1, "user command"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public restoreDevice()V
    .locals 3

    .prologue
    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mifiservice/device/DeviceController;->isReFac:Z

    .line 239
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/config/MifiConfiguration;->reset()V

    .line 240
    invoke-static {}, Lcom/mifiservice/device/WanApnController;->getInstance()Lcom/mifiservice/device/WanApnController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mifiservice/device/WanApnController;->restoreAPN()V

    .line 243
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sync"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 244
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "reboot"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceController"

    const-string v2, "sync reboot error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdownDevice()V
    .locals 13

    .prologue
    .line 214
    :try_start_0
    const-string v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 216
    .local v0, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 218
    .local v4, "getService":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "power"

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 220
    .local v6, "oRemoteService":Ljava/lang/Object;
    const-string v8, "android.os.IPowerManager$Stub"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 222
    .local v2, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "asInterface"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 224
    .local v1, "asInterface":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 226
    .local v5, "oIPowerManager":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "shutdown"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 228
    .local v7, "shutdown":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "asInterface":Ljava/lang/reflect/Method;
    .end local v2    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getService":Ljava/lang/reflect/Method;
    .end local v5    # "oIPowerManager":Ljava/lang/Object;
    .end local v6    # "oRemoteService":Ljava/lang/Object;
    .end local v7    # "shutdown":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "DeviceController"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
