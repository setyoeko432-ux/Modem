.class Lorg/eclipse/jetty/server/AbstractHttpConnection$1;
.super Ljava/io/PrintWriter;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Ljava/io/Writer;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Writer;

    .prologue
    .line 377
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 380
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 391
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;->setError()V

    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
