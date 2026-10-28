.class public Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/HashSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClassLoadingObjectInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    .line 623
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    .line 624
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    .line 617
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 618
    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "cl"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 636
    :goto_0
    return-object v1

    .line 634
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
