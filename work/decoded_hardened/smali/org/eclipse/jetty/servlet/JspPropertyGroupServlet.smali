.class public Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;
.super Ljavax/servlet/GenericServlet;
.source "JspPropertyGroupServlet.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

.field private static final serialVersionUID:J = 0x33185253adc90871L


# instance fields
.field private final _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private final _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _starJspMapped:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Lorg/eclipse/jetty/servlet/ServletHandler;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler;
    .param p2, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;

    .prologue
    .line 57
    invoke-direct {p0}, Ljavax/servlet/GenericServlet;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 59
    iput-object p2, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 60
    return-void
.end method


# virtual methods
.method public init()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v7, "jsp"

    .line 66
    .local v7, "jsp_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    const-string v16, "*.jsp"

    invoke-virtual/range {v15 .. v16}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v14

    .line 67
    .local v14, "servlet_mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    if-eqz v14, :cond_3

    .line 69
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_starJspMapped:Z

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v15}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v11

    .line 73
    .local v11, "mappings":[Lorg/eclipse/jetty/servlet/ServletMapping;
    move-object v1, v11

    .local v1, "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v1    # "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v10, v1, v6

    .line 75
    .local v10, "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v10}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "paths":[Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 78
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v12, v2, v5

    .line 80
    .local v12, "path":Ljava/lang/String;
    const-string v15, "*.jsp"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

    invoke-virtual {v10}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 81
    move-object v14, v10

    .line 78
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 73
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 86
    .end local v10    # "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v13    # "paths":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v14}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v7

    .line 88
    .end local v6    # "i$":I
    .end local v11    # "mappings":[Lorg/eclipse/jetty/servlet/ServletMapping;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v15, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 90
    const-string v4, "default"

    .line 91
    .local v4, "dft_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v3

    .line 92
    .local v3, "default_mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v4

    .line 94
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v15, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 95
    return-void
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 7
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "request":Ljavax/servlet/http/HttpServletRequest;
    instance-of v5, p1, Ljavax/servlet/http/HttpServletRequest;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 102
    check-cast v2, Ljavax/servlet/http/HttpServletRequest;

    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, "servletPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, "pathInfo":Ljava/lang/String;
    const-string v5, "javax.servlet.include.request_uri"

    invoke-interface {v2, v5}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 110
    const-string v5, "javax.servlet.include.servlet_path"

    invoke-interface {v2, v5}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "servletPath":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 111
    .restart local v4    # "servletPath":Ljava/lang/String;
    const-string v5, "javax.servlet.include.path_info"

    invoke-interface {v2, v5}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pathInfo":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 112
    .restart local v1    # "pathInfo":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 114
    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "pathInContext":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 144
    :goto_1
    return-void

    .line 104
    .end local v0    # "pathInContext":Ljava/lang/String;
    .end local v1    # "pathInfo":Ljava/lang/String;
    .end local v4    # "servletPath":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljavax/servlet/ServletException;

    const-string v6, "Request not HttpServletRequest"

    invoke-direct {v5, v6}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    .restart local v1    # "pathInfo":Ljava/lang/String;
    .restart local v4    # "servletPath":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 130
    .restart local v0    # "pathInContext":Ljava/lang/String;
    :cond_3
    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_starJspMapped:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jsp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 138
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_dftServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 141
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;->_jspServlet:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1
.end method
