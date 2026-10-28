.class Lorg/eclipse/jetty/util/IO$Singleton;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field static final __pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v1, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    sput-object v1, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .line 64
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
