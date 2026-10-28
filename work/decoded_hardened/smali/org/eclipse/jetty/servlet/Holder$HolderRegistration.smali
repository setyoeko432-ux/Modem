.class public Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.super Ljava/lang/Object;
.source "Holder.java"

# interfaces
.implements Ljavax/servlet/Registration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderRegistration"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/Holder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/Holder;)V
    .locals 0

    .prologue
    .line 327
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncSupported(Z)V
    .locals 1
    .param p1, "isAsyncSupported"    # Z

    .prologue
    .line 331
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->setAsyncSupported(Z)V

    .line 333
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 337
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_0
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "init parameter name required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    if-nez p2, :cond_1

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-null value required for init parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    .line 372
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    .local p1, "initParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 382
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 383
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "init parameter name required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 386
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "non-null value required for init parameter "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 390
    if-nez v0, :cond_3

    .line 391
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 392
    .restart local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-eqz v0, :cond_5

    .line 398
    .end local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 397
    .restart local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 398
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method
