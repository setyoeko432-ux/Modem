.class public final Lcom/mifiservice/security/Guard;
.super Ljava/lang/Object;
.source "Guard.java"


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "admin"

.field private static final HEADER:Ljava/lang/String; = "X-Mifi-Req"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static authorize(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ILorg/json/JSONObject;)Z
    .locals 5

    .line 49
    invoke-static {p2, p3}, Lcom/mifiservice/security/Validator;->validate(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    .line 50
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "INVALID_INPUT:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x190

    invoke-static {p1, p2, p0}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 52
    return v0

    .line 55
    :cond_0
    const/16 p3, 0x3e8

    const/4 v1, 0x1

    if-ne p2, p3, :cond_2

    .line 56
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->loginAllowed(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 57
    const/16 p0, 0x1ad

    const-string p2, "RATE_LIMITED"

    invoke-static {p1, p0, p2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 58
    return v0

    .line 60
    :cond_1
    return v1

    .line 63
    :cond_2
    invoke-static {p2}, Lcom/mifiservice/security/Guard;->isAllowed(I)Z

    move-result p3

    const-string v2, "FORBIDDEN"

    const/16 v3, 0x193

    if-nez p3, :cond_3

    .line 64
    invoke-static {p1, v3, v2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 65
    return v0

    .line 67
    :cond_3
    const-string p3, "X-Mifi-Req"

    invoke-interface {p0, p3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "1"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 68
    invoke-static {p1, v3, v2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 69
    return v0

    .line 72
    :cond_4
    const-string p3, "Cookie"

    invoke-interface {p0, p3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->cookieToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->isValid(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 74
    const/16 p0, 0x191

    const-string p2, "SESSION_REQUIRED"

    invoke-static {p1, p0, p2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 75
    return v0

    .line 77
    :cond_5
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->needsPasswordChange(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x3fc

    if-eq p2, p0, :cond_6

    .line 78
    const-string p0, "PASSWORD_CHANGE_REQUIRED"

    invoke-static {p1, v3, p0}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 79
    return v0

    .line 81
    :cond_6
    return v1
.end method

.method public static badRequest(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 111
    const/16 v0, 0x190

    const-string v1, "INVALID_INPUT:JSON"

    invoke-static {p0, v0, v1}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method private static deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V
    .locals 2

    .line 174
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 175
    const-string p1, "text/json"

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 176
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 177
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    const-string v0, "flag"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v0, "error_info"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string p2, "results"

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception p0

    goto :goto_1

    .line 182
    :catch_1
    move-exception p0

    .line 186
    :goto_0
    nop

    .line 187
    :goto_1
    return-void
.end method

.method public static denyMultipart(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 107
    const/16 v0, 0x193

    const-string v1, "FORBIDDEN"

    invoke-static {p0, v0, v1}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public static isAllowed(I)Z
    .locals 0

    .line 115
    sparse-switch p0, :sswitch_data_0

    .line 150
    const/4 p0, 0x0

    return p0

    .line 148
    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_0
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_0
        0x3f2 -> :sswitch_0
        0x3f3 -> :sswitch_0
        0x3f4 -> :sswitch_0
        0x3f5 -> :sswitch_0
        0x3f7 -> :sswitch_0
        0x3f8 -> :sswitch_0
        0x3f9 -> :sswitch_0
        0x3fa -> :sswitch_0
        0x3fc -> :sswitch_0
        0x3fd -> :sswitch_0
        0x3ff -> :sswitch_0
        0x400 -> :sswitch_0
        0x401 -> :sswitch_0
        0x402 -> :sswitch_0
        0x403 -> :sswitch_0
        0x404 -> :sswitch_0
        0x405 -> :sswitch_0
        0x41c -> :sswitch_0
        0x41d -> :sswitch_0
        0x41e -> :sswitch_0
        0x41f -> :sswitch_0
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_0
    .end sparse-switch
.end method

.method private static isShippedDefaultPassword()Z
    .locals 3

    .line 160
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    const-string v2, "admin"

    iget-object v1, v1, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 162
    :catchall_0
    move-exception v1

    .line 163
    return v0
.end method

.method public static loginFailure(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->recordLoginFailure(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static loginSuccess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/mifiservice/security/Guard;->isShippedDefaultPassword()Z

    move-result v0

    .line 86
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mifiservice/security/SessionManager;->create(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIFISID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; Path=/; HttpOnly"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private static needsPasswordChange(Ljava/lang/String;)Z
    .locals 0

    .line 155
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->needsPasswordChange(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static passwordChanged(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 95
    const-string v0, "Cookie"

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->cookieToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->passwordChanged(Ljava/lang/String;)V

    .line 97
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIFISID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; Path=/; HttpOnly"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static preflight(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 5

    .line 22
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 26
    const/16 v2, 0x193

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "multipart/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const-string p0, "FORBIDDEN"

    invoke-static {p1, v2, p0}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 28
    return v0

    .line 30
    :cond_1
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v1

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_2

    .line 31
    const/16 p0, 0x190

    const-string v1, "INVALID_INPUT:body"

    invoke-static {p1, p0, v1}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 32
    return v0

    .line 34
    :cond_2
    const-string v1, "Host"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/mifiservice/security/Validator;->isAllowedHost(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "HOST"

    if-nez v3, :cond_3

    .line 36
    invoke-static {p1, v2, v4}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 37
    return v0

    .line 39
    :cond_3
    const-string v3, "Origin"

    invoke-interface {p0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {v1, p0}, Lcom/mifiservice/security/Validator;->sameHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 41
    invoke-static {p1, v2, v4}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 42
    return v0

    .line 44
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 23
    :cond_5
    :goto_0
    return v0
.end method

.method public static redact(Lorg/json/JSONObject;)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/mifiservice/security/Redactor;->redactResponse(Lorg/json/JSONObject;)V

    .line 104
    return-void
.end method

.method private static remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 0

    .line 168
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p0

    .line 169
    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method
