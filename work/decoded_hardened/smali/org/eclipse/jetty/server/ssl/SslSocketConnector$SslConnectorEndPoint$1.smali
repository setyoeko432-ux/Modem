.class Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;
.super Ljava/lang/Object;
.source "SslSocketConnector.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field handshook:Z

.field final synthetic this$1:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

.field final synthetic val$ssl:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    .prologue
    .line 649
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->this$1:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    iput-object p2, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->handshook:Z

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 4
    .param p1, "event"    # Ljavax/net/ssl/HandshakeCompletedEvent;

    .prologue
    .line 653
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->handshook:Z

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->this$1:Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    iget-object v1, v1, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-static {v1}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$000(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;)Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL renegotiate denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 662
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;->handshook:Z

    goto :goto_0
.end method
