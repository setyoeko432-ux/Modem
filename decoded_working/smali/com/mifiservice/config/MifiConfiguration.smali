.class public Lcom/mifiservice/config/MifiConfiguration;
.super Ljava/lang/Object;
.source "MifiConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MifiConfiguration"

.field private static final WIFI_FAC_BACKUP_FILE:Ljava/lang/String; = "/persist/wifi.json"

.field private static final WIFI_MAC_FILE:Ljava/lang/String; = "/persist/wcnss_mac_addr"

.field private static final hostapd_config_file:Ljava/lang/String; = "/data/misc/wifi/hostapd.conf"

.field private static instance:Lcom/mifiservice/config/MifiConfiguration; = null

.field private static final mifi_config_file:Ljava/lang/String; = "/data/mificonfig.json"


# instance fields
.field public DHCPrangeHigh:Ljava/lang/String;

.field public DHCPrangeLow:Ljava/lang/String;

.field public MACFilterList:[Ljava/lang/String;

.field public MACFilterType:I

.field public WANCurrentImei:Ljava/lang/String;

.field public WANCurrentImsi:Ljava/lang/String;

.field public WANautoConnect:Z

.field public WANdefaultAPN:I

.field public WANdefaultAPNSave:I

.field public WANnetworkType:I

.field public WANtrafficStartTime:J

.field public WANtrafficTotalCount:J

.field public WIFIchannel:I

.field public WIFIencrypt:I

.field public WIFIhwmode:Ljava/lang/String;

.field public WIFImaxSta:I

.field public WIFIpassword:Ljava/lang/String;

.field public WIFIssid:Ljava/lang/String;

.field public WIFIssidhidden:Z

.field private backWifiKey:Ljava/lang/String;

.field private backWifiSsid:Ljava/lang/String;

.field public loginPassword:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private wifiMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/config/MifiConfiguration;->instance:Lcom/mifiservice/config/MifiConfiguration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "admin"

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/mifiservice/config/MifiConfiguration;->WANautoConnect:Z

    .line 40
    iput v1, p0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    .line 41
    const-string v0, "4G MIFI-DA7"

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssidhidden:Z

    .line 43
    const-string v0, "n"

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIhwmode:Ljava/lang/String;

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIchannel:I

    .line 45
    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFImaxSta:I

    .line 46
    iput v2, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIencrypt:I

    .line 47
    const-string v0, "1234567890"

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIpassword:Ljava/lang/String;

    .line 48
    const-string v0, "192.168.100.100"

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeLow:Ljava/lang/String;

    .line 49
    const-string v0, "192.168.100.200"

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeHigh:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPN:I

    .line 53
    iput v1, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImei:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImsi:Ljava/lang/String;

    .line 57
    iput-wide v4, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficStartTime:J

    .line 58
    iput-wide v4, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficTotalCount:J

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiSsid:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiKey:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->wifiMac:Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterType:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->mContext:Landroid/content/Context;

    .line 80
    iput-object p1, p0, Lcom/mifiservice/config/MifiConfiguration;->mContext:Landroid/content/Context;

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->loadWifiFacFile()V

    .line 86
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->loadWifiMacFile()V

    .line 87
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->loadFromFile()V

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/hostapd.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 90
    return-void
.end method

.method public static getInstance()Lcom/mifiservice/config/MifiConfiguration;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/mifiservice/config/MifiConfiguration;->instance:Lcom/mifiservice/config/MifiConfiguration;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/mifiservice/config/MifiConfiguration;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/config/MifiConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/config/MifiConfiguration;->instance:Lcom/mifiservice/config/MifiConfiguration;

    .line 75
    :cond_0
    sget-object v0, Lcom/mifiservice/config/MifiConfiguration;->instance:Lcom/mifiservice/config/MifiConfiguration;

    return-object v0
.end method


# virtual methods
.method public deleteFile()V
    .locals 4

    .prologue
    .line 328
    iget-object v1, p0, Lcom/mifiservice/config/MifiConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "/data/mificonfig.json"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 330
    .local v0, "result":Z
    const-string v1, "MifiConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete file , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public deleteFileSd()V
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/mificonfig.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 387
    return-void
.end method

.method public getWifiDefaultKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    const-string v0, "1234567890"

    .line 225
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiKey:Ljava/lang/String;

    .line 228
    :cond_0
    return-object v0
.end method

.method public getWifiDefaultSsid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    const-string v1, "4G-UFI-DA7"

    .line 209
    .local v1, "ssid":Ljava/lang/String;
    iget-object v2, p0, Lcom/mifiservice/config/MifiConfiguration;->wifiMac:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "macString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->loadWifiFacFile()V

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 212
    iget-object v2, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiSsid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    .line 215
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4G-UFI-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    :cond_1
    const-string v1, "4G-UFI-DA7"

    goto :goto_0
.end method

.method public loadFromFile()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    :try_start_0
    const-string v3, "/data/mificonfig.json"

    invoke-virtual {p0, v3}, Lcom/mifiservice/config/MifiConfiguration;->readFileSd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "acceptjson":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "jo":Lorg/json/JSONObject;
    const-string v3, "loginPassword"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    .line 101
    const-string v3, "WANautoConnect"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANautoConnect:Z

    .line 102
    const-string v3, "WANnetworkType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    .line 104
    const-string v3, "WIFIssid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    .line 105
    const-string v3, "WIFIssidhidden"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssidhidden:Z

    .line 106
    const-string v3, "WIFIhwmode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIhwmode:Ljava/lang/String;

    .line 107
    const-string v3, "WIFIchannel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIchannel:I

    .line 108
    const-string v3, "WIFImaxSta"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFImaxSta:I

    .line 109
    const-string v3, "WIFIencrypt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIencrypt:I

    .line 110
    const-string v3, "WIFIpassword"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIpassword:Ljava/lang/String;

    .line 112
    const-string v3, "DHCPrangeLow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeLow:Ljava/lang/String;

    .line 113
    const-string v3, "DHCPrangeHigh"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeHigh:Ljava/lang/String;

    .line 115
    const-string v3, "WANdefaultAPN"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPN:I

    .line 116
    const-string v3, "WANCurrentImei"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImei:Ljava/lang/String;

    .line 117
    const-string v3, "WANCurrentImsi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImsi:Ljava/lang/String;

    .line 118
    const-string v3, "WANtrafficStartTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficStartTime:J

    .line 119
    const-string v3, "WANtrafficTotalCount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficTotalCount:J

    .line 121
    const-string v3, "WANdefaultAPNSave"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    .line 123
    const-string v3, "MACFilterType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterType:I

    .line 124
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MACFilter_0"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 125
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "MACFilter_1"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 126
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "MACFilter_2"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, "MACFilter_3"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 128
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x4

    const-string v5, "MACFilter_4"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 129
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x5

    const-string v5, "MACFilter_5"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 130
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x6

    const-string v5, "MACFilter_6"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 131
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x7

    const-string v5, "MACFilter_7"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 132
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "MACFilter_8"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 133
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x9

    const-string v5, "MACFilter_9"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "acceptjson":Ljava/lang/String;
    .end local v2    # "jo":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MifiConfiguration"

    const-string v4, "read error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "admin"

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    .line 139
    iput-boolean v7, p0, Lcom/mifiservice/config/MifiConfiguration;->WANautoConnect:Z

    .line 140
    iput v6, p0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    .line 142
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->getWifiDefaultSsid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    .line 143
    iput-boolean v6, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssidhidden:Z

    .line 144
    const-string v3, "n"

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIhwmode:Ljava/lang/String;

    .line 145
    iput v10, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIchannel:I

    .line 146
    const/16 v3, 0xa

    iput v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFImaxSta:I

    .line 147
    iput v9, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIencrypt:I

    .line 148
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->getWifiDefaultKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIpassword:Ljava/lang/String;

    .line 150
    const-string v3, "192.168.100.2"

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeLow:Ljava/lang/String;

    .line 151
    const-string v3, "192.168.100.254"

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeHigh:Ljava/lang/String;

    .line 153
    iput v6, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPN:I

    .line 154
    const-string v3, ""

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImei:Ljava/lang/String;

    .line 155
    const-string v3, ""

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImsi:Ljava/lang/String;

    .line 156
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficStartTime:J

    .line 157
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficTotalCount:J

    .line 159
    iput v8, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterType:I

    .line 160
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v6

    .line 161
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v7

    .line 162
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    .line 163
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v8

    .line 164
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v9

    .line 165
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x5

    const-string v5, ""

    aput-object v5, v3, v4

    .line 166
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v10

    .line 167
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x7

    const-string v5, ""

    aput-object v5, v3, v4

    .line 168
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, ""

    aput-object v5, v3, v4

    .line 169
    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x9

    const-string v5, ""

    aput-object v5, v3, v4

    .line 171
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->saveToFile()V

    goto/16 :goto_0
.end method

.method public loadWifiFacFile()V
    .locals 6

    .prologue
    .line 177
    :try_start_0
    const-string v3, "/persist/wifi.json"

    invoke-virtual {p0, v3}, Lcom/mifiservice/config/MifiConfiguration;->readFileSd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "acceptjson":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, "jo":Lorg/json/JSONObject;
    const-string v3, "WIFIssid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiSsid:Ljava/lang/String;

    .line 182
    const-string v3, "WIFIpassword"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiKey:Ljava/lang/String;

    .line 184
    const-string v3, "MifiConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backWifiSsid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "MifiConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backWifiKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mifiservice/config/MifiConfiguration;->backWifiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "acceptjson":Ljava/lang/String;
    .end local v2    # "jo":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MifiConfiguration"

    const-string v4, "read fac file error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWifiMacFile()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    const-string v1, "/persist/wcnss_mac_addr"

    invoke-virtual {p0, v1}, Lcom/mifiservice/config/MifiConfiguration;->readFileSd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mifiservice/config/MifiConfiguration;->wifiMac:Ljava/lang/String;

    .line 195
    const-string v1, "MifiConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiMac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->wifiMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MifiConfiguration"

    const-string v2, "read mac file error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v3, ""

    .line 287
    .local v3, "res":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mifiservice/config/MifiConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 288
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 289
    .local v2, "length":I
    new-array v0, v2, [B

    .line 290
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 291
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0    # "buffer":[B
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v2    # "length":I
    :goto_0
    return-object v3

    .line 294
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public readFileSd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const-string v4, ""

    .line 338
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 341
    .local v2, "fin":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 342
    .local v3, "length":I
    new-array v0, v3, [B

    .line 343
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 344
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v0    # "buffer":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fin":Ljava/io/InputStream;
    .end local v3    # "length":I
    :goto_0
    return-object v4

    .line 347
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/mifiservice/config/MifiConfiguration;->deleteFileSd()V

    .line 281
    return-void
.end method

.method public saveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .line 306
    .local v3, "isSaveSuccess":Z
    :try_start_0
    iget-object v5, p0, Lcom/mifiservice/config/MifiConfiguration;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mifiservice/config/MifiConfiguration;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 307
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 308
    .local v4, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    const/4 v3, 0x1

    .line 316
    if-eqz v1, :cond_2

    .line 318
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 324
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v3

    .line 319
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 321
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 311
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v5

    .line 316
    :goto_1
    if-eqz v0, :cond_0

    .line 318
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 319
    :catch_2
    move-exception v5

    goto :goto_0

    .line 313
    :catch_3
    move-exception v5

    .line 316
    :goto_2
    if-eqz v0, :cond_0

    .line 318
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 319
    :catch_4
    move-exception v5

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_1

    .line 318
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 321
    :cond_1
    :goto_4
    throw v5

    .line 319
    :catch_5
    move-exception v6

    goto :goto_4

    .line 316
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 313
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v5

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 311
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v5

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public saveFileSd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 360
    .local v4, "isSaveSuccess":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 363
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 364
    .local v5, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 366
    const/4 v4, 0x1

    .line 372
    if-eqz v1, :cond_2

    .line 374
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 380
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .line 375
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v6

    move-object v0, v1

    .line 377
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 367
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v6

    .line 372
    :goto_1
    if-eqz v0, :cond_0

    .line 374
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 375
    :catch_2
    move-exception v6

    goto :goto_0

    .line 369
    :catch_3
    move-exception v6

    .line 372
    :goto_2
    if-eqz v0, :cond_0

    .line 374
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 375
    :catch_4
    move-exception v6

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_1

    .line 374
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 377
    :cond_1
    :goto_4
    throw v6

    .line 375
    :catch_5
    move-exception v7

    goto :goto_4

    .line 372
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 369
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 367
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public saveToFile()V
    .locals 5

    .prologue
    .line 232
    const-string v2, "MifiConfiguration"

    const-string v3, "saveToFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "loginPassword"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v2, "WANautoConnect"

    iget-boolean v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANautoConnect:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    const-string v2, "WANnetworkType"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANnetworkType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v2, "WIFIssid"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v2, "WIFIssidhidden"

    iget-boolean v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIssidhidden:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 242
    const-string v2, "WIFIhwmode"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIhwmode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "WIFIchannel"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIchannel:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v2, "WIFImaxSta"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFImaxSta:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v2, "WIFIencrypt"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIencrypt:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string v2, "WIFIpassword"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WIFIpassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v2, "DHCPrangeLow"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeLow:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v2, "DHCPrangeHigh"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->DHCPrangeHigh:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v2, "WANdefaultAPN"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPN:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v2, "WANdefaultAPNSave"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANdefaultAPNSave:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    const-string v2, "WANCurrentImei"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImei:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v2, "WANCurrentImsi"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANCurrentImsi:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v2, "WANtrafficStartTime"

    iget-wide v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficStartTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    const-string v2, "WANtrafficTotalCount"

    iget-wide v3, p0, Lcom/mifiservice/config/MifiConfiguration;->WANtrafficTotalCount:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    const-string v2, "MACFilterType"

    iget v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    const-string v2, "MACFilter_0"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v2, "MACFilter_1"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v2, "MACFilter_2"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v2, "MACFilter_3"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v2, "MACFilter_4"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v2, "MACFilter_5"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v2, "MACFilter_6"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v2, "MACFilter_7"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v2, "MACFilter_8"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v2, "MACFilter_9"

    iget-object v3, p0, Lcom/mifiservice/config/MifiConfiguration;->MACFilterList:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v2, "/data/mificonfig.json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mifiservice/config/MifiConfiguration;->saveFileSd(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MifiConfiguration"

    const-string v3, "save error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
