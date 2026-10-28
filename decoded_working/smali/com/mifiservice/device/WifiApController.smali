.class public Lcom/mifiservice/device/WifiApController;
.super Ljava/lang/Object;
.source "WifiApController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mifiservice/device/WifiApController$MACFILTER;,
        Lcom/mifiservice/device/WifiApController$WifiClient;
    }
.end annotation


# static fields
.field public static final PASSWORD_OPEN:I = 0x0

.field public static final PASSWORD_WPA2_CCMP:I = 0x4

.field public static final PASSWORD_WPA2_TKIP:I = 0x3

.field public static final PASSWORD_WPA_CCMP:I = 0x2

.field public static final PASSWORD_WPA_TKIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApController"

.field private static final WIFI_AP_ENVENT_WPS_DISABLE:Ljava/lang/String; = "com.android.mifi.ap.wps.off"

.field private static final WIFI_AP_ENVENT_WPS_ENABLE:Ljava/lang/String; = "com.android.mifi.ap.wps.on"

.field private static final WIFI_AP_ENVENT_WPS_PBC_START:Ljava/lang/String; = "com.android.mifi.ap.wps.pbc.start"

.field private static final WIFI_AP_ENVENT_WPS_PBC_TIMEOUT:Ljava/lang/String; = "com.android.mifi.ap.wps.pbc.timeout"

.field private static final WIFI_AP_STATE_DISABLED:I = 0x1

.field private static final WIFI_AP_STATE_DISABLING:I = 0x0

.field private static final WIFI_AP_STATE_ENABLED:I = 0x3

.field private static final WIFI_AP_STATE_ENABLING:I = 0x2

.field private static final WIFI_AP_STATE_FAILED:I = 0x4

.field private static final WIFI_AP_STATE_UNKNOWN:I = -0x1

.field private static instance:Lcom/mifiservice/device/WifiApController;


# instance fields
.field private final WIFI_STATE_TEXTSTATE:[Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private dhcpHigh:Ljava/lang/String;

.field private dhcpLow:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mifiservice/device/WifiApController$WifiClient;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/device/WifiApController;->instance:Lcom/mifiservice/device/WifiApController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DISABLING"

    aput-object v2, v1, v3

    const-string v2, "DISABLED"

    aput-object v2, v1, v4

    const-string v2, "ENABLING"

    aput-object v2, v1, v5

    const-string v2, "ENABLED"

    aput-object v2, v1, v6

    const-string v2, "FAILED"

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->WIFI_STATE_TEXTSTATE:[Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->mWifiClients:Ljava/util/List;

    .line 58
    const-string v1, "192.168.100.100"

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->dhcpLow:Ljava/lang/String;

    .line 59
    const-string v1, "192.168.100.200"

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->dhcpHigh:Ljava/lang/String;

    .line 84
    new-instance v1, Lcom/mifiservice/device/WifiApController$1;

    invoke-direct {v1, p0}, Lcom/mifiservice/device/WifiApController$1;-><init>(Lcom/mifiservice/device/WifiApController;)V

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 139
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 140
    iput-object p1, p0, Lcom/mifiservice/device/WifiApController;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.android.mifi.ap.wps.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.android.mifi.ap.wps.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "com.android.mifi.ap.wps.pbc.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.android.mifi.ap.wps.pbc.timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mifiservice/device/WifiApController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v1, Lcom/mifiservice/device/WifiApController$MACFILTER;

    invoke-direct {v1, p0}, Lcom/mifiservice/device/WifiApController$MACFILTER;-><init>(Lcom/mifiservice/device/WifiApController;)V

    iput-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    .line 152
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget v2, v2, Lcom/mifiservice/config/MifiConfiguration;->MACFilterType:I

    iput v2, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->type:I

    .line 155
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 156
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 157
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 158
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v1, v6

    .line 159
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    aget-object v2, v2, v7

    aput-object v2, v1, v7

    .line 160
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 161
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 162
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 163
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 164
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/mifiservice/device/WifiApController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/WifiApController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mifiservice/device/WifiApController;->getTetherConnectedStations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectedHotIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 691
    const-string v3, ""

    .line 694
    .local v3, "ip":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/proc/net/arp"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 695
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 698
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 699
    const-string v6, " +"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "splitted":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    .line 702
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 703
    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 708
    .end local v5    # "splitted":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "line":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 709
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/mifiservice/device/WifiApController;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/mifiservice/device/WifiApController;->instance:Lcom/mifiservice/device/WifiApController;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/mifiservice/device/WifiApController;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/device/WifiApController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/device/WifiApController;->instance:Lcom/mifiservice/device/WifiApController;

    .line 172
    :cond_0
    sget-object v0, Lcom/mifiservice/device/WifiApController;->instance:Lcom/mifiservice/device/WifiApController;

    return-object v0
.end method

.method private getTetherConnectedStations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "tetherList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public commitMacfilter()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 768
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.IwprivService.MACADDR"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v4, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.IwprivService.WIFILISTMAC"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v6, "intentWifiList":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.IwprivService.EXCUTE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v5, "intentExcute":Landroid/content/Intent;
    :try_start_0
    const-string v8, "type"

    iget-object v9, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget v9, v9, Lcom/mifiservice/device/WifiApController$MACFILTER;->type:I

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget v8, v8, Lcom/mifiservice/device/WifiApController$MACFILTER;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 776
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 801
    :goto_0
    return v7

    .line 780
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v8, v8, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 781
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "macaddr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v9, v9, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 783
    :cond_1
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 784
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget v8, v8, Lcom/mifiservice/device/WifiApController$MACFILTER;->type:I

    if-ne v8, v7, :cond_3

    .line 785
    const/4 v2, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiClients()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mifiservice/device/WifiApController$WifiClient;

    .line 788
    .local v0, "client":Lcom/mifiservice/device/WifiApController$WifiClient;
    const-string v8, "WifiApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "client.mac: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/mifiservice/device/WifiApController$WifiClient;->mac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifilistmac"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/mifiservice/device/WifiApController$WifiClient;->mac:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 793
    .end local v0    # "client":Lcom/mifiservice/device/WifiApController$WifiClient;
    :cond_2
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/mifiservice/device/WifiApController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 795
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WifiApController"

    const-string v8, "commitMacfilter error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public getClientNumber()I
    .locals 1

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/mifiservice/device/WifiApController;->getTetherConnectedStations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMacfilter()Lcom/mifiservice/device/WifiApController$MACFILTER;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 513
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 514
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 516
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    goto :goto_0
.end method

.method public getWifiAPState()I
    .locals 2

    .prologue
    .line 303
    const/4 v0, -0x1

    .line 310
    .local v0, "state":I
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 311
    add-int/lit8 v0, v0, -0xa

    .line 313
    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiChannel()I
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 579
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 580
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 584
    :cond_0
    return v1
.end method

.method public getWifiClients()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mifiservice/device/WifiApController$WifiClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    const/4 v7, 0x0

    .line 719
    .local v7, "i":I
    invoke-direct {p0}, Lcom/mifiservice/device/WifiApController;->getTetherConnectedStations()Ljava/util/List;

    move-result-object v8

    .line 721
    .local v8, "tetherList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->mWifiClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 722
    const/4 v7, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 723
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiDevice;

    .line 724
    .local v6, "device":Landroid/net/wifi/WifiDevice;
    iget v0, v6, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 726
    iget-object v0, v6, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mifiservice/device/WifiApController;->getConnectedHotIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "ip":Ljava/lang/String;
    const-string v0, "WifiApController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->>ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v9, p0, Lcom/mifiservice/device/WifiApController;->mWifiClients:Ljava/util/List;

    new-instance v0, Lcom/mifiservice/device/WifiApController$WifiClient;

    iget-object v2, v6, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    iget-object v4, v6, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    const-string v5, "WIFI"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mifiservice/device/WifiApController$WifiClient;-><init>(Lcom/mifiservice/device/WifiApController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v3    # "ip":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 732
    .end local v6    # "device":Landroid/net/wifi/WifiDevice;
    :cond_1
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->mWifiClients:Ljava/util/List;

    return-object v0
.end method

.method public getWifiEncryptType()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 652
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    .line 653
    .local v3, "wpa":Z
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    .line 655
    .local v4, "wpa2":Z
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 656
    .local v0, "ccmp":Z
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 658
    .local v2, "tkip":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 659
    const/4 v1, 0x1

    .line 670
    .local v1, "crypt":I
    :goto_0
    return v1

    .line 660
    .end local v1    # "crypt":I
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 661
    const/4 v1, 0x2

    .restart local v1    # "crypt":I
    goto :goto_0

    .line 662
    .end local v1    # "crypt":I
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 663
    const/4 v1, 0x3

    .restart local v1    # "crypt":I
    goto :goto_0

    .line 664
    .end local v1    # "crypt":I
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 665
    const/4 v1, 0x4

    .restart local v1    # "crypt":I
    goto :goto_0

    .line 667
    .end local v1    # "crypt":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "crypt":I
    goto :goto_0
.end method

.method public getWifiHwMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 602
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 604
    const-string v1, "n"

    .line 606
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "n"

    goto :goto_0
.end method

.method public getWifiMAC()Ljava/lang/String;
    .locals 8

    .prologue
    .line 533
    const-string v3, ""

    .line 535
    .local v3, "mac":Ljava/lang/String;
    :try_start_0
    const-string v5, "sys/class/net/wlan0/address"

    .line 536
    .local v5, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 537
    .local v2, "fis":Ljava/io/FileInputStream;
    const/16 v6, 0x40

    new-array v0, v6, [B

    .line 538
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 539
    .local v1, "byteCount":I
    if-lez v1, :cond_0

    .line 541
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "utf-8"

    invoke-direct {v4, v0, v6, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v3    # "mac":Ljava/lang/String;
    .local v4, "mac":Ljava/lang/String;
    move-object v3, v4

    .line 543
    .end local v4    # "mac":Ljava/lang/String;
    .restart local v3    # "mac":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    .line 544
    :cond_1
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 546
    :catch_0
    move-exception v6

    .line 550
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getWifiMaxSta()I
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 625
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 626
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->maxSta:I

    .line 628
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public getWifiSsidHidden()Z
    .locals 2

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 558
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 559
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 561
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWlanDHCP_High()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->dhcpHigh:Ljava/lang/String;

    return-object v0
.end method

.method public getWlanDHCP_Low()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->dhcpLow:Ljava/lang/String;

    return-object v0
.end method

.method public getWlanDNS(I)Ljava/lang/String;
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 442
    const-string v5, "8.8.8.8"

    .line 443
    .local v5, "response":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getprop net.rmnet0.dns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "command":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 446
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 447
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 449
    .local v2, "input":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 451
    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "temp":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 452
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "WifiApController"

    const-string v9, "get DNS error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v8, "WifiApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get DNS response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-object v5

    .line 454
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 455
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 457
    const-string v5, "8.8.8.8"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getWlanIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    const-string v0, "192.168.100.1"

    return-object v0
.end method

.method public getWlanStatus()Z
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartAP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    const-string v0, "WifiApController"

    const-string v1, "restartAP "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)I

    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)I

    .line 810
    return-void
.end method

.method public setMacfilterMac(ILjava/lang/String;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 760
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iget-object v0, v0, Lcom/mifiservice/device/WifiApController$MACFILTER;->macaddr:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 762
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMacfilterType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 751
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/mifiservice/device/WifiApController;->macfilter:Lcom/mifiservice/device/WifiApController$MACFILTER;

    iput p1, v1, Lcom/mifiservice/device/WifiApController$MACFILTER;->type:I

    .line 756
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string v1, "WifiApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSsid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 524
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 525
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 526
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 529
    :cond_0
    return-void
.end method

.method public setWifiApConfig(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pwtype"    # I
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    const-string v3, "WifiApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 227
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 229
    packed-switch p2, :pswitch_data_0

    .line 298
    :goto_0
    return v1

    .line 231
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 232
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 297
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move v1, v2

    .line 298
    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 237
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 238
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 239
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 240
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 241
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 242
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 243
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 244
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 251
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 252
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 253
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 254
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 255
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 256
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 257
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 258
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 264
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 265
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 266
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 267
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 268
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 269
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 270
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 271
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 272
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 278
    :pswitch_4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 279
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 280
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 281
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 282
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 283
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 284
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 285
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 286
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 330
    const-string v3, "WifiApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** setWifiApEnabled CALLED **** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 334
    const-wide/16 v3, 0x5dc

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    const/4 v2, -0x1

    .line 353
    .local v2, "state":I
    if-nez p1, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 357
    :cond_1
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget v3, v3, Lcom/mifiservice/config/MifiConfiguration;->WIFImaxSta:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->maxSta:I

    .line 358
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget v3, v3, Lcom/mifiservice/config/MifiConfiguration;->WIFIchannel:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 360
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mifiservice/config/MifiConfiguration;->WIFIssidhidden:Z

    iput-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 361
    invoke-virtual {p0, p1}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, "result":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_4

    .line 368
    if-eqz p2, :cond_2

    .line 380
    :cond_2
    :goto_1
    if-nez p2, :cond_8

    .line 381
    const/16 v0, 0x1e

    .line 382
    .local v0, "loopMax":I
    :goto_2
    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    if-eq v3, v8, :cond_3

    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    if-ne v3, v9, :cond_5

    .line 386
    :cond_3
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 376
    .end local v0    # "loopMax":I
    :cond_4
    iget-object v3, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1

    .line 391
    .restart local v0    # "loopMax":I
    :cond_5
    iget-object v3, p0, Lcom/mifiservice/device/WifiApController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 415
    .end local v0    # "loopMax":I
    :cond_6
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    if-ne v3, v8, :cond_a

    .line 416
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v3

    invoke-virtual {v3, v6, v7, v6}, Lcom/mifiservice/device/LedController;->setMode(III)V

    .line 421
    :goto_3
    if-eqz p2, :cond_7

    .line 422
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->commitMacfilter()Z

    .line 424
    :cond_7
    return v2

    .line 392
    :cond_8
    if-eqz p2, :cond_6

    .line 393
    const/16 v0, 0x1e

    .line 394
    .restart local v0    # "loopMax":I
    :goto_4
    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    if-eq v3, v7, :cond_9

    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiAPState()I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 398
    :cond_9
    const-wide/16 v3, 0x1f4

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 399
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 418
    .end local v0    # "loopMax":I
    :cond_a
    invoke-static {}, Lcom/mifiservice/device/LedController;->getInstance()Lcom/mifiservice/device/LedController;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6}, Lcom/mifiservice/device/LedController;->setMode(III)V

    goto :goto_3

    .line 335
    .end local v1    # "result":Z
    .end local v2    # "state":I
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 388
    .restart local v0    # "loopMax":I
    .restart local v1    # "result":Z
    .restart local v2    # "state":I
    :catch_1
    move-exception v3

    goto :goto_2

    .line 400
    :catch_2
    move-exception v3

    goto :goto_4
.end method

.method public setWifiApWps(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiChannel(I)V
    .locals 4
    .param p1, "channel"    # I

    .prologue
    .line 589
    const-string v1, "WifiApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 591
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 597
    :cond_0
    return-void
.end method

.method public setWifiHwMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 611
    const-string v1, "WifiApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiHwMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 614
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 620
    :cond_0
    return-void
.end method

.method public setWifiMaxSta(I)V
    .locals 4
    .param p1, "maxsta"    # I

    .prologue
    .line 633
    const-string v1, "WifiApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiMaxSta "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 636
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 637
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->maxSta:I

    .line 638
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 642
    :cond_0
    return-void
.end method

.method public setWifiSsidHidden(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 566
    const-string v1, "WifiApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiSsidHidden "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Lcom/mifiservice/device/WifiApController;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 568
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 569
    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 570
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WifiApController;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 574
    :cond_0
    return-void
.end method

.method public setWlanDHCP_High(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/mifiservice/device/WifiApController;->dhcpHigh:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setWlanDHCP_Low(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/mifiservice/device/WifiApController;->dhcpLow:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setWlanDns(ILjava/lang/String;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "dns"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getprop net.rmnet0.dns "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "command":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 472
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 473
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 475
    .local v2, "input":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 477
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "temp":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 478
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WifiApController"

    const-string v8, "get DNS error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 480
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "temp":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 482
    const-string v7, "WifiApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set DNS ok: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
