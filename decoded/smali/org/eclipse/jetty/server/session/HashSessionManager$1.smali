.class Lorg/eclipse/jetty/server/session/HashSessionManager$1;
.super Ljava/util/TimerTask;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/session/HashSessionManager;->setSavePeriod(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$1;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/session/HashSessionManager;->saveSessions(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
