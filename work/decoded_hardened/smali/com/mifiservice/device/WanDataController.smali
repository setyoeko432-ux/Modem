.class public Lcom/mifiservice/device/WanDataController;
.super Ljava/lang/Object;
.source "WanDataController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mifiservice/device/WanDataController$ChangeSimTask;,
        Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;,
        Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;
    }
.end annotation


# static fields
.field public static final CONNECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final NETWORN_2G:I = 0x2

.field public static final NETWORN_3G:I = 0x3

.field public static final NETWORN_4G:I = 0x4

.field public static final NETWORN_NONE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WanDataController"

.field private static instance:Lcom/mifiservice/device/WanDataController;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private dbm:I

.field private imeiString:Ljava/lang/String;

.field last_network_type:I

.field private last_signallevel:I

.field private mContext:Landroid/content/Context;

.field private myListener:Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;

.field private phone:Lcom/android/internal/telephony/Phone;

.field public repower_times:I

.field public stopCheckNetwork:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/mifiservice/device/WanDataController;->instance:Lcom/mifiservice/device/WanDataController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v1, "0000"

    iput-object v1, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/mifiservice/device/WanDataController;->last_network_type:I

    .line 77
    iput-object v4, p0, Lcom/mifiservice/device/WanDataController;->myListener:Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;

    .line 78
    iput v2, p0, Lcom/mifiservice/device/WanDataController;->last_signallevel:I

    .line 79
    iput-object v4, p0, Lcom/mifiservice/device/WanDataController;->mContext:Landroid/content/Context;

    .line 81
    iput-object v4, p0, Lcom/mifiservice/device/WanDataController;->phone:Lcom/android/internal/telephony/Phone;

    .line 82
    iput-boolean v2, p0, Lcom/mifiservice/device/WanDataController;->stopCheckNetwork:Z

    .line 83
    const/16 v1, 0x2710

    iput v1, p0, Lcom/mifiservice/device/WanDataController;->dbm:I

    .line 84
    iput v2, p0, Lcom/mifiservice/device/WanDataController;->repower_times:I

    .line 114
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 115
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mifiservice/device/WanDataController;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    iput-object p1, p0, Lcom/mifiservice/device/WanDataController;->mContext:Landroid/content/Context;

    .line 118
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    .line 119
    const-string v1, "WanDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imeiString:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;

    invoke-direct {v0, p0, v4}, Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;-><init>(Lcom/mifiservice/device/WanDataController;Lcom/mifiservice/device/WanDataController$1;)V

    .line 121
    .local v0, "myListener":Lcom/mifiservice/device/WanDataController$MyPhoneStateListener;
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x141

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 123
    invoke-virtual {p0}, Lcom/mifiservice/device/WanDataController;->registerData()V

    .line 125
    return-void
.end method

.method static synthetic access$002(Lcom/mifiservice/device/WanDataController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/WanDataController;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/mifiservice/device/WanDataController;->last_signallevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/mifiservice/device/WanDataController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/WanDataController;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/mifiservice/device/WanDataController;->dbm:I

    return p1
.end method

.method static synthetic access$200(Lcom/mifiservice/device/WanDataController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mifiservice/device/WanDataController;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mifiservice/device/WanDataController;->updateNetworkType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mifiservice/device/WanDataController;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/WanDataController;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mifiservice/device/WanDataController;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/mifiservice/device/WanDataController;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private checkImeiByAt(Ljava/lang/String;)Z
    .locals 7
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 784
    const/4 v2, 0x0

    .line 785
    .local v2, "result":I
    const-string v4, "AT+WRIMEI?"

    invoke-virtual {p0, v4}, Lcom/mifiservice/device/WanDataController;->sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "response":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+WRIMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "hresult":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 789
    const/4 v2, 0x1

    .line 791
    :cond_0
    const-string v4, "WanDataController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkImeiByAt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    if-ne v2, v3, :cond_1

    .line 793
    iput-object p1, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    .line 795
    :cond_1
    if-ne v2, v3, :cond_2

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 408
    if-nez p0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 410
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 412
    .local v1, "mConnMgr":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 415
    .local v0, "aActiveInfo":Landroid/net/NetworkInfo;
    goto :goto_0
.end method

.method public static getInstance()Lcom/mifiservice/device/WanDataController;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/mifiservice/device/WanDataController;->instance:Lcom/mifiservice/device/WanDataController;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/mifiservice/device/WanDataController;

    invoke-static {}, Lcom/mifiservice/service/MifiService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mifiservice/device/WanDataController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mifiservice/device/WanDataController;->instance:Lcom/mifiservice/device/WanDataController;

    .line 131
    :cond_0
    sget-object v0, Lcom/mifiservice/device/WanDataController;->instance:Lcom/mifiservice/device/WanDataController;

    return-object v0
.end method

.method private updateNetworkType(I)V
    .locals 2
    .param p1, "network_type"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 478
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 504
    const/4 v0, 0x0

    .line 509
    :goto_0
    iget v1, p0, Lcom/mifiservice/device/WanDataController;->last_network_type:I

    if-eq v1, v0, :cond_1

    .line 511
    if-nez v0, :cond_2

    .line 523
    :cond_0
    :goto_1
    iput v0, p0, Lcom/mifiservice/device/WanDataController;->last_network_type:I

    .line 528
    :cond_1
    return-void

    .line 484
    :pswitch_0
    const/4 v0, 0x2

    .line 485
    goto :goto_0

    .line 496
    :pswitch_1
    const/4 v0, 0x3

    .line 497
    goto :goto_0

    .line 500
    :pswitch_2
    const/4 v0, 0x4

    .line 501
    goto :goto_0

    .line 514
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 517
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 519
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public HandleCheckNetwork()V
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mifiservice/device/WanDataController;->stopCheckNetwork:Z

    .line 733
    new-instance v0, Lcom/mifiservice/device/WanDataController$1;

    invoke-direct {v0, p0}, Lcom/mifiservice/device/WanDataController$1;-><init>(Lcom/mifiservice/device/WanDataController;)V

    invoke-virtual {v0}, Lcom/mifiservice/device/WanDataController$1;->start()V

    .line 750
    return-void
.end method

.method public doShellCommand(Ljava/lang/String;)Z
    .locals 22
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v11, -0x1

    .line 544
    .local v11, "result":I
    const/4 v12, 0x0

    .line 545
    .local v12, "retValue":Z
    const/4 v14, 0x0

    .line 546
    .local v14, "successMsg":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 547
    .local v3, "errorMsg":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 548
    .local v16, "successResult":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 549
    .local v5, "errorResult":Ljava/io/BufferedReader;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 550
    .local v10, "r":Ljava/lang/Runtime;
    const/4 v9, 0x0

    .line 551
    .local v9, "p":Ljava/lang/Process;
    const/4 v7, 0x0

    .line 553
    .local v7, "os":Ljava/io/DataOutputStream;
    :try_start_0
    const-string v18, "sh"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 554
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 555
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .local v8, "os":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 556
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 558
    const-string v18, "exit\n"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 560
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    move-result v11

    .line 561
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 562
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .local v15, "successMsg":Ljava/lang/StringBuilder;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 563
    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .local v4, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_3
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 564
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .local v17, "successResult":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 567
    .end local v5    # "errorResult":Ljava/io/BufferedReader;
    .local v6, "errorResult":Ljava/io/BufferedReader;
    :goto_0
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "s":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 568
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 575
    .end local v13    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorResult":Ljava/io/BufferedReader;
    .restart local v5    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .line 576
    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 577
    const/4 v12, 0x0

    .line 579
    const-string v18, "WanDataController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doShellCommand command ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v7, :cond_0

    .line 582
    :try_start_7
    const-string v18, "WanDataController"

    const-string v19, "-----------os.close"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 585
    :cond_0
    if-eqz v16, :cond_1

    .line 586
    const-string v18, "WanDataController"

    const-string v19, "-----------successResult"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 589
    :cond_1
    if-eqz v5, :cond_2

    .line 590
    const-string v18, "WanDataController"

    const-string v19, "-----------errorResult"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 596
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    .line 597
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 600
    :cond_3
    :goto_3
    const-string v18, "WanDataController"

    const-string v19, "----------------------end"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v12

    .line 570
    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v5    # "errorResult":Ljava/io/BufferedReader;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :cond_4
    :goto_4
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 571
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 579
    .end local v13    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v18

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorResult":Ljava/io/BufferedReader;
    .restart local v5    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    :goto_5
    const-string v19, "WanDataController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "doShellCommand command ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v7, :cond_5

    .line 582
    :try_start_9
    const-string v19, "WanDataController"

    const-string v20, "-----------os.close"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 585
    :cond_5
    if-eqz v16, :cond_6

    .line 586
    const-string v19, "WanDataController"

    const-string v20, "-----------successResult"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    .line 589
    :cond_6
    if-eqz v5, :cond_7

    .line 590
    const-string v19, "WanDataController"

    const-string v20, "-----------errorResult"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 596
    :cond_7
    :goto_6
    if-eqz v9, :cond_8

    .line 597
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 579
    :cond_8
    throw v18

    .line 573
    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v5    # "errorResult":Ljava/io/BufferedReader;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :cond_9
    :try_start_a
    const-string v18, "WanDataController"

    const-string v19, "----------------------2"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 574
    const/4 v12, 0x1

    .line 579
    const-string v18, "WanDataController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "doShellCommand command ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v8, :cond_a

    .line 582
    :try_start_b
    const-string v18, "WanDataController"

    const-string v19, "-----------os.close"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 585
    :cond_a
    if-eqz v17, :cond_b

    .line 586
    const-string v18, "WanDataController"

    const-string v19, "-----------successResult"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 589
    :cond_b
    if-eqz v6, :cond_c

    .line 590
    const-string v18, "WanDataController"

    const-string v19, "-----------errorResult"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 596
    :cond_c
    :goto_7
    if-eqz v9, :cond_d

    .line 597
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    :cond_d
    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "errorResult":Ljava/io/BufferedReader;
    .restart local v5    # "errorResult":Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .line 599
    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .line 593
    .end local v13    # "s":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 594
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 593
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 594
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 593
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v5    # "errorResult":Ljava/io/BufferedReader;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v6    # "errorResult":Ljava/io/BufferedReader;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v13    # "s":Ljava/lang/String;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 594
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 579
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v6    # "errorResult":Ljava/io/BufferedReader;
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .end local v13    # "s":Ljava/lang/String;
    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v5    # "errorResult":Ljava/io/BufferedReader;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v18

    goto/16 :goto_5

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v18

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_5

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_3
    move-exception v18

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v18

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v18

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .line 575
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_1

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v2

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .end local v3    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v14    # "successMsg":Ljava/lang/StringBuilder;
    .end local v16    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v17    # "successResult":Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "successResult":Ljava/io/BufferedReader;
    .restart local v16    # "successResult":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "errorMsg":Ljava/lang/StringBuilder;
    .restart local v3    # "errorMsg":Ljava/lang/StringBuilder;
    move-object v14, v15

    .end local v15    # "successMsg":Ljava/lang/StringBuilder;
    .restart local v14    # "successMsg":Ljava/lang/StringBuilder;
    goto/16 :goto_1
.end method

.method public getCfun()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 628
    const/4 v0, 0x7

    .line 629
    .local v0, "cfun":I
    const-string v1, "AT+CFUN?"

    .line 630
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mifiservice/device/WanDataController;->sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "response":Ljava/lang/String;
    const-string v3, "+CFUN: 0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 633
    const/4 v0, 0x0

    .line 637
    :cond_0
    :goto_0
    const-string v3, "WanDataController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCfun: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v0

    .line 634
    :cond_1
    const-string v3, "+CFUN: 1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 635
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDbm()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/mifiservice/device/WanDataController;->dbm:I

    return v0
.end method

.method public getGatewayIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-string v0, "192.168.100.1"

    return-object v0
.end method

.method public getICCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    .line 351
    const-string v0, "WanDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imeiString:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->imeiString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobileDataEnable()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public getMobileDataState()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 170
    iget-object v4, p0, Lcom/mifiservice/device/WanDataController;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 172
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 174
    .local v0, "networkAvailable":Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 175
    .local v2, "networkType":I
    if-ne v3, v2, :cond_1

    .line 182
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 177
    :cond_1
    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getMobileIP()Ljava/lang/String;
    .locals 9

    .prologue
    .line 187
    const-string v4, "0.0.0.0"

    .line 190
    .local v4, "ip":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 192
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 194
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v6, "WanDataController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMobileIP:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "intf: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rmnet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v4

    .line 207
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    .end local v4    # "ip":Ljava/lang/String;
    .local v5, "ip":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 204
    .end local v5    # "ip":Ljava/lang/String;
    .restart local v4    # "ip":Ljava/lang/String;
    :catch_0
    move-exception v6

    :cond_2
    move-object v5, v4

    .line 207
    .end local v4    # "ip":Ljava/lang/String;
    .restart local v5    # "ip":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMobileRxBytes()J
    .locals 4

    .prologue
    .line 396
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMobileTxBytes()J
    .locals 4

    .prologue
    .line 400
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNetMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 222
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 225
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 257
    const-string v1, "UNKNOWN"

    :goto_0
    return-object v1

    .line 227
    :pswitch_0
    const-string v1, "GPRS"

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v1, "EDGE"

    goto :goto_0

    .line 231
    :pswitch_2
    const-string v1, "UMTS"

    goto :goto_0

    .line 233
    :pswitch_3
    const-string v1, "HSDPA"

    goto :goto_0

    .line 235
    :pswitch_4
    const-string v1, "HSUPA"

    goto :goto_0

    .line 237
    :pswitch_5
    const-string v1, "HSPA"

    goto :goto_0

    .line 239
    :pswitch_6
    const-string v1, "CDMA"

    goto :goto_0

    .line 241
    :pswitch_7
    const-string v1, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 243
    :pswitch_8
    const-string v1, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 245
    :pswitch_9
    const-string v1, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 247
    :pswitch_a
    const-string v1, "CDMA - 1xRTT"

    goto :goto_0

    .line 249
    :pswitch_b
    const-string v1, "LTE"

    goto :goto_0

    .line 251
    :pswitch_c
    const-string v1, "CDMA - eHRPD"

    goto :goto_0

    .line 253
    :pswitch_d
    const-string v1, "iDEN"

    goto :goto_0

    .line 255
    :pswitch_e
    const-string v1, "HSPA+"

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public getNetStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/mifiservice/device/WanDataController;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 297
    .local v2, "infos":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 299
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 300
    aget-object v1, v2, v0

    .line 298
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :cond_1
    if-eqz v1, :cond_5

    .line 306
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 308
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 309
    const-string v4, "Disconnected"

    .line 319
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :goto_1
    return-object v4

    .line 310
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    .line 311
    const-string v4, "Connecting"

    goto :goto_1

    .line 312
    :cond_3
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 313
    const-string v4, "Connected"

    goto :goto_1

    .line 314
    :cond_4
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_5

    .line 315
    const-string v4, "Disconnecting"

    goto :goto_1

    .line 319
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_5
    const-string v4, "Disconnected"

    goto :goto_1
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 272
    iget-object v3, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 276
    .local v2, "nm":I
    packed-switch v2, :pswitch_data_0

    .line 291
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "nm":I
    :cond_0
    :pswitch_0
    iget-object v3, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 281
    .restart local v1    # "mccmnc":Ljava/lang/String;
    .restart local v2    # "nm":I
    :pswitch_1
    const-string v3, "\u4e2d\u56fd\u79fb\u52a8"

    goto :goto_0

    .line 284
    :pswitch_2
    const-string v3, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 288
    :pswitch_3
    const-string v3, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0xb3b0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPreferedNetworkType()I
    .locals 5

    .prologue
    .line 759
    const/16 v1, 0x16

    .line 760
    .local v1, "type":I
    const-string v2, "WanDataController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredNetworkType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "mode":I
    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 763
    const/4 v0, 0x0

    .line 770
    :cond_0
    :goto_0
    return v0

    .line 764
    :cond_1
    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    .line 765
    const/4 v0, 0x1

    goto :goto_0

    .line 766
    :cond_2
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 767
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getRegNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSIMStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 377
    .local v0, "simstate":I
    if-nez v0, :cond_0

    .line 378
    const-string v1, "Unknown"

    .line 390
    :goto_0
    return-object v1

    .line 379
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 380
    const-string v1, "Absent"

    goto :goto_0

    .line 381
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 382
    const-string v1, "Pin Required"

    goto :goto_0

    .line 383
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 384
    const-string v1, "PUK Required"

    goto :goto_0

    .line 385
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 386
    const-string v1, "Network Locked"

    goto :goto_0

    .line 387
    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 388
    const-string v1, "Ready"

    goto :goto_0

    .line 390
    :cond_5
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public getSignalStrength()I
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/mifiservice/device/WanDataController;->last_signallevel:I

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/mifiservice/device/WanDataController;->getNetMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/mifiservice/device/WanDataController;->last_signallevel:I

    .line 367
    :cond_0
    :goto_0
    iget v0, p0, Lcom/mifiservice/device/WanDataController;->last_signallevel:I

    return v0

    .line 363
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/mifiservice/device/WanDataController;->last_signallevel:I

    goto :goto_0
.end method

.method public isChinaTelecom()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/mifiservice/device/WanDataController;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 325
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 327
    .local v2, "nm":I
    const v4, 0xb3b3

    if-eq v2, v4, :cond_0

    const v4, 0xb3b5

    if-eq v2, v4, :cond_0

    const v4, 0xb3bb

    if-ne v2, v4, :cond_1

    .line 328
    :cond_0
    const/4 v3, 0x1

    .line 330
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "nm":I
    :cond_1
    return v3
.end method

.method public registerData()V
    .locals 3

    .prologue
    .line 421
    new-instance v1, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;

    invoke-direct {v1, p0}, Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;-><init>(Lcom/mifiservice/device/WanDataController;)V

    .line 422
    .local v1, "mNetWorkReceiver":Lcom/mifiservice/device/WanDataController$NetWorkBroadcast;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 423
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/mifiservice/device/WanDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    return-void
.end method

.method sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "at"    # Ljava/lang/String;

    .prologue
    .line 606
    const-string v5, ""

    .line 607
    .local v5, "response":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modem_at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "command":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 610
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 611
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 613
    .local v2, "input":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 615
    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "temp":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 616
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "WanDataController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendAtBySmd error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 618
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 619
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public setImei(Ljava/lang/String;)Z
    .locals 3
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+WRIMEI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WanDataController;->sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;

    .line 802
    invoke-direct {p0, p1}, Lcom/mifiservice/device/WanDataController;->checkImeiByAt(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setMobileDataEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    goto :goto_0
.end method

.method public setPreferedNetworkType(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    .line 685
    const/16 v4, 0xc

    .line 686
    .local v4, "type":I
    const/4 v0, 0x2

    .line 687
    .local v0, "attype":I
    if-nez p1, :cond_1

    .line 688
    const/16 v4, 0xc

    .line 689
    const/16 v0, 0xc

    .line 690
    invoke-virtual {p0}, Lcom/mifiservice/device/WanDataController;->isChinaTelecom()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 691
    const/16 v4, 0xb

    .line 692
    const/16 v0, 0xb

    .line 702
    :cond_0
    :goto_0
    const-string v5, "WanDataController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreferredNetworkType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settings put global preferred_network_mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "command":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AT^SYSCONFIG="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",0,1,2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/mifiservice/device/WanDataController;->sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;

    .line 728
    return-void

    .line 694
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 695
    const/4 v4, 0x2

    .line 696
    const/16 v0, 0xe

    goto :goto_0

    .line 697
    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 698
    const/16 v4, 0xb

    .line 699
    const/16 v0, 0xb

    goto :goto_0

    .line 707
    .restart local v1    # "command":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "WanDataController"

    const-string v6, "settings put fail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPreferedNetworkTypeAtcmd(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 649
    const/4 v0, 0x2

    .line 650
    .local v0, "attype":I
    if-nez p1, :cond_2

    .line 651
    const/16 v0, 0xc

    .line 652
    invoke-virtual {p0}, Lcom/mifiservice/device/WanDataController;->isChinaTelecom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    const/16 v0, 0xb

    .line 661
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mifiservice/device/WanDataController;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    .line 663
    :cond_1
    const-string v3, "WanDataController"

    const-string v4, "setPreferedNetworkTypeAtcmd imsi is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_1
    return-void

    .line 655
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 656
    const/16 v0, 0xe

    goto :goto_0

    .line 657
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 658
    const/16 v0, 0xb

    goto :goto_0

    .line 666
    .restart local v1    # "imsi":Ljava/lang/String;
    :cond_4
    const-string v3, "WanDataController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreferedNetworkTypeAtcmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT^SYSCONFIG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",0,1,2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mifiservice/device/WanDataController;->sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public setUsbTethering(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 776
    iget-object v0, p0, Lcom/mifiservice/device/WanDataController;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setcfun(I)V
    .locals 3
    .param p1, "cfun"    # I

    .prologue
    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CFUN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mifiservice/device/WanDataController;->sendAtBySmd(Ljava/lang/String;)Ljava/lang/String;

    .line 645
    return-void
.end method
