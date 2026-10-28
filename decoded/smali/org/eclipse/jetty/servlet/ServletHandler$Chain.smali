.class Lorg/eclipse/jetty/servlet/ServletHandler$Chain;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Ljavax/servlet/FilterChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Chain"
.end annotation


# instance fields
.field final _baseRequest:Lorg/eclipse/jetty/server/Request;

.field final _chain:Ljava/lang/Object;

.field _filter:I

.field final _servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 1
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "filters"    # Ljava/lang/Object;
    .param p4, "servletHolder"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 1527
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    .line 1528
    iput-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    .line 1529
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    .line 1530
    iput-object p4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1531
    return-void
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 9
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1537
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1538
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFilter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1541
    :cond_0
    iget v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1543
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    iget v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_filter:I

    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1544
    .local v2, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1545
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1546
    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v1

    .line 1548
    .local v1, "filter":Ljavax/servlet/Filter;
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1550
    :cond_2
    invoke-interface {v1, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 1584
    .end local v1    # "filter":Ljavax/servlet/Filter;
    .end local v2    # "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :goto_0
    return-void

    .line 1556
    .restart local v1    # "filter":Ljavax/servlet/Filter;
    .restart local v2    # "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 1557
    invoke-interface {v1, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v5, v8}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    throw v4

    .end local v1    # "filter":Ljavax/servlet/Filter;
    .end local v2    # "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    :cond_4
    move-object v3, p1

    .line 1569
    check-cast v3, Ljavax/servlet/http/HttpServletRequest;

    .line 1570
    .local v3, "srequest":Ljavax/servlet/http/HttpServletRequest;
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v4, :cond_6

    .line 1572
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1573
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1574
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_baseRequest:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4, v5, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    .line 1576
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1577
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {v4, v3, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 1580
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_7
    instance-of v4, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v4, :cond_8

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    move-object v0, p1

    .line 1581
    .local v0, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {v4, v5, v0, v3, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 1580
    .end local v0    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_8
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1590
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1592
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_chain:Ljava/lang/Object;

    invoke-static {v3, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1593
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1596
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
