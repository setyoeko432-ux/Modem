.class Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CLDump"
.end annotation


# instance fields
.field final _loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2457
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    .line 2458
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2462
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 6
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2467
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const-string v3, "\n"

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2469
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_1

    .line 2471
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2472
    .local v0, "parent":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 2474
    instance-of v2, v0, Lorg/eclipse/jetty/util/component/Dumpable;

    if-nez v2, :cond_0

    .line 2475
    new-instance v1, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;

    check-cast v0, Ljava/lang/ClassLoader;

    .end local v0    # "parent":Ljava/lang/ClassLoader;
    invoke-direct {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;-><init>(Ljava/lang/ClassLoader;)V

    .local v1, "parent":Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;
    move-object v0, v1

    .line 2477
    .end local v1    # "parent":Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    instance-of v2, v2, Ljava/net/URLClassLoader;

    if-eqz v2, :cond_2

    .line 2478
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Collection;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;->_loader:Ljava/lang/ClassLoader;

    check-cast v2, Ljava/net/URLClassLoader;

    invoke-virtual {v2}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {p1, p2, v3}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 2483
    :cond_1
    :goto_0
    return-void

    .line 2480
    :cond_2
    new-array v2, v5, [Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1, p2, v2}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    goto :goto_0
.end method
