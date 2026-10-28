.class public Lcom/mifiservice/device/GpsController;
.super Ljava/lang/Object;
.source "GpsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsController"

.field private static instance:Lcom/mifiservice/device/GpsController;


# instance fields
.field private lastLatitude:Ljava/lang/String;

.field private lastLongitude:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/device/GpsController;->instance:Lcom/mifiservice/device/GpsController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mifiservice/device/GpsController;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/mifiservice/device/GpsController$1;

    invoke-direct {v0, p0}, Lcom/mifiservice/device/GpsController$1;-><init>(Lcom/mifiservice/device/GpsController;)V

    iput-object v0, p0, Lcom/mifiservice/device/GpsController;->mListener:Landroid/location/LocationListener;

    .line 30
    iput-object p1, p0, Lcom/mifiservice/device/GpsController;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mifiservice/device/GpsController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mifiservice/device/GpsController;->mGeocoder:Landroid/location/Geocoder;

    .line 33
    iget-object v0, p0, Lcom/mifiservice/device/GpsController;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mifiservice/device/GpsController;->mLocationManager:Landroid/location/LocationManager;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/mifiservice/device/GpsController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/GpsController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mifiservice/device/GpsController;->lastLatitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mifiservice/device/GpsController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/GpsController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mifiservice/device/GpsController;->lastLongitude:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/mifiservice/device/GpsController;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/mifiservice/device/GpsController;->instance:Lcom/mifiservice/device/GpsController;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/mifiservice/device/GpsController;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/device/GpsController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/device/GpsController;->instance:Lcom/mifiservice/device/GpsController;

    .line 40
    :cond_0
    sget-object v0, Lcom/mifiservice/device/GpsController;->instance:Lcom/mifiservice/device/GpsController;

    return-object v0
.end method


# virtual methods
.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/mifiservice/device/GpsController;->getLocation()V

    .line 91
    iget-object v0, p0, Lcom/mifiservice/device/GpsController;->lastLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/mifiservice/device/GpsController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 83
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mifiservice/device/GpsController;->lastLatitude:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mifiservice/device/GpsController;->lastLongitude:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mifiservice/device/GpsController;->getLocation()V

    .line 95
    iget-object v0, p0, Lcom/mifiservice/device/GpsController;->lastLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public startGps()V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mifiservice/device/GpsController;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mifiservice/device/GpsController;->mListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 47
    return-void
.end method

.method public stopGps()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mifiservice/device/GpsController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mifiservice/device/GpsController;->mListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 51
    return-void
.end method
