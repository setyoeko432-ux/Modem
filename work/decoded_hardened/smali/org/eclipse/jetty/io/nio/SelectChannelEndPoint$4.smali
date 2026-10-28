.class Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;
.super Ljava/io/InterruptedIOException;
.source "SelectChannelEndPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->blockWritable(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

.field final synthetic val$e:Ljava/lang/InterruptedException;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;Ljava/lang/InterruptedException;)V
    .locals 1

    .prologue
    .line 505
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;->this$0:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;->val$e:Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;->val$e:Ljava/lang/InterruptedException;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
