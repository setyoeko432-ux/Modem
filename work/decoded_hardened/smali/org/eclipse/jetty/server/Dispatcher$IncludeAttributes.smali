.class Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncludeAttributes"
.end annotation


# instance fields
.field final _attr:Lorg/eclipse/jetty/util/Attributes;

.field _contextPath:Ljava/lang/String;

.field _pathInfo:Ljava/lang/String;

.field _query:Ljava/lang/String;

.field _requestURI:Ljava/lang/String;

.field _servletPath:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/Dispatcher;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V
    .locals 0
    .param p2, "attributes"    # Lorg/eclipse/jetty/util/Attributes;

    .prologue
    .line 456
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    .line 458
    return-void
.end method


# virtual methods
.method public clearAttributes()V
    .locals 1

    .prologue
    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 467
    const-string v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 477
    :goto_0
    return-object v0

    .line 468
    :cond_0
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 469
    :cond_1
    const-string v0, "javax.servlet.include.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    .line 470
    :cond_2
    const-string v0, "javax.servlet.include.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    .line 471
    :cond_3
    const-string v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    .line 473
    :cond_4
    const-string v0, "javax.servlet.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 474
    const/4 v0, 0x0

    goto :goto_0

    .line 477
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 483
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 484
    .local v2, "set":Ljava/util/HashSet;
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 485
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 488
    .local v1, "name":Ljava/lang/String;
    const-string v3, "javax.servlet.include."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v3}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 494
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 495
    const-string v3, "javax.servlet.include.path_info"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    :goto_1
    const-string v3, "javax.servlet.include.request_uri"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v3, "javax.servlet.include.servlet_path"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v3, "javax.servlet.include.context_path"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 502
    const-string v3, "javax.servlet.include.query_string"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    return-object v3

    .line 497
    :cond_3
    const-string v3, "javax.servlet.include.path_info"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 504
    :cond_4
    const-string v3, "javax.servlet.include.query_string"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 513
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->this$0:Lorg/eclipse/jetty/server/Dispatcher;

    invoke-static {v0}, Lorg/eclipse/jetty/server/Dispatcher;->access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "javax.servlet."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 515
    const-string v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 529
    :goto_0
    return-void

    .line 516
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    .line 517
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 518
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v0, "javax.servlet.include.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    .line 519
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v0, "javax.servlet.include.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    .line 520
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    if-nez p2, :cond_5

    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 525
    :cond_6
    if-nez p2, :cond_7

    .line 526
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INCLUDE+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_attr:Lorg/eclipse/jetty/util/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
