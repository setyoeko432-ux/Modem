.class final Lorg/eclipse/jetty/server/session/AbstractSessionManager$1;
.super Ljava/lang/Object;
.source "AbstractSessionManager.java"

# interfaces
.implements Ljavax/servlet/http/HttpSessionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method
