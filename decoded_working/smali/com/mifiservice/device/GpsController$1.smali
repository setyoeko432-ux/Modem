.class Lcom/mifiservice/device/GpsController$1;
.super Ljava/lang/Object;
.source "GpsController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/GpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mifiservice/device/GpsController;


# direct methods
.method constructor <init>(Lcom/mifiservice/device/GpsController;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mifiservice/device/GpsController$1;->this$0:Lcom/mifiservice/device/GpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mifiservice/device/GpsController$1;->this$0:Lcom/mifiservice/device/GpsController;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mifiservice/device/GpsController;->access$002(Lcom/mifiservice/device/GpsController;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/mifiservice/device/GpsController$1;->this$0:Lcom/mifiservice/device/GpsController;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mifiservice/device/GpsController;->access$102(Lcom/mifiservice/device/GpsController;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 77
    return-void
.end method
