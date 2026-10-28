.class public abstract Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "AbstractHandlerContainer.java"

# interfaces
.implements Lorg/eclipse/jetty/server/HandlerContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 40
    return-void
.end method

.method public static findContainerOf(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/Class;Lorg/eclipse/jetty/server/Handler;)Lorg/eclipse/jetty/server/HandlerContainer;
    .locals 13
    .param p0, "root"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "handler"    # Lorg/eclipse/jetty/server/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jetty/server/HandlerContainer;",
            ">(",
            "Lorg/eclipse/jetty/server/HandlerContainer;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/eclipse/jetty/server/Handler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v11, 0x0

    .line 96
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v5, v11

    .line 114
    :cond_1
    :goto_0
    return-object v5

    .line 99
    :cond_2
    invoke-interface {p0, p1}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 100
    .local v2, "branches":[Lorg/eclipse/jetty/server/Handler;
    if-eqz v2, :cond_4

    .line 102
    move-object v0, v2

    .local v0, "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v0    # "arr$":[Lorg/eclipse/jetty/server/Handler;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v6, v0, v8

    .local v6, "h":Lorg/eclipse/jetty/server/Handler;
    move-object v5, v6

    .line 104
    check-cast v5, Lorg/eclipse/jetty/server/HandlerContainer;

    .line 105
    .local v5, "container":Lorg/eclipse/jetty/server/HandlerContainer;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    .line 106
    .local v4, "candidates":[Lorg/eclipse/jetty/server/Handler;
    if-eqz v4, :cond_3

    .line 108
    move-object v1, v4

    .local v1, "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_3

    aget-object v3, v1, v7

    .line 109
    .local v3, "c":Lorg/eclipse/jetty/server/Handler;
    if-eq v3, p2, :cond_1

    .line 108
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 102
    .end local v1    # "arr$":[Lorg/eclipse/jetty/server/Handler;
    .end local v3    # "c":Lorg/eclipse/jetty/server/Handler;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    :cond_3
    add-int/lit8 v7, v8, 0x1

    .restart local v7    # "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .end local v4    # "candidates":[Lorg/eclipse/jetty/server/Handler;
    .end local v5    # "container":Lorg/eclipse/jetty/server/HandlerContainer;, "TT;"
    .end local v6    # "h":Lorg/eclipse/jetty/server/Handler;
    .end local v8    # "i$":I
    :cond_4
    move-object v5, v11

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->dumpThis(Ljava/lang/Appendable;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 122
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .param p1, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "byClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object p1
.end method

.method protected expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;
    .param p2, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/server/Handler;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<",
            "Lorg/eclipse/jetty/server/Handler;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "byClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/eclipse/jetty/server/Handler;>;"
    if-nez p1, :cond_0

    move-object v2, p2

    .line 90
    .end local p1    # "handler":Lorg/eclipse/jetty/server/Handler;
    .end local p2    # "list":Ljava/lang/Object;
    .local v2, "list":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 78
    .end local v2    # "list":Ljava/lang/Object;
    .restart local p1    # "handler":Lorg/eclipse/jetty/server/Handler;
    .restart local p2    # "list":Ljava/lang/Object;
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    :cond_1
    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 81
    :cond_2
    instance-of v3, p1, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;

    if-eqz v3, :cond_4

    .line 82
    check-cast p1, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;

    .end local p1    # "handler":Lorg/eclipse/jetty/server/Handler;
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    :goto_1
    move-object v2, p2

    .line 90
    .end local p2    # "list":Ljava/lang/Object;
    .restart local v2    # "list":Ljava/lang/Object;
    goto :goto_0

    .line 83
    .end local v2    # "list":Ljava/lang/Object;
    .restart local p1    # "handler":Lorg/eclipse/jetty/server/Handler;
    .restart local p2    # "list":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Lorg/eclipse/jetty/server/HandlerContainer;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 85
    check-cast v0, Lorg/eclipse/jetty/server/HandlerContainer;

    .line 86
    .local v0, "container":Lorg/eclipse/jetty/server/HandlerContainer;
    if-nez p3, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 87
    .local v1, "handlers":[Lorg/eclipse/jetty/server/Handler;
    :goto_2
    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/LazyList;->addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 86
    .end local v1    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    :cond_5
    invoke-interface {v0, p3}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    goto :goto_2
.end method

.method public getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jetty/server/Handler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "byclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "list":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/Handler;

    goto :goto_0
.end method

.method public getChildHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v1, v1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "list":Ljava/lang/Object;
    const-class v1, Lorg/eclipse/jetty/server/Handler;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/server/Handler;

    check-cast v1, [Lorg/eclipse/jetty/server/Handler;

    return-object v1
.end method

.method public getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/eclipse/jetty/server/Handler;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "byclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "list":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/server/Handler;

    check-cast v1, [Lorg/eclipse/jetty/server/Handler;

    return-object v1
.end method
