.class public Lcom/mifiservice/device/LedController;
.super Ljava/lang/Object;
.source "LedController.java"


# static fields
.field public static final COLOR_ALL:I = 0x4

.field public static final COLOR_GREEN:I = 0x3

.field public static final COLOR_OFF:I = 0x0

.field public static final COLOR_ON:I = 0x1

.field public static final COLOR_RED:I = 0x2

.field public static final LED_BLINK_1S_BLINK:I = 0x2

.field public static final LED_BLINK_300MS_BLINK:I = 0x1

.field public static final LED_BLINK_OFF:I = 0x0

.field public static final LED_RED_BLINK_OFF:I = 0x0

.field public static final LED_SIG:I = 0x1

.field public static final LED_SIG_GREEN:I = 0x3

.field public static final LED_SIG_RED:I = 0x2

.field public static final LED_WIFI:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LedController"

.field private static instance:Lcom/mifiservice/device/LedController;


# instance fields
.field GREEN_LED_DEV:Ljava/lang/String;

.field final LIGHT_OFF:[B

.field final LIGHT_ON:[B

.field RED_LED_DEV:Ljava/lang/String;

.field WIFI_LED_DEV:Ljava/lang/String;

.field private blinkGpios:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blinkGpiosStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gpioBlinkStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gpio_current_value:I

.field private green_brt:I

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mGpioController:Lcom/mifiservice/device/GpioController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private ready_restore:Z

.field private red_brt:I

.field private resetkey_count:I

.field task:Ljava/util/TimerTask;

.field timer:Ljava/util/Timer;

.field private wifi_brt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/device/LedController;->instance:Lcom/mifiservice/device/LedController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v4

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    .line 44
    iput v4, p0, Lcom/mifiservice/device/LedController;->wifi_brt:I

    .line 45
    iput v4, p0, Lcom/mifiservice/device/LedController;->red_brt:I

    .line 46
    iput v4, p0, Lcom/mifiservice/device/LedController;->green_brt:I

    .line 47
    const-string v0, "/sys/class/leds/wifi/brightness"

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->WIFI_LED_DEV:Ljava/lang/String;

    .line 48
    const-string v0, "/sys/class/leds/red/brightness"

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    .line 49
    const-string v0, "/sys/class/leds/green/brightness"

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/mifiservice/device/LedController;->resetkey_count:I

    .line 52
    iput-boolean v4, p0, Lcom/mifiservice/device/LedController;->ready_restore:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->timer:Ljava/util/Timer;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->gpioBlinkStatus:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    .line 64
    iput v4, p0, Lcom/mifiservice/device/LedController;->gpio_current_value:I

    .line 107
    new-instance v0, Lcom/mifiservice/device/LedController$1;

    invoke-direct {v0, p0}, Lcom/mifiservice/device/LedController$1;-><init>(Lcom/mifiservice/device/LedController;)V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->handler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/mifiservice/device/LedController$2;

    invoke-direct {v0, p0}, Lcom/mifiservice/device/LedController$2;-><init>(Lcom/mifiservice/device/LedController;)V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->task:Ljava/util/TimerTask;

    .line 177
    new-instance v0, Lcom/mifiservice/device/LedController$3;

    invoke-direct {v0, p0}, Lcom/mifiservice/device/LedController$3;-><init>(Lcom/mifiservice/device/LedController;)V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 198
    iput-object p1, p0, Lcom/mifiservice/device/LedController;->mContext:Landroid/content/Context;

    .line 200
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "alk.hotkey.reset.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "alk.hotkey.reset.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "alk.hotkey.reset.long"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mifiservice/device/LedController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    new-instance v0, Lcom/mifiservice/device/GpioController;

    invoke-direct {v0}, Lcom/mifiservice/device/GpioController;-><init>()V

    iput-object v0, p0, Lcom/mifiservice/device/LedController;->mGpioController:Lcom/mifiservice/device/GpioController;

    .line 206
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->task:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 207
    return-void

    .line 41
    nop

    :array_0
    .array-data 1
        0x32t
        0x35t
        0x35t
    .end array-data
.end method

.method static synthetic access$000(Lcom/mifiservice/device/LedController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mifiservice/device/LedController;->getResetKey()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mifiservice/device/LedController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/mifiservice/device/LedController;->ready_restore:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mifiservice/device/LedController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/mifiservice/device/LedController;->ready_restore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mifiservice/device/LedController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    iget v0, p0, Lcom/mifiservice/device/LedController;->resetkey_count:I

    return v0
.end method

.method static synthetic access$202(Lcom/mifiservice/device/LedController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/mifiservice/device/LedController;->resetkey_count:I

    return p1
.end method

.method static synthetic access$204(Lcom/mifiservice/device/LedController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    iget v0, p0, Lcom/mifiservice/device/LedController;->resetkey_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mifiservice/device/LedController;->resetkey_count:I

    return v0
.end method

.method static synthetic access$300(Lcom/mifiservice/device/LedController;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mifiservice/device/LedController;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mifiservice/device/LedController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/LedController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getBrightness(Ljava/lang/String;)I
    .locals 6
    .param p1, "ledfile"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "value":I
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "file":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "file":Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LedController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mifiservice/device/LedController;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/mifiservice/device/LedController;->instance:Lcom/mifiservice/device/LedController;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/mifiservice/device/LedController;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/device/LedController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/device/LedController;->instance:Lcom/mifiservice/device/LedController;

    .line 213
    :cond_0
    sget-object v0, Lcom/mifiservice/device/LedController;->instance:Lcom/mifiservice/device/LedController;

    return-object v0
.end method

.method private getResetKey()I
    .locals 5

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "value":I
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/mnt/obb/reset_key"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "file":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .line 95
    const-string v2, "LedController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset_key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "file":Ljava/io/FileInputStream;
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setBrightness(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "ledfile"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 80
    const-string v2, "LedController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ledfile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "file":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "file":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LedController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public setMode(III)V
    .locals 8
    .param p1, "led"    # I
    .param p2, "color"    # I
    .param p3, "blink"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 219
    const-string v0, "LedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "led : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blink : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/mifiservice/device/DeviceController;->getInstance()Lcom/mifiservice/device/DeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mifiservice/device/DeviceController;->isRestoreFactory()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    if-nez p2, :cond_4

    .line 232
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->WIFI_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    goto :goto_0

    .line 234
    :cond_4
    if-nez p3, :cond_5

    .line 235
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->WIFI_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    goto :goto_0

    .line 236
    :cond_5
    if-ne p3, v6, :cond_6

    .line 237
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_6
    if-ne p3, v4, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_8
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 256
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_a
    if-nez p2, :cond_b

    .line 259
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 260
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 261
    :cond_b
    if-ne p2, v4, :cond_e

    .line 262
    if-nez p3, :cond_c

    .line 263
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 264
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 265
    :cond_c
    if-ne p3, v6, :cond_d

    .line 266
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 267
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 269
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 271
    :cond_d
    if-ne p3, v4, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 273
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 275
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 278
    :cond_e
    if-ne p2, v3, :cond_11

    .line 279
    if-nez p3, :cond_f

    .line 280
    const-string v0, "LedController"

    const-string v1, "led COLOR_GREEN: LED_BLINK_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 282
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 283
    :cond_f
    if-ne p3, v6, :cond_10

    .line 284
    const-string v0, "LedController"

    const-string v1, "led COLOR_GREEN: LED_BLINK_300MS_BLINK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 286
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 288
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 290
    :cond_10
    if-ne p3, v4, :cond_0

    .line 291
    const-string v0, "LedController"

    const-string v1, "led COLOR_GREEN: LED_BLINK_1S_BLINK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 293
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 295
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 298
    :cond_11
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 299
    if-ne p3, v6, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 301
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 303
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpios:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->blinkGpiosStatus:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toggleGpio(I)V
    .locals 4
    .param p1, "led"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    if-nez p1, :cond_2

    .line 151
    iget v0, p0, Lcom/mifiservice/device/LedController;->wifi_brt:I

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->WIFI_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 153
    iput v3, p0, Lcom/mifiservice/device/LedController;->wifi_brt:I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->WIFI_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 156
    iput v2, p0, Lcom/mifiservice/device/LedController;->wifi_brt:I

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 159
    iget v0, p0, Lcom/mifiservice/device/LedController;->red_brt:I

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 161
    iput v3, p0, Lcom/mifiservice/device/LedController;->red_brt:I

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->RED_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 164
    iput v2, p0, Lcom/mifiservice/device/LedController;->red_brt:I

    goto :goto_0

    .line 166
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 167
    iget v0, p0, Lcom/mifiservice/device/LedController;->green_brt:I

    if-nez v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_ON:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 169
    iput v3, p0, Lcom/mifiservice/device/LedController;->green_brt:I

    goto :goto_0

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/mifiservice/device/LedController;->GREEN_LED_DEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/mifiservice/device/LedController;->LIGHT_OFF:[B

    invoke-direct {p0, v0, v1}, Lcom/mifiservice/device/LedController;->setBrightness(Ljava/lang/String;[B)V

    .line 172
    iput v2, p0, Lcom/mifiservice/device/LedController;->green_brt:I

    goto :goto_0
.end method
