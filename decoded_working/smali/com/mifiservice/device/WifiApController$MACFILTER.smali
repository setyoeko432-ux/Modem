.class public Lcom/mifiservice/device/WifiApController$MACFILTER;
.super Ljava/lang/Object;
.source "WifiApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WifiApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MACFILTER"
.end annotation


# instance fields
.field public macaddr:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mifiservice/device/WifiApController;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/mifiservice/device/WifiApController;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/mifiservice/device/WifiApController$MACFILTER;->this$0:Lcom/mifiservice/device/WifiApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
