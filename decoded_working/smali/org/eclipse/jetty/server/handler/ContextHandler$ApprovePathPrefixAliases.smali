.class public Lorg/eclipse/jetty/server/handler/ContextHandler$ApprovePathPrefixAliases;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApprovePathPrefixAliases"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 2531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2534
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "ApprovePathPrefixAliases is not safe for production"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2535
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 2539
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2540
    .local v0, "slash":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2541
    :cond_0
    const/4 v2, 0x0

    .line 2543
    :goto_0
    return v2

    .line 2542
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2543
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
