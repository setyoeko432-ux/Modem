.class public Lorg/eclipse/jetty/server/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final _STREAM:I = 0x1

.field private static final __ASYNC_FWD:Ljava/lang/String; = "org.eclipse.asyncfwd"

.field public static final __MULTIPART_CONFIG_ELEMENT:Ljava/lang/String; = "org.eclipse.multipartConfig"

.field public static final __MULTIPART_CONTEXT:Ljava/lang/String; = "org.eclipse.multiPartContext"

.field public static final __MULTIPART_INPUT_STREAM:Ljava/lang/String; = "org.eclipse.multiPartInputStream"

.field private static final __NONE:I = 0x0

.field private static final __READER:I = 0x2

.field private static final __defaultLocale:Ljava/util/Collection;


# instance fields
.field protected final _async:Lorg/eclipse/jetty/server/AsyncContinuation;

.field private _asyncSupported:Z

.field private volatile _attributes:Lorg/eclipse/jetty/util/Attributes;

.field private _authentication:Lorg/eclipse/jetty/server/Authentication;

.field private _baseParameters:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _characterEncoding:Ljava/lang/String;

.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _contextPath:Ljava/lang/String;

.field private _cookies:Lorg/eclipse/jetty/server/CookieCutter;

.field private _cookiesExtracted:Z

.field private _dispatchTime:J

.field private _dispatcherType:Ljavax/servlet/DispatcherType;

.field private _dns:Z

.field private _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private _handled:Z

.field private _inputState:I

.field private _method:Ljava/lang/String;

.field private _multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

.field private _newContext:Z

.field private _parameters:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _paramsExtracted:Z

.field private _pathInfo:Ljava/lang/String;

.field private _port:I

.field private _protocol:Ljava/lang/String;

.field private _queryEncoding:Ljava/lang/String;

.field private _queryString:Ljava/lang/String;

.field private _reader:Ljava/io/BufferedReader;

.field private _readerEncoding:Ljava/lang/String;

.field private _remoteAddr:Ljava/lang/String;

.field private _remoteHost:Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestURI:Ljava/lang/String;

.field private _requestedSessionId:Ljava/lang/String;

.field private _requestedSessionIdFromCookie:Z

.field private _savedNewSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljavax/servlet/http/HttpSession;",
            ">;"
        }
    .end annotation
.end field

.field private _scheme:Ljava/lang/String;

.field private _scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

.field private _serverName:Ljava/lang/String;

.field private _servletPath:Ljava/lang/String;

.field private _session:Ljavax/servlet/http/HttpSession;

.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;

.field private _timeStamp:J

.field private _timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

.field private _uri:Lorg/eclipse/jetty/http/HttpURI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-class v0, Lorg/eclipse/jetty/server/Request;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 194
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 196
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 198
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 199
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 205
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 214
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 217
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 194
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 196
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 198
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 199
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 205
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 214
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 217
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 239
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Request;->setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 240
    return-void
.end method

.method public static getRequest(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/Request;
    .locals 1
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 178
    instance-of v0, p0, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Lorg/eclipse/jetty/server/Request;

    .line 181
    .end local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    :goto_0
    return-object p0

    .restart local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 245
    instance-of v0, p1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 247
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    instance-of v0, p1, Ljavax/servlet/AsyncListener;

    if-eqz v0, :cond_2

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    return-void
.end method

.method public authenticate(Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 2
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2031
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_1

    .line 2033
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0, p1}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 2034
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2037
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2034
    goto :goto_0

    .line 2036
    :cond_1
    const/16 v0, 0x191

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    move v0, v1

    .line 2037
    goto :goto_0
.end method

.method public extractParameters()V
    .locals 20

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 260
    new-instance v17, Lorg/eclipse/jetty/util/MultiMap;

    const/16 v18, 0x10

    invoke-direct/range {v17 .. v18}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    .line 274
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->hasQuery()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/http/HttpURI;->decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 295
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "encoding":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "content_type":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 299
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 301
    const-string v17, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    move/from16 v17, v0

    if-nez v17, :cond_8

    const-string v17, "POST"

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "PUT"

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 304
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getContentLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 305
    .local v2, "content_length":I
    if-eqz v2, :cond_8

    .line 309
    const/4 v11, -0x1

    .line 310
    .local v11, "maxFormContentSize":I
    const/4 v12, -0x1

    .line 312
    .local v12, "maxFormKeys":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMaxFormContentSize()I

    move-result v11

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMaxFormKeys()I

    move-result v12

    .line 318
    :cond_5
    if-gez v11, :cond_6

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v17

    const-string v18, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 321
    .local v14, "obj":Ljava/lang/Object;
    if-nez v14, :cond_e

    .line 322
    const v11, 0x30d40

    .line 334
    .end local v14    # "obj":Ljava/lang/Object;
    :cond_6
    :goto_2
    if-gez v12, :cond_7

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v17

    const-string v18, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 337
    .restart local v14    # "obj":Ljava/lang/Object;
    if-nez v14, :cond_10

    .line 338
    const/16 v12, 0x3e8

    .line 350
    .end local v14    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_3
    if-le v2, v11, :cond_12

    if-lez v11, :cond_12

    .line 352
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Form too large "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :catch_0
    move-exception v4

    .line 361
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 362
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 371
    .end local v2    # "content_length":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "maxFormContentSize":I
    .end local v12    # "maxFormKeys":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 387
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    const-string v17, "multipart/form-data"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "org.eclipse.multipartConfig"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    if-eqz v17, :cond_a

    .line 391
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getParts()Ljava/util/Collection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    goto/16 :goto_0

    .line 282
    .end local v3    # "content_type":Ljava/lang/String;
    .end local v5    # "encoding":Ljava/lang/String;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/http/HttpURI;->decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 284
    :catch_1
    move-exception v4

    .line 286
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 287
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 412
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    :cond_c
    throw v17

    .line 289
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_d
    :try_start_6
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 323
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "content_length":I
    .restart local v3    # "content_type":Ljava/lang/String;
    .restart local v5    # "encoding":Ljava/lang/String;
    .restart local v11    # "maxFormContentSize":I
    .restart local v12    # "maxFormKeys":I
    .restart local v14    # "obj":Ljava/lang/Object;
    :cond_e
    :try_start_7
    instance-of v0, v14, Ljava/lang/Number;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 325
    move-object v0, v14

    check-cast v0, Ljava/lang/Number;

    move-object v15, v0

    .line 326
    .local v15, "size":Ljava/lang/Number;
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 327
    goto/16 :goto_2

    .line 328
    .end local v15    # "size":Ljava/lang/Number;
    :cond_f
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 330
    check-cast v14, Ljava/lang/String;

    .end local v14    # "obj":Ljava/lang/Object;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_2

    .line 339
    .restart local v14    # "obj":Ljava/lang/Object;
    :cond_10
    instance-of v0, v14, Ljava/lang/Number;

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 341
    move-object v0, v14

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0

    .line 342
    .local v10, "keys":Ljava/lang/Number;
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 343
    goto/16 :goto_3

    .line 344
    .end local v10    # "keys":Ljava/lang/Number;
    :cond_11
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 346
    check-cast v14, Ljava/lang/String;

    .end local v14    # "obj":Ljava/lang/Object;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto/16 :goto_3

    .line 354
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v8

    .line 357
    .local v8, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v18, v0

    if-gez v2, :cond_13

    move/from16 v17, v11

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v8, v0, v5, v1, v12}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :cond_13
    const/16 v17, -0x1

    goto :goto_6

    .line 364
    .end local v8    # "in":Ljava/io/InputStream;
    .local v4, "e":Ljava/io/IOException;
    :cond_14
    :try_start_8
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 373
    .end local v2    # "content_length":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "maxFormContentSize":I
    .end local v12    # "maxFormKeys":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 377
    .local v9, "iter":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 379
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 380
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 381
    .local v13, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 382
    .local v16, "values":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    invoke-static/range {v16 .. v16}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_16

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 393
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "values":Ljava/lang/Object;
    :catch_2
    move-exception v4

    .line 395
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 396
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 398
    :cond_17
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 400
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 402
    .local v4, "e":Ljavax/servlet/ServletException;
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 403
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 405
    :cond_18
    sget-object v17, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Ljavax/servlet/ServletException;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5
.end method

.method public getAsyncContext()Ljavax/servlet/AsyncContext;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v1, "org.eclipse.jetty.io.EndPoint.maxIdleTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 443
    :cond_0
    :goto_0
    return-object v0

    .line 440
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 441
    .local v0, "attr":Ljava/lang/Object;
    :goto_1
    if-nez v0, :cond_0

    const-string v1, "org.eclipse.jetty.continuation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    goto :goto_0

    .line 440
    .end local v0    # "attr":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getAuthMethod()Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthentication()Lorg/eclipse/jetty/server/Authentication;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->getLongField(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 523
    :cond_0
    const-wide/16 v0, -0x1

    .line 525
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getContentRead()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    if-eqz v3, :cond_2

    .line 562
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v3, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-object v2

    .line 562
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/CookieCutter;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    goto :goto_0

    .line 564
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 566
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v1

    .line 569
    .local v1, "enm":Ljava/util/Enumeration;
    if-eqz v1, :cond_4

    .line 571
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v3, :cond_3

    .line 572
    new-instance v3, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-direct {v3}, Lorg/eclipse/jetty/server/CookieCutter;-><init>()V

    iput-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    .line 574
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 576
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    .local v0, "c":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/CookieCutter;->addCookieField(Ljava/lang/String;)V

    goto :goto_1

    .line 581
    .end local v0    # "c":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/CookieCutter;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    goto :goto_0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getDateField(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchTime()J
    .locals 2

    .prologue
    .line 1376
    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_dispatchTime:J

    return-wide v0
.end method

.method public getDispatcherType()Ljavax/servlet/DispatcherType;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_dispatcherType:Ljavax/servlet/DispatcherType;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 605
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 623
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 624
    .local v0, "e":Ljava/util/Enumeration;
    if-nez v0, :cond_0

    .line 625
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 626
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public getInputState()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    return v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 644
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eq v0, v1, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 656
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getLongField(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 754
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v1, :cond_1

    .line 755
    const/4 v0, 0x0

    .line 762
    :cond_0
    :goto_0
    return-object v0

    .line 756
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    if-eqz v1, :cond_2

    .line 757
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "local":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 674
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    const-string v7, "Accept-Language"

    const-string v8, ", \t"

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 677
    .local v3, "enm":Ljava/util/Enumeration;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 678
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 701
    :goto_0
    return-object v6

    .line 681
    :cond_1
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 682
    .local v0, "acceptLanguage":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 683
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    goto :goto_0

    .line 685
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 687
    .local v5, "size":I
    if-lez v5, :cond_4

    .line 689
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 690
    .local v4, "language":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 691
    const-string v1, ""

    .line 692
    .local v1, "country":Ljava/lang/String;
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 693
    .local v2, "dash":I
    const/4 v6, -0x1

    if-le v2, v6, :cond_3

    .line 695
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 698
    :cond_3
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "dash":I
    .end local v4    # "language":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    goto :goto_0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 11

    .prologue
    .line 711
    iget-object v8, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v8

    const-string v9, "Accept-Language"

    const-string v10, ", \t"

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 714
    .local v3, "enm":Ljava/util/Enumeration;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_1

    .line 715
    :cond_0
    sget-object v8, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    .line 745
    :goto_0
    return-object v8

    .line 718
    :cond_1
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 720
    .local v0, "acceptLanguage":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 721
    sget-object v8, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0

    .line 723
    :cond_2
    const/4 v5, 0x0

    .line 724
    .local v5, "langs":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 727
    .local v7, "size":I
    const/4 v4, 0x0

    .end local v5    # "langs":Ljava/lang/Object;
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 729
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 730
    .local v6, "language":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 731
    const-string v1, ""

    .line 732
    .local v1, "country":Ljava/lang/String;
    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 733
    .local v2, "dash":I
    const/4 v8, -0x1

    if-le v2, v8, :cond_3

    .line 735
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 736
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 738
    :cond_3
    invoke-static {v5, v7}, Lorg/eclipse/jetty/util/LazyList;->ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 739
    .restart local v5    # "langs":Ljava/lang/Object;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v6, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v8}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 727
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 742
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "dash":I
    .end local v5    # "langs":Ljava/lang/Object;
    .end local v6    # "language":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_5

    .line 743
    sget-object v8, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0

    .line 745
    :cond_5
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 789
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 803
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 814
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 832
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 834
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 835
    .local v0, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 836
    const/4 v1, 0x0

    .line 837
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getParameters()Lorg/eclipse/jetty/util/MultiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2043
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getParts()Ljava/util/Collection;

    .line 2044
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;

    move-result-object v0

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2050
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "multipart/form-data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2051
    :cond_0
    new-instance v10, Ljavax/servlet/ServletException;

    const-string v11, "Content-Type != multipart/form-data"

    invoke-direct {v10, v11}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2053
    :cond_1
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    if-nez v10, :cond_2

    .line 2054
    const-string v10, "org.eclipse.multiPartInputStream"

    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/util/MultiPartInputStream;

    iput-object v10, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 2056
    :cond_2
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    if-nez v10, :cond_8

    .line 2058
    const-string v10, "org.eclipse.multipartConfig"

    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/MultipartConfigElement;

    .line 2060
    .local v1, "config":Ljavax/servlet/MultipartConfigElement;
    if-nez v1, :cond_3

    .line 2061
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "No multipart config for servlet"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2063
    :cond_3
    new-instance v11, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v12

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v13

    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v14, "javax.servlet.context.tempdir"

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    :goto_0
    invoke-direct {v11, v12, v13, v1, v10}, Lorg/eclipse/jetty/util/MultiPartInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljavax/servlet/MultipartConfigElement;Ljava/io/File;)V

    iput-object v11, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 2067
    const-string v10, "org.eclipse.multiPartInputStream"

    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {p0, v10, v11}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2068
    const-string v10, "org.eclipse.multiPartContext"

    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p0, v10, v11}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2069
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParts()Ljava/util/Collection;

    move-result-object v9

    .line 2070
    .local v9, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/http/Part;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/servlet/http/Part;

    .local v8, "p":Ljavax/servlet/http/Part;
    move-object v5, v8

    .line 2072
    check-cast v5, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    .line 2073
    .local v5, "mp":Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentDispositionFilename()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    .line 2076
    const/4 v0, 0x0

    .line 2077
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 2078
    new-instance v10, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 2080
    :cond_5
    const/4 v6, 0x0

    .line 2081
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 2084
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .local v7, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {v4, v7}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2086
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    if-nez v0, :cond_6

    const-string v0, "UTF-8"

    .end local v0    # "charset":Ljava/lang/String;
    :cond_6
    invoke-direct {v2, v10, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2087
    .local v2, "content":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/server/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 2088
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v10

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2092
    invoke-static {v7}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    .line 2093
    invoke-static {v4}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    goto :goto_1

    .line 2063
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "mp":Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "p":Ljavax/servlet/http/Part;
    .end local v9    # "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/http/Part;>;"
    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    .line 2092
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "mp":Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "p":Ljavax/servlet/http/Part;
    .restart local v9    # "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/http/Part;>;"
    :catchall_0
    move-exception v10

    .end local v0    # "charset":Ljava/lang/String;
    :goto_2
    invoke-static {v6}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/OutputStream;)V

    .line 2093
    invoke-static {v4}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v10

    .line 2099
    .end local v1    # "config":Ljavax/servlet/MultipartConfigElement;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "mp":Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "p":Ljavax/servlet/http/Part;
    .end local v9    # "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/http/Part;>;"
    :cond_8
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParts()Ljava/util/Collection;

    move-result-object v10

    return-object v10

    .line 2092
    .restart local v1    # "config":Ljavax/servlet/MultipartConfigElement;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "mp":Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    .restart local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "p":Ljavax/servlet/http/Part;
    .restart local v9    # "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/http/Part;>;"
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_1

    .line 856
    :cond_0
    const/4 v0, 0x0

    .line 857
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 884
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 888
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    return-object v0

    .line 886
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 897
    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eq v2, v4, :cond_0

    .line 898
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "STREAMED"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-ne v2, v4, :cond_1

    .line 901
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 921
    :goto_0
    return-object v2

    .line 903
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 905
    const-string v0, "ISO-8859-1"

    .line 907
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_readerEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 909
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v1

    .line 910
    .local v1, "in":Ljavax/servlet/ServletInputStream;
    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_readerEncoding:Ljava/lang/String;

    .line 911
    new-instance v2, Lorg/eclipse/jetty/server/Request$1;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v1}, Lorg/eclipse/jetty/server/Request$1;-><init>(Lorg/eclipse/jetty/server/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 920
    .end local v1    # "in":Ljavax/servlet/ServletInputStream;
    :cond_4
    iput v4, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 921
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 930
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    .line 932
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    .line 943
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    .line 960
    :goto_0
    return-object v0

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 979
    .local v0, "p":Ljava/security/Principal;
    if-nez v0, :cond_0

    .line 980
    const/4 v1, 0x0

    .line 981
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 990
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v2, :cond_1

    .line 991
    :cond_0
    const/4 v2, 0x0

    .line 1005
    :goto_0
    return-object v2

    .line 994
    :cond_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 996
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "relTo":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 998
    .local v1, "slash":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 999
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_1
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1005
    .end local v0    # "relTo":Ljava/lang/String;
    .end local v1    # "slash":I
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    goto :goto_0

    .line 1001
    .restart local v0    # "relTo":Ljava/lang/String;
    .restart local v1    # "slash":I
    :cond_3
    const-string v0, "/"

    goto :goto_1
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPathAndParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1025
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1034
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1035
    .local v2, "url":Ljava/lang/StringBuffer;
    monitor-enter v2

    .line 1037
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v0

    .line 1040
    .local v0, "port":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1041
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1043
    iget v3, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-lez v3, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    .line 1045
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1046
    iget v3, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1049
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    monitor-exit v2

    return-object v2

    .line 1051
    .end local v0    # "port":I
    .end local v1    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1341
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponse()Lorg/eclipse/jetty/server/Response;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1074
    .local v2, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v0

    .line 1077
    .local v0, "port":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    if-lez v0, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    .line 1083
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    :cond_2
    return-object v2
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1105
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1106
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1177
    :goto_0
    return-object v6

    .line 1108
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-nez v6, :cond_1

    .line 1109
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1112
    :cond_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1113
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1114
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1115
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 1119
    .local v3, "hostPort":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v3, :cond_7

    .line 1121
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .local v4, "i":I
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    if-le v4, v6, :cond_4

    .line 1123
    invoke-interface {v3, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v0, v6

    .line 1124
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    move v4, v5

    .line 1149
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1130
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_0
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v7

    sub-int v7, v5, v7

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1133
    add-int/lit8 v6, v5, 0x1

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/io/BufferUtil;->toInt(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :cond_3
    :goto_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v6, :cond_3

    .line 1140
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v6, v6, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v7, 0x190

    const-string v8, "Bad Host header"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1142
    :catch_1
    move-exception v2

    .line 1144
    .local v2, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1150
    .end local v0    # "ch":C
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_4
    :sswitch_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gez v6, :cond_6

    .line 1152
    :cond_5
    invoke-static {v3}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1153
    const/4 v6, 0x0

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1156
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1160
    .end local v5    # "i":I
    :cond_7
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v6, :cond_8

    .line 1162
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getLocalName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1163
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getLocalPort()I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1164
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v6, "0.0.0.0"

    iget-object v7, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1165
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1171
    :cond_8
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1177
    :goto_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1173
    :catch_2
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v6, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1124
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 1186
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    .line 1191
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_2

    .line 1194
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1200
    :cond_1
    :goto_0
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_5

    .line 1202
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1203
    const/16 v0, 0x1bb

    .line 1206
    :goto_1
    return v0

    .line 1196
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_2

    .line 1204
    :cond_4
    const/16 v0, 0x50

    goto :goto_1

    .line 1206
    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    goto :goto_1
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity$Scope;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1232
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1233
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 1248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 5
    .param p1, "create"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1257
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1260
    iput-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1265
    :cond_0
    if-nez p1, :cond_2

    .line 1276
    :goto_0
    return-object v1

    .line 1262
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    goto :goto_0

    .line 1268
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-nez v1, :cond_3

    .line 1269
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No SessionManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1271
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/server/SessionManager;->newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1272
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->isSecure()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v0

    .line 1273
    .local v0, "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    if-eqz v0, :cond_4

    .line 1274
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 1276
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 1296
    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    return-wide v0
.end method

.method public getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    .line 1307
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1308
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferDateCache;->formatBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1309
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getUri()Lorg/eclipse/jetty/http/HttpURI;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    return-object v0
.end method

.method public getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1327
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1329
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 1356
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v1, v1, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v1, :cond_0

    .line 1357
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v1, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1359
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v1, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v1, :cond_1

    .line 1361
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v1, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1362
    .local v0, "user":Lorg/eclipse/jetty/server/UserIdentity;
    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 1365
    .end local v0    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAsyncStarted()Z
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    return v0
.end method

.method public isAsyncSupported()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    .prologue
    .line 1382
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return v1

    .line 1433
    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    .line 1434
    .local v0, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v2}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/server/SessionManager;->getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 2
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 1452
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1455
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/server/Authentication$User;->isUserInRole(Lorg/eclipse/jetty/server/UserIdentity$Scope;Ljava/lang/String;)Z

    move-result v0

    .line 1457
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2105
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p1, p2, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 2108
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    if-nez v0, :cond_1

    .line 2109
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0}, Ljavax/servlet/ServletException;-><init>()V

    throw v0

    .line 2113
    :cond_0
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authenticated as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2115
    :cond_1
    return-void
.end method

.method public logout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 2120
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->logout()V

    .line 2122
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 2123
    return-void
.end method

.method public mergeQueryString(Ljava/lang/String;)V
    .locals 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 2136
    new-instance v8, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v8}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 2137
    .local v8, "parameters":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    const-string v10, "UTF-8"

    invoke-static {p1, v8, v10}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 2139
    const/4 v3, 0x0

    .line 2142
    .local v3, "merge_old_query":Z
    iget-boolean v10, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v10, :cond_0

    .line 2143
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 2146
    :cond_0
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 2149
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2150
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2153
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2156
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v8, v4}, Lorg/eclipse/jetty/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2157
    const/4 v3, 0x1

    .line 2160
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 2161
    .local v9, "values":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {v9}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 2162
    invoke-static {v9, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2166
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "values":Ljava/lang/Object;
    :cond_3
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 2168
    if-eqz v3, :cond_7

    .line 2170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2171
    .local v7, "overridden_query_string":Ljava/lang/StringBuilder;
    new-instance v6, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v6}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 2172
    .local v6, "overridden_old_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getQueryEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v6, v11}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 2175
    new-instance v5, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v5}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 2176
    .local v5, "overridden_new_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    const-string v10, "UTF-8"

    invoke-static {p1, v5, v10}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2179
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2182
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2183
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 2186
    .restart local v9    # "values":Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-static {v9}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 2188
    const-string v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2193
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "values":Ljava/lang/Object;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2201
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "overridden_new_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v6    # "overridden_old_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v7    # "overridden_query_string":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 2202
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 2203
    return-void

    .line 2197
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1463
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1464
    const/4 v0, 0x0

    .line 1465
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method protected recycle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1471
    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1475
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 1476
    .local v1, "r":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1477
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1479
    .end local v1    # "r":I
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1482
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 1486
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1487
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->recycle()V

    .line 1488
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 1489
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 1490
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v2, :cond_1

    .line 1491
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Request in context!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1492
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-eqz v2, :cond_2

    .line 1493
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/Attributes;->clearAttributes()V

    .line 1494
    :cond_2
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1495
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    .line 1496
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-eqz v2, :cond_3

    .line 1497
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/CookieCutter;->reset()V

    .line 1498
    :cond_3
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 1499
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1500
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1501
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    .line 1502
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    .line 1503
    iput v5, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1504
    const-string v2, "HTTP/1.1"

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 1505
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1506
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1507
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1508
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 1509
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1510
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 1511
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1512
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .line 1513
    const-string v2, "http"

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 1514
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1515
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    .line 1516
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1517
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 1518
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v2, :cond_4

    .line 1519
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 1520
    :cond_4
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 1521
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    .line 1522
    iput v5, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 1524
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 1525
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1526
    :cond_5
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1527
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 1528
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1536
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v6, :cond_2

    const/4 v4, 0x0

    .line 1538
    .local v4, "old_value":Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-eqz v6, :cond_0

    .line 1539
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v6, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    .line 1541
    :cond_0
    if-eqz v4, :cond_3

    .line 1543
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 1545
    new-instance v0, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, v6, p0, p1, v4}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1546
    .local v0, "event":Ljavax/servlet/ServletRequestAttributeEvent;
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v6}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1547
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 1549
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v6, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1550
    .local v3, "listener":Ljava/util/EventListener;
    instance-of v6, v3, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1552
    check-cast v2, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1553
    .local v2, "l":Ljavax/servlet/ServletRequestAttributeListener;
    invoke-interface {v2, v0}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1547
    .end local v2    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1536
    .end local v0    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v1    # "i":I
    .end local v3    # "listener":Ljava/util/EventListener;
    .end local v4    # "old_value":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v6, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1558
    .restart local v4    # "old_value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 1563
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1564
    return-void
.end method

.method public saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1569
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1571
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    return-void
.end method

.method public setAsyncSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 1577
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 1578
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 1591
    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v11, :cond_3

    move-object v8, v10

    .line 1593
    .local v8, "old_value":Ljava/lang/Object;
    :goto_0
    const-string v11, "org.eclipse.jetty."

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1595
    const-string v11, "org.eclipse.jetty.server.Request.queryEncoding"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1596
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/server/Request;->setQueryEncoding(Ljava/lang/String;)V

    .line 1637
    :cond_0
    :goto_2
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v10, :cond_1

    .line 1638
    new-instance v10, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v10}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v10, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 1639
    :cond_1
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v10, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1641
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v10, :cond_c

    .line 1643
    new-instance v4, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v8, :cond_9

    move-object v10, p2

    :goto_3
    invoke-direct {v4, v11, p0, p1, v10}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1644
    .local v4, "event":Ljavax/servlet/ServletRequestAttributeEvent;
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v10}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .line 1645
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v9, :cond_c

    .line 1647
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v10, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1648
    .local v7, "listener":Ljava/util/EventListener;
    instance-of v10, v7, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v10, :cond_2

    move-object v6, v7

    .line 1650
    check-cast v6, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1652
    .local v6, "l":Ljavax/servlet/ServletRequestAttributeListener;
    if-nez v8, :cond_a

    .line 1653
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeAdded(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1645
    .end local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    :cond_2
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1591
    .end local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v5    # "i":I
    .end local v7    # "listener":Ljava/util/EventListener;
    .end local v8    # "old_value":Ljava/lang/Object;
    .end local v9    # "size":I
    :cond_3
    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v11, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 1596
    .restart local v8    # "old_value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1597
    :cond_5
    const-string v10, "org.eclipse.jetty.server.sendContent"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1601
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v10

    invoke-interface {v10}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v10, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1603
    :catch_0
    move-exception v3

    .line 1605
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1608
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    const-string v10, "org.eclipse.jetty.server.ResponseBuffer"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1612
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v2, v0

    .line 1613
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1615
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v1, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    :goto_6
    check-cast v1, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 1616
    .local v1, "buffer":Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v10

    invoke-interface {v10}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v10, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1617
    monitor-exit v2

    goto/16 :goto_2

    .end local v1    # "buffer":Lorg/eclipse/jetty/io/nio/NIOBuffer;
    :catchall_0
    move-exception v10

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1619
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 1621
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1615
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    :try_start_4
    new-instance v1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 1624
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    const-string v10, "org.eclipse.jetty.io.EndPoint.maxIdleTime"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1628
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 1630
    :catch_2
    move-exception v3

    .line 1632
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    move-object v10, v8

    .line 1643
    goto/16 :goto_3

    .line 1654
    .restart local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .restart local v5    # "i":I
    .restart local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    .restart local v7    # "listener":Ljava/util/EventListener;
    .restart local v9    # "size":I
    :cond_a
    if-nez p2, :cond_b

    .line 1655
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto/16 :goto_5

    .line 1657
    :cond_b
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeReplaced(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto/16 :goto_5

    .line 1661
    .end local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v5    # "i":I
    .end local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    .end local v7    # "listener":Ljava/util/EventListener;
    .end local v9    # "size":I
    :cond_c
    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 0
    .param p1, "attributes"    # Lorg/eclipse/jetty/util/Attributes;

    .prologue
    .line 1668
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 1669
    return-void
.end method

.method public setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V
    .locals 0
    .param p1, "authentication"    # Lorg/eclipse/jetty/server/Authentication;

    .prologue
    .line 1682
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 1683
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1691
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1697
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1699
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    goto :goto_0
.end method

.method public setCharacterEncodingUnchecked(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1708
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1709
    return-void
.end method

.method protected final setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 1715
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1716
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 1717
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 1718
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 1719
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 1727
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method public setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 1
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    .line 1740
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1741
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1742
    return-void

    .line 1740
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 1764
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    .line 1765
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookies"    # [Ljavax/servlet/http/Cookie;

    .prologue
    .line 1774
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v0, :cond_0

    .line 1775
    new-instance v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/CookieCutter;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    .line 1776
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/CookieCutter;->setCookies([Ljavax/servlet/http/Cookie;)V

    .line 1777
    return-void
.end method

.method public setDispatchTime(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 2000
    iput-wide p1, p0, Lorg/eclipse/jetty/server/Request;->_dispatchTime:J

    .line 2001
    return-void
.end method

.method public setDispatcherType(Ljavax/servlet/DispatcherType;)V
    .locals 0
    .param p1, "type"    # Ljavax/servlet/DispatcherType;

    .prologue
    .line 1782
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_dispatcherType:Ljavax/servlet/DispatcherType;

    .line 1783
    return-void
.end method

.method public setHandled(Z)V
    .locals 0
    .param p1, "h"    # Z

    .prologue
    .line 1788
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 1789
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1798
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    .line 1799
    return-void
.end method

.method public setParameters(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1808
    .local p1, "parameters":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    .end local p1    # "parameters":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 1809
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 1810
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1811
    :cond_1
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathInfo"    # Ljava/lang/String;

    .prologue
    .line 1820
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    .line 1821
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1830
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 1831
    return-void
.end method

.method public setQueryEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryEncoding"    # Ljava/lang/String;

    .prologue
    .line 1844
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1845
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1846
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 1855
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1856
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1857
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 1866
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    .line 1867
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1876
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    .line 1877
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 1906
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1907
    return-void
.end method

.method public setRequestedSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestedSessionId"    # Ljava/lang/String;

    .prologue
    .line 1886
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1887
    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0
    .param p1, "requestedSessionIdCookie"    # Z

    .prologue
    .line 1896
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 1897
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 1916
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 1917
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1926
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1927
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1936
    iput p1, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1937
    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletPath"    # Ljava/lang/String;

    .prologue
    .line 1946
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1947
    return-void
.end method

.method public setSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1956
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1957
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/eclipse/jetty/server/SessionManager;

    .prologue
    .line 1966
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 1967
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "ts"    # J

    .prologue
    .line 1972
    iput-wide p1, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    .line 1973
    return-void
.end method

.method public setUri(Lorg/eclipse/jetty/http/HttpURI;)V
    .locals 0
    .param p1, "uri"    # Lorg/eclipse/jetty/http/HttpURI;

    .prologue
    .line 1982
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 1983
    return-void
.end method

.method public setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .prologue
    .line 1988
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .line 1989
    return-void
.end method

.method public startAsync()Ljavax/servlet/AsyncContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2006
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    if-nez v0, :cond_0

    .line 2007
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!asyncSupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2008
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->startAsync()V

    .line 2009
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public startAsync(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljavax/servlet/AsyncContext;
    .locals 2
    .param p1, "servletRequest"    # Ljavax/servlet/ServletRequest;
    .param p2, "servletResponse"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2015
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    if-nez v0, :cond_0

    .line 2016
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!asyncSupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2017
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation;->startAsync(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 2018
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public takeNewContext()Z
    .locals 2

    .prologue
    .line 1751
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1752
    .local v0, "nc":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1753
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    if-eqz v0, :cond_0

    const-string v0, "["

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    if-eqz v0, :cond_1

    const-string v0, "]@"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "("

    goto :goto_0

    :cond_1
    const-string v0, ")@"

    goto :goto_1
.end method
