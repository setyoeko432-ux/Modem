.class public Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
.super Ljavax/servlet/AsyncEvent;
.source "AsyncContinuation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AsyncContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncEventState"
.end annotation


# instance fields
.field private _dispatchContext:Ljavax/servlet/ServletContext;

.field private _pathInContext:Ljava/lang/String;

.field private final _suspendedContext:Ljavax/servlet/ServletContext;

.field private _timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 4
    .param p2, "context"    # Ljavax/servlet/ServletContext;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;
    .param p4, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 1098
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 1099
    invoke-direct {p0, p1, p3, p4}, Ljavax/servlet/AsyncEvent;-><init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 1095
    new-instance v2, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;-><init>(Lorg/eclipse/jetty/server/AsyncContinuation;)V

    iput-object v2, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 1100
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    .line 1102
    iget-object v2, p1, Lorg/eclipse/jetty/server/AsyncContinuation;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 1105
    .local v0, "r":Lorg/eclipse/jetty/server/Request;
    const-string v2, "javax.servlet.async.request_uri"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1111
    const-string v2, "javax.servlet.forward.request_uri"

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1112
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1114
    const-string v2, "javax.servlet.async.request_uri"

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    const-string v2, "javax.servlet.async.context_path"

    const-string v3, "javax.servlet.forward.context_path"

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    const-string v2, "javax.servlet.async.servlet_path"

    const-string v3, "javax.servlet.forward.servlet_path"

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1117
    const-string v2, "javax.servlet.async.path_info"

    const-string v3, "javax.servlet.forward.path_info"

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1118
    const-string v2, "javax.servlet.async.query_string"

    const-string v3, "javax.servlet.forward.query_string"

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1122
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    const-string v2, "javax.servlet.async.request_uri"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    const-string v2, "javax.servlet.async.context_path"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1124
    const-string v2, "javax.servlet.async.servlet_path"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    const-string v2, "javax.servlet.async.path_info"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1126
    const-string v2, "javax.servlet.async.query_string"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljavax/servlet/ServletContext;)Ljavax/servlet/ServletContext;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .param p1, "x1"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 1090
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    return-object p1
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1090
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;)Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_timeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    return-object v0
.end method


# virtual methods
.method public getDispatchContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_dispatchContext:Ljavax/servlet/ServletContext;

    goto :goto_0
.end method

.method public getSuspendedContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_suspendedContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1148
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->_pathInContext:Ljava/lang/String;

    .line 1149
    return-void
.end method
