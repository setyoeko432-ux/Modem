.class public Lorg/eclipse/jetty/server/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;,
        Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    }
.end annotation


# static fields
.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field private final _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private final _dQuery:Ljava/lang/String;

.field private final _named:Ljava/lang/String;

.field private final _path:Ljava/lang/String;

.field private final _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "contextHandler"    # Lorg/eclipse/jetty/server/handler/ContextHandler;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 91
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contextHandler"    # Lorg/eclipse/jetty/server/handler/ContextHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "pathInContext"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 75
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/Dispatcher;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    return-object v0
.end method

.method private commitResponse(Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/Request;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->isWriting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->close()V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 319
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0
.end method


# virtual methods
.method public error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/DispatcherType;)V

    .line 113
    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Ljavax/servlet/DispatcherType;->FORWARD:Ljavax/servlet/DispatcherType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/DispatcherType;)V

    .line 104
    return-void
.end method

.method protected forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/DispatcherType;)V
    .locals 22
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "dispatch"    # Ljavax/servlet/DispatcherType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, p1

    check-cast v19, Lorg/eclipse/jetty/server/Request;

    move-object/from16 v5, v19

    .line 203
    .local v5, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_0
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v6

    .line 204
    .local v6, "base_response":Lorg/eclipse/jetty/server/Response;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 205
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 208
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/servlet/http/HttpServletRequest;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 209
    new-instance v17, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .local v17, "request":Ljavax/servlet/ServletRequest;
    move-object/from16 p1, v17

    .line 210
    .end local v17    # "request":Ljavax/servlet/ServletRequest;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/servlet/http/HttpServletResponse;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 211
    new-instance v18, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    .local v18, "response":Ljavax/servlet/ServletResponse;
    move-object/from16 p2, v18

    .line 213
    .end local v18    # "response":Ljavax/servlet/ServletResponse;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v9

    .line 214
    .local v9, "old_handled":Z
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v15

    .line 215
    .local v15, "old_uri":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "old_context_path":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, "old_servlet_path":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, "old_path_info":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v12

    .line 219
    .local v12, "old_query":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v7

    .line 220
    .local v7, "old_attr":Lorg/eclipse/jetty/util/Attributes;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v14

    .line 221
    .local v14, "old_type":Ljavax/servlet/DispatcherType;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v10

    .line 225
    .local v10, "old_params":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v20, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_2
    :goto_1
    invoke-virtual {v5, v9}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 285
    invoke-virtual {v5, v15}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v5, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5, v7}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 290
    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 291
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v5, v14}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 294
    return-void

    .line 202
    .end local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .end local v6    # "base_response":Lorg/eclipse/jetty/server/Response;
    .end local v7    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .end local v8    # "old_context_path":Ljava/lang/String;
    .end local v9    # "old_handled":Z
    .end local v10    # "old_params":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v11    # "old_path_info":Ljava/lang/String;
    .end local v12    # "old_query":Ljava/lang/String;
    .end local v13    # "old_servlet_path":Ljava/lang/String;
    .end local v14    # "old_type":Ljavax/servlet/DispatcherType;
    .end local v15    # "old_uri":Ljava/lang/String;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_3
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    goto/16 :goto_0

    .line 234
    .restart local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local v6    # "base_response":Lorg/eclipse/jetty/server/Response;
    .restart local v7    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .restart local v8    # "old_context_path":Ljava/lang/String;
    .restart local v9    # "old_handled":Z
    .restart local v10    # "old_params":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .restart local v11    # "old_path_info":Ljava/lang/String;
    .restart local v12    # "old_query":Ljava/lang/String;
    .restart local v13    # "old_servlet_path":Ljava/lang/String;
    .restart local v14    # "old_type":Ljavax/servlet/DispatcherType;
    .restart local v15    # "old_uri":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 235
    .local v16, "query":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 238
    if-nez v10, :cond_5

    .line 240
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 241
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v10

    .line 244
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->mergeQueryString(Ljava/lang/String;)V

    .line 247
    :cond_6
    new-instance v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 253
    .local v4, "attr":Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    const-string v19, "javax.servlet.forward.request_uri"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 255
    const-string v19, "javax.servlet.forward.path_info"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 256
    const-string v19, "javax.servlet.forward.query_string"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 257
    const-string v19, "javax.servlet.forward.request_uri"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 258
    const-string v19, "javax.servlet.forward.context_path"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 259
    const-string v19, "javax.servlet.forward.servlet_path"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    .line 270
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 272
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v21, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    move-object/from16 v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 278
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v19

    if-nez v19, :cond_2

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/eclipse/jetty/server/Dispatcher;->commitResponse(Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 284
    .end local v4    # "attr":Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    .end local v16    # "query":Ljava/lang/String;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :catchall_0
    move-exception v19

    invoke-virtual {v5, v9}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 285
    invoke-virtual {v5, v15}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v5, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5, v7}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 290
    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 291
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v5, v14}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    throw v19

    .line 263
    .restart local v4    # "attr":Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    .restart local v16    # "query":Ljava/lang/String;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_7
    :try_start_2
    iput-object v11, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 264
    iput-object v12, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 265
    iput-object v15, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 266
    iput-object v8, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 267
    iput-object v13, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 20
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, p1

    check-cast v18, Lorg/eclipse/jetty/server/Request;

    move-object/from16 v5, v18

    .line 124
    .local v5, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/servlet/http/HttpServletRequest;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 125
    new-instance v15, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .local v15, "request":Ljavax/servlet/ServletRequest;
    move-object/from16 p1, v15

    .line 126
    .end local v15    # "request":Ljavax/servlet/ServletRequest;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/servlet/http/HttpServletResponse;

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 127
    new-instance v16, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    .local v16, "response":Ljavax/servlet/ServletResponse;
    move-object/from16 p2, v16

    .line 132
    .end local v16    # "response":Ljavax/servlet/ServletResponse;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v12

    .line 133
    .local v12, "old_type":Ljavax/servlet/DispatcherType;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v10

    .line 134
    .local v10, "old_attr":Lorg/eclipse/jetty/util/Attributes;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v11

    .line 137
    .local v11, "old_params":Lorg/eclipse/jetty/util/MultiMap;
    :try_start_0
    sget-object v18, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 138
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->include()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v19, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_1
    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 189
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 190
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 191
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 193
    return-void

    .line 121
    .end local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .end local v10    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .end local v11    # "old_params":Lorg/eclipse/jetty/util/MultiMap;
    .end local v12    # "old_type":Ljavax/servlet/DispatcherType;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_2
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    goto :goto_0

    .line 143
    .restart local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local v10    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .restart local v11    # "old_params":Lorg/eclipse/jetty/util/MultiMap;
    .restart local v12    # "old_type":Ljavax/servlet/DispatcherType;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 145
    .local v14, "query":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 148
    if-nez v11, :cond_4

    .line 150
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 151
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v11

    .line 154
    :cond_4
    new-instance v13, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v13}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 155
    .local v13, "parameters":Lorg/eclipse/jetty/util/MultiMap;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v13, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 157
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 160
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 161
    .local v8, "iter":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 163
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 164
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 166
    .local v17, "values":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 167
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v9, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 170
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "i":I
    .end local v8    # "iter":Ljava/util/Iterator;
    .end local v9    # "name":Ljava/lang/String;
    .end local v17    # "values":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 173
    .end local v13    # "parameters":Lorg/eclipse/jetty/util/MultiMap;
    :cond_7
    new-instance v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 175
    .local v4, "attr":Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    .line 177
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 179
    iput-object v14, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    .line 181
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v19, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 188
    .end local v4    # "attr":Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;
    .end local v14    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v18

    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 189
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 190
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 191
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    throw v18
.end method
