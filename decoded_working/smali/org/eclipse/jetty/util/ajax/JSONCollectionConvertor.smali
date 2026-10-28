.class public Lorg/eclipse/jetty/util/ajax/JSONCollectionConvertor;
.super Ljava/lang/Object;
.source "JSONCollectionConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v2, "class"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 40
    .local v0, "result":Ljava/util/Collection;
    const-string v2, "list"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object v0

    .line 43
    .end local v0    # "result":Ljava/util/Collection;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "x":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 46
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "x":Ljava/lang/Exception;
    throw v1

    .line 47
    .restart local v1    # "x":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/eclipse/jetty/util/ajax/JSON$Output;

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 32
    const-string v0, "list"

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method
