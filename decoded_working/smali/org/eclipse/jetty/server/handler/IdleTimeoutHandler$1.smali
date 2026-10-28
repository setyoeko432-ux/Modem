.class Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;
.super Ljava/lang/Object;
.source "IdleTimeoutHandler.java"

# interfaces
.implements Ljavax/servlet/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;

.field final synthetic val$endp:Lorg/eclipse/jetty/io/EndPoint;

.field final synthetic val$idle_timeout:I


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;Lorg/eclipse/jetty/io/EndPoint;I)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->val$endp:Lorg/eclipse/jetty/io/EndPoint;

    iput p3, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->val$idle_timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljavax/servlet/AsyncEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->val$endp:Lorg/eclipse/jetty/io/EndPoint;

    iget v1, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->val$idle_timeout:I

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 128
    return-void
.end method

.method public onError(Ljavax/servlet/AsyncEvent;)V
    .locals 2
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->val$endp:Lorg/eclipse/jetty/io/EndPoint;

    iget v1, p0, Lorg/eclipse/jetty/server/handler/IdleTimeoutHandler$1;->val$idle_timeout:I

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 122
    return-void
.end method

.method public onStartAsync(Ljavax/servlet/AsyncEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method

.method public onTimeout(Ljavax/servlet/AsyncEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/servlet/AsyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method
