.class public Lcom/mifiservice/device/WanApnController$APN;
.super Ljava/lang/Object;
.source "WanApnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mifiservice/device/WanApnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APN"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field final synthetic this$0:Lcom/mifiservice/device/WanApnController;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mifiservice/device/WanApnController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mifiservice/device/WanApnController$APN;->this$0:Lcom/mifiservice/device/WanApnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
