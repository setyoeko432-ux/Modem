.class public Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/servlet/ServletRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiPartCleanerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V
    .locals 5
    .param p1, "sre"    # Ljavax/servlet/ServletRequestEvent;

    .prologue
    .line 146
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v3

    const-string v4, "org.eclipse.multiPartInputStream"

    invoke-interface {v3, v4}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 147
    .local v2, "mpis":Lorg/eclipse/jetty/util/MultiPartInputStream;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletRequest()Ljavax/servlet/ServletRequest;

    move-result-object v3

    const-string v4, "org.eclipse.multiPartContext"

    invoke-interface {v3, v4}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 152
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiPartInputStream;->deleteParts()V
    :try_end_0
    .catch Lorg/eclipse/jetty/util/MultiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lorg/eclipse/jetty/util/MultiException;
    invoke-virtual {p1}, Ljavax/servlet/ServletRequestEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v3

    const-string v4, "Errors deleting multipart tmp files"

    invoke-interface {v3, v4, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestInitialized(Ljavax/servlet/ServletRequestEvent;)V
    .locals 0
    .param p1, "sre"    # Ljavax/servlet/ServletRequestEvent;

    .prologue
    .line 170
    return-void
.end method
