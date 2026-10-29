.class public final Lcom/mifiservice/security/Guard;
.super Ljava/lang/Object;
.source "Guard.java"


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "admin"

.field private static final HEADER:Ljava/lang/String; = "X-Mifi-Req"

.field private static final LOGIN_USER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMEMBER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mifiservice/security/Guard;->REMEMBER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static authorize(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ILorg/json/JSONObject;)Z
    .locals 10

    .line 56
    invoke-static {p2, p3}, Lcom/mifiservice/security/Validator;->validate(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "INVALID_INPUT:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x190

    invoke-static {p1, p2, p0}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 59
    return v1

    .line 62
    :cond_0
    const/16 v0, 0x3e8

    const-string v2, "RATE_LIMITED"

    const/16 v3, 0x1ad

    const-string v4, "Retry-After"

    const/4 v5, 0x1

    const-string v6, "1"

    if-ne p2, v0, :cond_2

    .line 63
    const-string p2, "username"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    sget-object v7, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    sget-object v7, Lcom/mifiservice/security/Guard;->REMEMBER:Ljava/lang/ThreadLocal;

    const-string v8, "remember"

    invoke-virtual {p3, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 66
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/mifiservice/security/SessionManager;->loginAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 67
    nop

    .line 68
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mifiservice/security/SessionManager;->retryAfterSeconds(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-interface {p1, v4, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1, v3, v2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 70
    return v1

    .line 72
    :cond_1
    return v5

    .line 75
    :cond_2
    const/16 v0, 0x42a

    const-string v7, "X-Mifi-Req"

    const-string v8, "FORBIDDEN"

    const/16 v9, 0x193

    if-ne p2, v0, :cond_5

    .line 76
    invoke-interface {p0, v7}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-static {p1, v9, v8}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 78
    return v1

    .line 80
    :cond_3
    nop

    .line 81
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "recover"

    invoke-static {v0, v5}, Lcom/mifiservice/security/SessionManager;->loginAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    nop

    .line 83
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/mifiservice/security/SessionManager;->retryAfterSeconds(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-interface {p1, v4, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p1, v3, v2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 85
    return v1

    .line 88
    :cond_4
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/mifiservice/security/SessionManager;->recordLoginFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p2, p0, p1, p3}, Lcom/mifiservice/security/AuthApi;->handle(ILjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/json/JSONObject;)V

    .line 90
    return v1

    .line 92
    :cond_5
    invoke-static {p2}, Lcom/mifiservice/security/Guard;->isAllowed(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 93
    invoke-static {p1, v9, v8}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_6
    invoke-interface {p0, v7}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    invoke-static {p1, v9, v8}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 98
    return v1

    .line 101
    :cond_7
    const-string v0, "Cookie"

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mifiservice/security/SessionManager;->cookieToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/mifiservice/security/SessionManager;->isValid(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x424

    if-nez v2, :cond_9

    .line 103
    if-ne p2, v3, :cond_8

    .line 104
    invoke-static {p0, p1}, Lcom/mifiservice/security/Guard;->resumeFromRememberMe(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_8

    .line 106
    invoke-static {p2, p0, p1, p3, v0}, Lcom/mifiservice/security/AuthApi;->handle(ILjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 107
    return v1

    .line 110
    :cond_8
    const/16 p0, 0x191

    const-string p2, "SESSION_REQUIRED"

    invoke-static {p1, p0, p2}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_9
    invoke-static {v0}, Lcom/mifiservice/security/Guard;->needsPasswordChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x3fc

    if-eq p2, v0, :cond_a

    if-eq p2, v3, :cond_a

    const/16 v0, 0x425

    if-eq p2, v0, :cond_a

    .line 115
    const-string p0, "PASSWORD_CHANGE_REQUIRED"

    invoke-static {p1, v9, p0}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 116
    return v1

    .line 118
    :cond_a
    invoke-static {p2}, Lcom/mifiservice/security/AuthApi;->owns(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    invoke-static {p2, p0, p1, p3}, Lcom/mifiservice/security/AuthApi;->handle(ILjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/json/JSONObject;)V

    .line 120
    return v1

    .line 122
    :cond_b
    return v5
.end method

.method public static badRequest(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 214
    const/16 v0, 0x190

    const-string v1, "INVALID_INPUT:JSON"

    invoke-static {p0, v0, v1}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 215
    return-void
.end method

.method static cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifi_sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; Path=/; HttpOnly; SameSite=Strict"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static cookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 172
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 173
    return-object v0

    .line 175
    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 176
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 177
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_2
    return-object v0
.end method

.method private static deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V
    .locals 2

    .line 281
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 282
    const-string p1, "text/json"

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 283
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 284
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    const-string v0, "flag"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v0, "error_info"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string p2, "results"

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception p0

    goto :goto_1

    .line 289
    :catch_1
    move-exception p0

    .line 293
    :goto_0
    nop

    .line 294
    :goto_1
    return-void
.end method

.method public static denyMultipart(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 210
    const/16 v0, 0x193

    const-string v1, "FORBIDDEN"

    invoke-static {p0, v0, v1}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 211
    return-void
.end method

.method public static isAllowed(I)Z
    .locals 0

    .line 218
    sparse-switch p0, :sswitch_data_0

    .line 257
    const/4 p0, 0x0

    return p0

    .line 255
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
        0x3f7 -> :sswitch_0
        0x3f8 -> :sswitch_0
        0x3f9 -> :sswitch_0
        0x3fa -> :sswitch_0
        0x3fc -> :sswitch_0
        0x3fd -> :sswitch_0
        0x3ff -> :sswitch_0
        0x401 -> :sswitch_0
        0x402 -> :sswitch_0
        0x403 -> :sswitch_0
        0x404 -> :sswitch_0
        0x405 -> :sswitch_0
        0x41c -> :sswitch_0
        0x41d -> :sswitch_0
        0x41e -> :sswitch_0
        0x41f -> :sswitch_0
        0x424 -> :sswitch_0
        0x425 -> :sswitch_0
        0x426 -> :sswitch_0
        0x427 -> :sswitch_0
        0x428 -> :sswitch_0
        0x429 -> :sswitch_0
        0x42b -> :sswitch_0
        0xbba -> :sswitch_0
    .end sparse-switch
.end method

.method private static isShippedDefaultPassword()Z
    .locals 3

    .line 267
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v1

    .line 268
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

    .line 269
    :catchall_0
    move-exception v1

    .line 270
    return v0
.end method

.method public static loginFailure(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 2

    .line 143
    sget-object v0, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    sget-object v1, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 145
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p0, v0}, Lcom/mifiservice/security/SessionManager;->recordLoginFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static loginSuccess(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3

    .line 126
    sget-object v0, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    sget-object v1, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 128
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v1, v0}, Lcom/mifiservice/security/SessionManager;->recordLoginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/mifiservice/security/Guard;->isShippedDefaultPassword()Z

    move-result v0

    .line 130
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mifiservice/security/SessionManager;->create(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Set-Cookie"

    invoke-interface {p1, v1, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object p0, Lcom/mifiservice/security/Guard;->REMEMBER:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 133
    sget-object v2, Lcom/mifiservice/security/Guard;->REMEMBER:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 134
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/mifiservice/security/RememberMe;->issue()Ljava/lang/String;

    move-result-object p0

    .line 136
    if-eqz p0, :cond_1

    .line 137
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->rememberCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method

.method public static logout(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 158
    const-string v0, "Cookie"

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mifiservice/security/SessionManager;->cookieToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mifiservice/security/SessionManager;->destroy(Ljava/lang/String;)Z

    .line 159
    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mifi_rm"

    invoke-static {p0, v0}, Lcom/mifiservice/security/Guard;->cookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/RememberMe;->revoke(Ljava/lang/String;)V

    .line 160
    const-string p0, "mifi_rm=; Path=/; HttpOnly; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT"

    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string p0, "mifi_sid=; Path=/; HttpOnly; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT"

    invoke-interface {p1, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private static needsPasswordChange(Ljava/lang/String;)Z
    .locals 0

    .line 262
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->needsPasswordChange(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static passwordChanged(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .line 149
    const-string v0, "Cookie"

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->cookieToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->passwordChanged(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/mifiservice/security/RememberMe;->wipeAll()V

    .line 152
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mifiservice/security/SessionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Set-Cookie"

    invoke-static {p0}, Lcom/mifiservice/security/Guard;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public static preflight(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 5

    .line 27
    sget-object v0, Lcom/mifiservice/security/Guard;->LOGIN_USER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 28
    sget-object v0, Lcom/mifiservice/security/Guard;->REMEMBER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 29
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 33
    const/16 v2, 0x193

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "multipart/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string p0, "FORBIDDEN"

    invoke-static {p1, v2, p0}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 35
    return v0

    .line 37
    :cond_1
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v1

    const/high16 v3, 0x10000

    if-le v1, v3, :cond_2

    .line 38
    const/16 p0, 0x190

    const-string v1, "INVALID_INPUT:body"

    invoke-static {p1, p0, v1}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 39
    return v0

    .line 41
    :cond_2
    const-string v1, "Host"

    invoke-interface {p0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/mifiservice/security/Validator;->isAllowedHost(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "HOST"

    if-nez v3, :cond_3

    .line 43
    invoke-static {p1, v2, v4}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 44
    return v0

    .line 46
    :cond_3
    const-string v3, "Origin"

    invoke-interface {p0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {v1, p0}, Lcom/mifiservice/security/Validator;->sameHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 48
    invoke-static {p1, v2, v4}, Lcom/mifiservice/security/Guard;->deny(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 49
    return v0

    .line 51
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 30
    :cond_5
    :goto_0
    return v0
.end method

.method public static redact(Lorg/json/JSONObject;)V
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/mifiservice/security/Redactor;->redactResponse(Lorg/json/JSONObject;)V

    .line 207
    return-void
.end method

.method static rememberCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifi_rm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; Path=/; HttpOnly; SameSite=Strict; Max-Age="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide/32 v0, 0x127500

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 0

    .line 275
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p0

    .line 276
    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private static resumeFromRememberMe(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;
    .locals 3

    .line 186
    const-string v0, "Cookie"

    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mifi_rm"

    invoke-static {v0, v1}, Lcom/mifiservice/security/Guard;->cookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/mifiservice/security/RememberMe;->consume(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v2, "Set-Cookie"

    if-nez v1, :cond_1

    .line 189
    if-eqz v0, :cond_0

    .line 190
    const-string p0, "mifi_rm=; Path=/; HttpOnly; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT"

    invoke-interface {p1, v2, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->remote(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mifiservice/security/SessionManager;->create(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/mifiservice/security/Guard;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v1}, Lcom/mifiservice/security/Guard;->rememberCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object p0
.end method
