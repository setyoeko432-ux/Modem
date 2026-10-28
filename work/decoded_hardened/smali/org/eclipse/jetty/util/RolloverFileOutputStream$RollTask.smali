.class Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;
.super Ljava/util/TimerTask;
.source "RolloverFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/RolloverFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/RolloverFileOutputStream;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/util/RolloverFileOutputStream;
    .param p2, "x1"    # Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;-><init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-static {v1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->access$100(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V

    .line 330
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$RollTask;->this$0:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-static {v1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->access$200(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
