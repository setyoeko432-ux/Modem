.class public Lorg/eclipse/jetty/server/session/SessionHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "SessionHandler.java"


# static fields
.field public static final DEFAULT_TRACKING:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "org.eclipse.jetty.server.session"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 48
    sget-object v0, Ljavax/servlet/SessionTrackingMode;->COOKIE:Ljavax/servlet/SessionTrackingMode;

    sget-object v1, Ljavax/servlet/SessionTrackingMode;->URL:Ljavax/servlet/SessionTrackingMode;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->DEFAULT_TRACKING:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/SessionHandler;-><init>(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/eclipse/jetty/server/SessionManager;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/SessionHandler;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->addEventListener(Ljava/util/EventListener;)V

    .line 338
    :cond_0
    return-void
.end method

.method protected checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 16
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 244
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "requested_session_id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v10

    .line 248
    .local v10, "sessionManager":Lorg/eclipse/jetty/server/SessionManager;
    if-eqz v5, :cond_1

    if-eqz v10, :cond_1

    .line 250
    invoke-interface {v10, v5}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v8

    .line 251
    .local v8, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v8, :cond_0

    invoke-interface {v10, v8}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 328
    .end local v8    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-object v12, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 258
    const/4 v6, 0x0

    .line 259
    .local v6, "requested_session_id_from_cookie":Z
    const/4 v8, 0x0

    .line 262
    .restart local v8    # "session":Ljavax/servlet/http/HttpSession;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v12}, Lorg/eclipse/jetty/server/SessionManager;->isUsingCookies()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 264
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    .line 265
    .local v2, "cookies":[Ljavax/servlet/http/Cookie;
    if-eqz v2, :cond_2

    array-length v12, v2

    if-lez v12, :cond_2

    .line 267
    invoke-interface {v10}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v12

    invoke-interface {v12}, Ljavax/servlet/SessionCookieConfig;->getName()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "sessionCookie":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v2

    if-ge v3, v12, :cond_2

    .line 270
    aget-object v12, v2, v3

    invoke-virtual {v12}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 272
    aget-object v12, v2, v3

    invoke-virtual {v12}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 273
    const/4 v6, 0x1

    .line 275
    sget-object v12, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Got Session ID {} from cookie"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    if-eqz v5, :cond_6

    .line 279
    invoke-interface {v10, v5}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v8

    .line 281
    if-eqz v8, :cond_7

    invoke-interface {v10, v8}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 295
    .end local v2    # "cookies":[Ljavax/servlet/http/Cookie;
    .end local v3    # "i":I
    .end local v9    # "sessionCookie":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    if-nez v8, :cond_5

    .line 297
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, "uri":Ljava/lang/String;
    invoke-interface {v10}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 302
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 303
    .local v7, "s":I
    if-ltz v7, :cond_5

    .line 305
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v7, v12

    .line 306
    move v3, v7

    .line 307
    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 309
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 310
    .local v1, "c":C
    const/16 v12, 0x3b

    if-eq v1, v12, :cond_4

    const/16 v12, 0x23

    if-eq v1, v12, :cond_4

    const/16 v12, 0x3f

    if-eq v1, v12, :cond_4

    const/16 v12, 0x2f

    if-ne v1, v12, :cond_8

    .line 315
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v11, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 316
    const/4 v6, 0x0

    .line 317
    invoke-interface {v10, v5}, Lorg/eclipse/jetty/server/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v8

    .line 318
    sget-object v12, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 319
    sget-object v12, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Got Session ID {} from URL"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "s":I
    .end local v11    # "uri":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionId(Ljava/lang/String;)V

    .line 325
    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/server/Request;->setRequestedSessionIdFromCookie(Z)V

    .line 326
    if-eqz v8, :cond_0

    invoke-interface {v10, v8}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 327
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    goto/16 :goto_0

    .line 288
    .restart local v2    # "cookies":[Ljavax/servlet/http/Cookie;
    .restart local v3    # "i":I
    .restart local v9    # "sessionCookie":Ljava/lang/String;
    :cond_6
    sget-object v12, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "null session id from cookie"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 312
    .end local v2    # "cookies":[Ljavax/servlet/http/Cookie;
    .end local v9    # "sessionCookie":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v7    # "s":I
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 313
    goto :goto_2

    .line 325
    .end local v1    # "c":C
    .end local v3    # "i":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "s":I
    .end local v11    # "uri":Ljava/lang/String;
    :cond_9
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public clearEventListeners()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->clearEventListeners()V

    .line 345
    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "old_session_manager":Lorg/eclipse/jetty/server/SessionManager;
    const/4 v2, 0x0

    .line 148
    .local v2, "old_session":Ljavax/servlet/http/HttpSession;
    const/4 v0, 0x0

    .line 151
    .local v0, "access":Ljavax/servlet/http/HttpSession;
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v3

    .line 152
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v2

    .line 154
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v5, :cond_0

    .line 157
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 158
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 159
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jetty/server/session/SessionHandler;->checkRequestedSessionId(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;)V

    .line 163
    :cond_0
    const/4 v4, 0x0

    .line 164
    .local v4, "session":Ljavax/servlet/http/HttpSession;
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v5, :cond_1

    .line 166
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 167
    if-eqz v4, :cond_6

    .line 169
    if-eq v4, v2, :cond_1

    .line 171
    move-object v0, v4

    .line 172
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v6

    invoke-interface {v5, v4, v6}, Lorg/eclipse/jetty/server/SessionManager;->access(Ljavax/servlet/http/HttpSession;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v1

    .line 173
    .local v1, "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 185
    .end local v1    # "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    :cond_1
    :goto_0
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionManager="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object v5, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v5, :cond_a

    .line 193
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_1
    if-eqz v0, :cond_3

    .line 204
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 206
    :cond_3
    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 207
    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    if-eq v4, v0, :cond_4

    .line 208
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 210
    :cond_4
    if-eqz v3, :cond_5

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v5, :cond_5

    .line 212
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 213
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 216
    :cond_5
    return-void

    .line 179
    :cond_6
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v4    # "session":Ljavax/servlet/http/HttpSession;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_7

    .line 204
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v6, v0}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 206
    :cond_7
    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    .line 207
    .restart local v4    # "session":Ljavax/servlet/http/HttpSession;
    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    if-eq v4, v0, :cond_8

    .line 208
    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v6, v4}, Lorg/eclipse/jetty/server/SessionManager;->complete(Ljavax/servlet/http/HttpSession;)V

    .line 210
    :cond_8
    if-eqz v3, :cond_9

    iget-object v6, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eq v3, v6, :cond_9

    .line 212
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V

    .line 213
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setSession(Ljavax/servlet/http/HttpSession;)V

    .line 215
    :cond_9
    throw v5

    .line 194
    :cond_a
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v5, :cond_b

    .line 195
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 197
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/session/SessionHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->start()V

    .line 124
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 125
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->stop()V

    .line 136
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 137
    return-void
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    .line 109
    .local v12, "old_server":Lorg/eclipse/jetty/server/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 110
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v4, "sessionManager"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 112
    if-eqz p1, :cond_1

    if-eq p1, v12, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    const-string v10, "sessionManager"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 114
    :cond_1
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 6
    .param p1, "sessionManager"    # Lorg/eclipse/jetty/server/SessionManager;

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 92
    .local v2, "old_session_manager":Lorg/eclipse/jetty/server/SessionManager;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const-string v4, "sessionManager"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    .line 96
    invoke-interface {p1, p0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 98
    :cond_2
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/SessionHandler;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 100
    if-eqz v2, :cond_3

    .line 101
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/server/SessionManager;->setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V

    .line 102
    :cond_3
    return-void
.end method
