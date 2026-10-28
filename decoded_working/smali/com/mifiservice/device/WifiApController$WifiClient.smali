.class public Lcom/mifiservice/device/WifiApController$WifiClient;
.super Ljava/lang/Object;
.source "WifiApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WifiApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiClient"
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public media:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/mifiservice/device/WifiApController;


# direct methods
.method public constructor <init>(Lcom/mifiservice/device/WifiApController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "i"    # Ljava/lang/String;
    .param p4, "ma"    # Ljava/lang/String;
    .param p5, "med"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/mifiservice/device/WifiApController$WifiClient;->this$0:Lcom/mifiservice/device/WifiApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p2, p0, Lcom/mifiservice/device/WifiApController$WifiClient;->name:Ljava/lang/String;

    .line 684
    iput-object p3, p0, Lcom/mifiservice/device/WifiApController$WifiClient;->ip:Ljava/lang/String;

    .line 685
    iput-object p4, p0, Lcom/mifiservice/device/WifiApController$WifiClient;->mac:Ljava/lang/String;

    .line 686
    iput-object p5, p0, Lcom/mifiservice/device/WifiApController$WifiClient;->media:Ljava/lang/String;

    .line 687
    return-void
.end method
