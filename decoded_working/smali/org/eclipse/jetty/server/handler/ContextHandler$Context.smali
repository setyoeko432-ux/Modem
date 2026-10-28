.class public Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.super Ljava/lang/Object;
.source "ContextHandler.java"

# interfaces
.implements Ljavax/servlet/ServletContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# static fields
.field private static final __unimplmented:Ljava/lang/String; = "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"


# instance fields
.field protected _enabled:Z

.field protected _majorVersion:I

.field protected _minorVersion:I

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V
    .locals 1

    .prologue
    .line 1724
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    .line 1719
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    .line 1725
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Ljavax/servlet/FilterRegistration$Dynamic;"
        }
    .end annotation

    .prologue
    .line 2218
    .local p2, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 2232
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2233
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 2225
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2226
    const/4 v0, 0x0

    return-object v0
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2355
    .local p1, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v1, :cond_0

    .line 2356
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2360
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v0

    .line 2361
    .local v0, "e":Ljava/util/EventListener;
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 2362
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->restrictEventListener(Ljava/util/EventListener;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2368
    return-void

    .line 2364
    .end local v0    # "e":Ljava/util/EventListener;
    :catch_0
    move-exception v0

    .line 2366
    .local v0, "e":Ljavax/servlet/ServletException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 2329
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_0

    .line 2330
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 2334
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2335
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/Class;)V

    .line 2341
    return-void

    .line 2334
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2337
    :catch_0
    move-exception v1

    .line 2339
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 2346
    .local p1, "t":Ljava/util/EventListener;, "TT;"
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2348
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 2349
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->restrictEventListener(Ljava/util/EventListener;)V

    .line 2350
    return-void
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Ljavax/servlet/ServletRegistration$Dynamic;"
        }
    .end annotation

    .prologue
    .line 2239
    .local p2, "servletClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2240
    const/4 v0, 0x0

    return-object v0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 2253
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2254
    const/4 v0, 0x0

    return-object v0
.end method

.method public addServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 2246
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2260
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2261
    const/4 v0, 0x0

    return-object v0
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2375
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventListener;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 2377
    :catch_0
    move-exception v0

    .line 2379
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2381
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2267
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2268
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 1
    .param p1, "roleNames"    # [Ljava/lang/String;

    .prologue
    .line 2431
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2432
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2433
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 2434
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2438
    :cond_1
    return-void
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2081
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2082
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2083
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2084
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2081
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 2095
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2096
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2098
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 2099
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2095
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2102
    .restart local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 2103
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2104
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2106
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 2390
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->checkPermission(Ljava/security/Permission;)V

    .line 2391
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 21
    .param p1, "uripath"    # Ljava/lang/String;

    .prologue
    .line 1741
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    .local v7, "contexts":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/server/handler/ContextHandler;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v19

    const-class v20, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual/range {v19 .. v20}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v11

    .line 1743
    .local v11, "handlers":[Lorg/eclipse/jetty/server/Handler;
    const/16 v18, 0x0

    .line 1745
    .local v18, "matched_path":Ljava/lang/String;
    move-object v2, v11

    .local v2, "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    move v14, v12

    .end local v2    # "arr$":[Lorg/eclipse/jetty/server/Handler;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_b

    aget-object v10, v2, v14

    .line 1747
    .local v10, "handler":Lorg/eclipse/jetty/server/Handler;
    if-nez v10, :cond_1

    .line 1745
    .end local v14    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "i$":I
    move v14, v12

    .end local v12    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_0

    :cond_1
    move-object v5, v10

    .line 1749
    check-cast v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1750
    .local v5, "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 1752
    .local v6, "context_path":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1756
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 1758
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .end local v14    # "i$":I
    .restart local v12    # "i$":I
    move v13, v12

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .local v13, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v8, v3, v13

    .line 1761
    .local v8, "h1":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .end local v13    # "i$":I
    .restart local v12    # "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    aget-object v9, v4, v12

    .line 1762
    .local v9, "h2":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1764
    if-eqz v18, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 1766
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1767
    move-object/from16 v18, v6

    .line 1770
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1771
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1760
    .end local v9    # "h2":Ljava/lang/String;
    :cond_7
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto :goto_2

    .line 1777
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "h1":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .restart local v14    # "i$":I
    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 1779
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1780
    move-object/from16 v18, v6

    .line 1783
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1784
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1789
    .end local v5    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v6    # "context_path":Ljava/lang/String;
    .end local v10    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 1790
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v19, v0

    move v12, v14

    .line 1817
    .end local v14    # "i$":I
    .restart local v12    # "i$":I
    :goto_4
    return-object v19

    .line 1793
    .end local v12    # "i$":I
    .restart local v14    # "i$":I
    :cond_c
    const/16 v18, 0x0

    .line 1794
    move-object v2, v11

    .restart local v2    # "arr$":[Lorg/eclipse/jetty/server/Handler;
    array-length v15, v2

    .restart local v15    # "len$":I
    const/4 v12, 0x0

    .end local v14    # "i$":I
    .restart local v12    # "i$":I
    :goto_5
    if-ge v12, v15, :cond_13

    aget-object v10, v2, v12

    .line 1796
    .restart local v10    # "handler":Lorg/eclipse/jetty/server/Handler;
    if-nez v10, :cond_e

    .line 1794
    :cond_d
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_e
    move-object v5, v10

    .line 1798
    check-cast v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1799
    .restart local v5    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 1801
    .restart local v6    # "context_path":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    :cond_f
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1804
    :cond_10
    if-eqz v18, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    .line 1806
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1807
    move-object/from16 v18, v6

    .line 1810
    :cond_12
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1811
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1815
    .end local v5    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v6    # "context_path":Ljava/lang/String;
    .end local v10    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_14

    .line 1816
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v19, v0

    goto :goto_4

    .line 1817
    :cond_14
    const/16 v19, 0x0

    goto :goto_4
.end method

.method public getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2189
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2190
    const-string v0, ""

    .line 2192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSessionTrackingModes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2274
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEffectiveMajorVersion()I
    .locals 1

    .prologue
    .line 2397
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    return v0
.end method

.method public getEffectiveMinorVersion()I
    .locals 1

    .prologue
    .line 2403
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    return v0
.end method

.method public getEffectiveSessionTrackingModes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2281
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterRegistration(Ljava/lang/String;)Ljavax/servlet/FilterRegistration;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 2288
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/FilterRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2295
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2296
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2060
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;
    .locals 3

    .prologue
    .line 2419
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2420
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 1827
    const/4 v0, 0x3

    return v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1838
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-object v1

    .line 1840
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 1841
    .local v0, "mime":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_0

    .line 1842
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 1853
    const/4 v0, 0x0

    return v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1863
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1911
    if-nez p1, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return-object v3

    .line 1913
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1914
    const-string p1, "/"

    .line 1920
    :cond_2
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 1921
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_0

    .line 1923
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 1924
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1925
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1915
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    .line 1916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1928
    :catch_0
    move-exception v0

    .line 1930
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 8
    .param p1, "uriInContext"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1873
    if-nez p1, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-object v6

    .line 1876
    :cond_1
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1881
    const/4 v4, 0x0

    .line 1882
    .local v4, "query":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1883
    .local v3, "q":I
    const/16 v7, 0x3f

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 1885
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1886
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1889
    :cond_2
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1890
    .local v2, "pathInContext":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1892
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1893
    .local v5, "uri":Ljava/lang/String;
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 1894
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    new-instance v7, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v7, v0, v5, v2, v4}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 1897
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v2    # "pathInContext":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1899
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1940
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 1941
    .local v0, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1942
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 1943
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1955
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 1956
    .local v2, "url":Ljava/net/URL;
    if-nez v2, :cond_0

    .line 1964
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 1958
    .restart local v2    # "url":Ljava/net/URL;
    :cond_0
    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 1959
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1961
    .end local v1    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1963
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1975
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResourcePaths(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jetty/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jetty/server/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1996
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletContextName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2179
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2181
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 2182
    :cond_0
    return-object v0
.end method

.method public getServletNames()Ljava/util/Enumeration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2008
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletRegistration(Ljava/lang/String;)Ljavax/servlet/ServletRegistration;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 2302
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2303
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/ServletRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2309
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServlets()Ljava/util/Enumeration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2020
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;
    .locals 3

    .prologue
    .line 2316
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2447
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    return v0
.end method

.method public log(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2030
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2031
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2040
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2041
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2050
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2149
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2151
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2154
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    :cond_0
    monitor-exit p0

    return-void

    .line 2158
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2159
    .local v2, "old_value":Ljava/lang/Object;
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 2160
    if-eqz v2, :cond_0

    .line 2162
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2164
    new-instance v0, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v3, v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, v3, p1, v2}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2166
    .local v0, "event":Ljavax/servlet/ServletContextAttributeEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2167
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v3, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2149
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "old_value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2116
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2117
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2119
    .local v3, "old_value":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 2120
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 2124
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2126
    new-instance v0, Ljavax/servlet/ServletContextAttributeEvent;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v5, v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v3, :cond_1

    move-object v4, p2

    :goto_1
    invoke-direct {v0, v5, p1, v4}, Ljavax/servlet/ServletContextAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2128
    .local v0, "event":Ljavax/servlet/ServletContextAttributeEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2130
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextAttributeListener;

    .line 2132
    .local v2, "l":Ljavax/servlet/ServletContextAttributeListener;
    if-nez v3, :cond_2

    .line 2133
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V

    .line 2128
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2122
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2116
    .end local v3    # "old_value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v3    # "old_value":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    .line 2126
    goto :goto_1

    .line 2134
    .restart local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_2
    if-nez p2, :cond_3

    .line 2135
    :try_start_1
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V

    goto :goto_3

    .line 2137
    :cond_3
    invoke-interface {v2, v0}, Ljavax/servlet/ServletContextAttributeListener;->attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2140
    .end local v0    # "event":Ljavax/servlet/ServletContextAttributeEvent;
    .end local v1    # "i":I
    .end local v2    # "l":Ljavax/servlet/ServletContextAttributeListener;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public setEffectiveMajorVersion(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 2408
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_majorVersion:I

    .line 2409
    return-void
.end method

.method public setEffectiveMinorVersion(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 2413
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_minorVersion:I

    .line 2414
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2442
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->_enabled:Z

    .line 2443
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2206
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2207
    const/4 v0, 0x0

    .line 2209
    :goto_0
    return v0

    .line 2208
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getInitParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setJspConfigDescriptor(Ljavax/servlet/descriptor/JspConfigDescriptor;)V
    .locals 0
    .param p1, "d"    # Ljavax/servlet/descriptor/JspConfigDescriptor;

    .prologue
    .line 2426
    return-void
.end method

.method public setSessionTrackingModes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2323
    .local p1, "sessionTrackingModes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Unimplemented - use org.eclipse.jetty.servlet.ServletContextHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2324
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServletContext@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->this$0:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
