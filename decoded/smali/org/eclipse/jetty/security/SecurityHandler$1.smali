.class Lorg/eclipse/jetty/security/SecurityHandler$1;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljavax/servlet/http/HttpSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/security/SecurityHandler;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/security/SecurityHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/security/SecurityHandler;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler$1;->this$0:Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 5
    .param p1, "se"    # Ljavax/servlet/http/HttpSessionEvent;

    .prologue
    .line 311
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 312
    .local v0, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    .line 315
    .local v1, "request":Lorg/eclipse/jetty/server/Request;
    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p1}, Ljavax/servlet/http/HttpSessionEvent;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v2

    const-string v3, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V
    .locals 0
    .param p1, "se"    # Ljavax/servlet/http/HttpSessionEvent;

    .prologue
    .line 306
    return-void
.end method
