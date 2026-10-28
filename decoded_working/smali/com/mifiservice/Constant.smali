.class public Lcom/mifiservice/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final CMD_APP_AUTH:S = 0x64s

.field public static final CMD_APP_REGISTER:S = 0x66s

.field public static final CMD_DEVICE_AUTH:S = 0x65s

.field public static final CMD_HEARTBEAT:S = 0x0s

.field public static final CMD_IM:S = 0xc8s

.field public static final CMD_PUSH_RSA_PUB_KEY:S = 0x1s

.field public static final CMD_SEND_AES_KEY:S = 0x2s

.field public static final DEBUG:Z = true

.field public static final OTA_CHECK_PERIOD:I = 0x1e

.field public static final TCP_SERVER_IP:Ljava/lang/String; = "192.168.100.1"

.field public static final TCP_SERVER_PORT:I = 0x22b8

.field public static final UPDATE_SERVER_IP:Ljava/lang/String; = "120.77.62.229"

.field public static final UPDATE_SERVER_PORT:I = 0x1f90


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
