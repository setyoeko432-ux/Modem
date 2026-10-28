.class public Lorg/eclipse/jetty/servlet/Invoker;
.super Ljavax/servlet/http/HttpServlet;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _invokerEntry:Ljava/util/Map$Entry;

.field private _nonContextServlets:Z

.field private _parameters:Ljava/util/Map;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/eclipse/jetty/servlet/Invoker;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 245
    return-void
.end method

.method private getHolder([Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3
    .param p1, "holders"    # [Lorg/eclipse/jetty/servlet/ServletHolder;
    .param p2, "servlet"    # Ljava/lang/String;

    .prologue
    .line 301
    if-nez p1, :cond_1

    .line 302
    const/4 v0, 0x0

    .line 312
    :cond_0
    return-object v0

    .line 304
    :cond_1
    const/4 v0, 0x0

    .line 305
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 307
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    aget-object v0, p1, v1

    .line 305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 83
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    .line 84
    .local v0, "config":Ljavax/servlet/ServletContext;
    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .end local v0    # "config":Ljavax/servlet/ServletContext;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 86
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 87
    .local v2, "handler":Lorg/eclipse/jetty/server/Handler;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v6, v2, Lorg/eclipse/jetty/servlet/ServletHandler;

    if-nez v6, :cond_0

    instance-of v6, v2, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v6, :cond_0

    .line 88
    check-cast v2, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    .end local v2    # "handler":Lorg/eclipse/jetty/server/Handler;
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .restart local v2    # "handler":Lorg/eclipse/jetty/server/Handler;
    goto :goto_0

    .line 89
    :cond_0
    check-cast v2, Lorg/eclipse/jetty/servlet/ServletHandler;

    .end local v2    # "handler":Lorg/eclipse/jetty/server/Handler;
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 90
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 91
    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, "param":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/servlet/Invoker;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "lvalue":Ljava/lang/String;
    const-string v6, "nonContextServlets"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "t"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_nonContextServlets:Z

    .line 100
    :cond_1
    const-string v6, "verbose"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "t"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_verbose:Z

    goto :goto_1

    :cond_2
    move v6, v8

    .line 98
    goto :goto_2

    :cond_3
    move v6, v8

    .line 102
    goto :goto_3

    .line 106
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-nez v6, :cond_5

    .line 107
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    .line 108
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 111
    .end local v3    # "lvalue":Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 19
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v4, 0x0

    .line 119
    .local v4, "included":Z
    const-string v1, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, "servlet_path":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 121
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v6

    .line 124
    :goto_0
    const-string v1, "javax.servlet.include.path_info"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 125
    .local v7, "path_info":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 126
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v7

    .line 129
    :cond_0
    move-object v5, v7

    .line 130
    .local v5, "servlet":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 132
    :cond_1
    const/16 v1, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 242
    :goto_1
    return-void

    .line 123
    .end local v5    # "servlet":Ljava/lang/String;
    .end local v7    # "path_info":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 137
    .restart local v5    # "servlet":Ljava/lang/String;
    .restart local v7    # "path_info":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_5

    const/4 v13, 0x1

    .line 138
    .local v13, "i0":I
    :goto_2
    const/16 v1, 0x2f

    invoke-virtual {v5, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 139
    .local v14, "i1":I
    if-gez v14, :cond_6

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v12

    .line 143
    .local v12, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lorg/eclipse/jetty/servlet/Invoker;->getHolder([Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v11

    .line 145
    .local v11, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v11, :cond_7

    .line 149
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding servlet mapping for named servlet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_4
    new-instance v15, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v15}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 152
    .local v15, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v15, v5}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v1

    const-class v3, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v1, v15, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletMapping;

    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 228
    .end local v15    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    :goto_4
    if-eqz v11, :cond_11

    .line 230
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/eclipse/jetty/server/Request;

    if-eqz v1, :cond_10

    move-object/from16 v1, p1

    check-cast v1, Lorg/eclipse/jetty/server/Request;

    move-object v8, v1

    .line 231
    .local v8, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_5
    new-instance v1, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;-><init>(Lorg/eclipse/jetty/servlet/Invoker;Ljavax/servlet/http/HttpServletRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v8, v1, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_1

    .line 137
    .end local v8    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .end local v11    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v12    # "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v13    # "i0":I
    .end local v14    # "i1":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 139
    .restart local v13    # "i0":I
    .restart local v14    # "i1":I
    :cond_6
    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 159
    .restart local v11    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    .restart local v12    # "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_7
    const-string v1, ".class"

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 161
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 163
    :cond_9
    const/16 v1, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1

    .line 167
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    monitor-enter v2

    .line 170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    .line 173
    invoke-static {v6, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 174
    .local v16, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v10

    .line 176
    .local v10, "entry":Ljava/util/Map$Entry;
    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    invoke-interface {v10, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 179
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    move-object v11, v0

    .line 225
    :cond_b
    :goto_6
    monitor-exit v2

    goto :goto_4

    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v16    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    .restart local v10    # "entry":Ljava/util/Map$Entry;
    .restart local v16    # "path":Ljava/lang/String;
    :cond_c
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 185
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Making new servlet="

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, " with path="

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/*"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "/*"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v11

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-eqz v1, :cond_e

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-virtual {v11, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameters(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_e
    :try_start_2
    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_nonContextServlets:Z

    if-nez v1, :cond_f

    .line 201
    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v17

    .line 203
    .local v17, "s":Ljavax/servlet/Servlet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-eq v1, v3, :cond_f

    .line 208
    :try_start_4
    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    :goto_7
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dynamic servlet "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, " not loaded from context "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v1, Ljavax/servlet/UnavailableException;

    const-string v3, "Not in context"

    invoke-direct {v1, v3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v17    # "s":Ljavax/servlet/Servlet;
    :catch_0
    move-exception v9

    .line 194
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 195
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v17    # "s":Ljavax/servlet/Servlet;
    :catch_1
    move-exception v9

    .line 212
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v9}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 222
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "s":Ljavax/servlet/Servlet;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/eclipse/jetty/servlet/Invoker;->_verbose:Z

    if-eqz v1, :cond_b

    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 223
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dynamic load \'"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "\' at "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v1, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 230
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v16    # "path":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v8

    goto/16 :goto_5

    .line 237
    :cond_11
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find holder for servlet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const/16 v1, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1
.end method
