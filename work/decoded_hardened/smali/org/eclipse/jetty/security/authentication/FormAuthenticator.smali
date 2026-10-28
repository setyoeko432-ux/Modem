.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "FormAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;,
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;,
        Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __FORM_DISPATCH:Ljava/lang/String; = "org.eclipse.jetty.security.dispatch"

.field public static final __FORM_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_error_page"

.field public static final __FORM_LOGIN_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_login_page"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_POST:Ljava/lang/String; = "org.eclipse.jetty.security.form_POST"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.eclipse.jetty.security.form_URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _alwaysSaveUri:Z

.field private _dispatch:Z

.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "dispatch"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 98
    :cond_0
    if-eqz p2, :cond_1

    .line 99
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 100
    :cond_1
    iput-boolean p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    .line 101
    return-void
.end method

.method private setErrorPage(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x3f

    const/4 v3, 0x0

    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 166
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "form-error-page must start with /"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setLoginPage(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3f

    const/4 v3, 0x0

    .line 150
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "form-login-page must start with /"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method public getAlwaysSaveUri()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    return v0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "FORM"

    return-object v0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    const-string v5, "/j_security_check"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, "jsc":I
    if-gez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v3

    .line 375
    :cond_1
    const-string v5, "/j_security_check"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 376
    .local v1, "e":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_2

    move v3, v4

    .line 377
    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 379
    .local v0, "c":C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_3

    const/16 v5, 0x23

    if-eq v0, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/Object;
    .param p3, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    .line 191
    .local v2, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v2, :cond_0

    .line 193
    check-cast p3, Ljavax/servlet/http/HttpServletRequest;

    .end local p3    # "request":Ljavax/servlet/ServletRequest;
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 194
    .local v1, "session":Ljavax/servlet/http/HttpSession;
    new-instance v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2, p2}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;Ljava/lang/Object;)V

    .line 195
    .local v0, "cached":Lorg/eclipse/jetty/server/Authentication;
    const-string v3, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v1, v3, v0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    .end local v0    # "cached":Lorg/eclipse/jetty/server/Authentication;
    .end local v1    # "session":Ljavax/servlet/http/HttpSession;
    :cond_0
    return-object v2
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .param p4, "validatedUser"    # Lorg/eclipse/jetty/server/Authentication$User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public setAlwaysSaveUri(Z)V
    .locals 0
    .param p1, "alwaysSave"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    .line 114
    return-void
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 4
    .param p1, "configuration"    # Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 131
    const-string v3, "org.eclipse.jetty.security.form_login_page"

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "login":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 133
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 134
    :cond_0
    const-string v3, "org.eclipse.jetty.security.form_error_page"

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 137
    :cond_1
    const-string v3, "org.eclipse.jetty.security.dispatch"

    invoke-interface {p1, v3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "dispatch":Ljava/lang/String;
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    :goto_0
    iput-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    .line 139
    return-void

    .line 138
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 23
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 203
    move-object/from16 v12, p1

    check-cast v12, Ljavax/servlet/http/HttpServletRequest;

    .local v12, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v13, p2

    .line 204
    check-cast v13, Ljavax/servlet/http/HttpServletResponse;

    .line 205
    .local v13, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "uri":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 207
    const-string v15, "/"

    .line 209
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v18

    or-int p3, p3, v18

    .line 210
    if-nez p3, :cond_2

    .line 211
    new-instance v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 354
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_1
    :goto_0
    return-object v3

    .line 213
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_2
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {v13}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 214
    new-instance v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    goto :goto_0

    .line 216
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v14

    .line 221
    .local v14, "session":Ljavax/servlet/http/HttpSession;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 223
    const-string v18, "j_username"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "username":Ljava/lang/String;
    const-string v18, "j_password"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    .local v11, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11, v12}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v16

    .line 227
    .local v16, "user":Lorg/eclipse/jetty/server/UserIdentity;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v14

    .line 228
    if-eqz v16, :cond_6

    .line 232
    monitor-enter v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :try_start_1
    const-string v18, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 236
    .local v10, "nuri":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5

    .line 238
    :cond_4
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v10

    .line 239
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5

    .line 240
    const-string v10, "/"

    .line 242
    :cond_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    const/16 v18, 0x0

    :try_start_2
    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 244
    invoke-interface {v13, v10}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 246
    new-instance v3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 358
    .end local v10    # "nuri":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .end local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v17    # "username":Ljava/lang/String;
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :catch_0
    move-exception v7

    .line 360
    .local v7, "e":Ljava/io/IOException;
    new-instance v18, Lorg/eclipse/jetty/security/ServerAuthException;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 242
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v11    # "password":Ljava/lang/String;
    .restart local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .restart local v17    # "username":Ljava/lang/String;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :catchall_0
    move-exception v18

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_4 .. :try_end_4} :catch_1

    .line 362
    .end local v11    # "password":Ljava/lang/String;
    .end local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v17    # "username":Ljava/lang/String;
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :catch_1
    move-exception v7

    .line 364
    .local v7, "e":Ljavax/servlet/ServletException;
    new-instance v18, Lorg/eclipse/jetty/security/ServerAuthException;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 250
    .end local v7    # "e":Ljavax/servlet/ServletException;
    .restart local v11    # "password":Ljava/lang/String;
    .restart local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .restart local v17    # "username":Ljava/lang/String;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_6
    :try_start_5
    sget-object v18, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 251
    sget-object v18, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Form authentication FAILED for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 254
    if-eqz v13, :cond_8

    .line 255
    const/16 v18, 0x193

    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 269
    :cond_8
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 257
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v6

    .line 260
    .local v6, "dispatcher":Ljavax/servlet/RequestDispatcher;
    const-string v18, "Cache-Control"

    const-string v19, "No-cache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v18, "Expires"

    const-wide/16 v19, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v13, v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 262
    new-instance v18, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    new-instance v19, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 266
    .end local v6    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :cond_a
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    .end local v11    # "password":Ljava/lang/String;
    .end local v16    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v17    # "username":Ljava/lang/String;
    :cond_b
    const-string v18, "org.eclipse.jetty.security.UserIdentity"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/Authentication;

    .line 274
    .local v3, "authentication":Lorg/eclipse/jetty/server/Authentication;
    if-eqz v3, :cond_c

    .line 277
    instance-of v0, v3, Lorg/eclipse/jetty/server/Authentication$User;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object/from16 v19, v0

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/LoginService;->validate(Lorg/eclipse/jetty/server/UserIdentity;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 282
    const-string v18, "org.eclipse.jetty.security.UserIdentity"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 316
    :cond_c
    invoke-static {v13}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 318
    sget-object v18, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "auth deferred {}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v14}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 286
    :cond_d
    const-string v18, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 287
    .local v9, "j_uri":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 289
    const-string v18, "org.eclipse.jetty.security.form_POST"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/util/MultiMap;

    .line 290
    .local v8, "j_post":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    if-eqz v8, :cond_10

    .line 292
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v5

    .line 293
    .local v5, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    .line 294
    const-string v18, "?"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 301
    const-string v18, "org.eclipse.jetty.security.form_POST"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    move-object/from16 v4, p1

    .line 303
    .local v4, "base_request":Lorg/eclipse/jetty/server/Request;
    :goto_2
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    goto/16 :goto_0

    .line 302
    .end local v4    # "base_request":Lorg/eclipse/jetty/server/Request;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_f
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    goto :goto_2

    .line 308
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_10
    const-string v18, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v8    # "j_post":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v9    # "j_uri":Ljava/lang/String;
    :cond_11
    monitor-enter v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_5 .. :try_end_5} :catch_1

    .line 326
    :try_start_6
    const-string v18, "org.eclipse.jetty.security.form_URI"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 328
    :cond_12
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v5

    .line 329
    .restart local v5    # "buf":Ljava/lang/StringBuffer;
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_13

    .line 330
    const-string v18, "?"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_13
    const-string v18, "org.eclipse.jetty.security.form_URI"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    const-string v18, "application/x-www-form-urlencoded"

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    const-string v18, "POST"

    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 335
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v18, v0

    if-eqz v18, :cond_15

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    move-object/from16 v4, p1

    .line 336
    .restart local v4    # "base_request":Lorg/eclipse/jetty/server/Request;
    :goto_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 337
    const-string v18, "org.eclipse.jetty.security.form_POST"

    new-instance v19, Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    .end local v4    # "base_request":Lorg/eclipse/jetty/server/Request;
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_14
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 343
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v6

    .line 346
    .restart local v6    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    const-string v18, "Cache-Control"

    const-string v19, "No-cache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v18, "Expires"

    const-wide/16 v19, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v13, v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 348
    new-instance v18, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    new-instance v19, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v6, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 354
    .end local v6    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :goto_4
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 335
    .restart local v5    # "buf":Ljava/lang/StringBuffer;
    .restart local p1    # "req":Ljavax/servlet/ServletRequest;
    :cond_15
    :try_start_8
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v4

    goto :goto_3

    .line 340
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .end local p1    # "req":Ljavax/servlet/ServletRequest;
    :catchall_1
    move-exception v18

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v18

    .line 352
    :cond_16
    invoke-interface {v12}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4
.end method
