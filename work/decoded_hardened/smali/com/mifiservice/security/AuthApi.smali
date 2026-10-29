.class public final Lcom/mifiservice/security/AuthApi;
.super Ljava/lang/Object;
.source "AuthApi.java"


# static fields
.field public static final GET_PREFS:I = 0x428

.field public static final LIST:I = 0x426

.field public static final LOGOUT:I = 0x425

.field public static final NEW_RECOVERY_CODE:I = 0x42b

.field public static final RECOVER:I = 0x42a

.field public static final REVOKE:I = 0x427

.field public static final SET_PREFS:I = 0x429

.field public static final WHOAMI:I = 0x424


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static currentPasswordMatches(Ljava/lang/String;)Z
    .locals 2

    .line 164
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    .line 166
    invoke-static {v0, p0}, Lcom/mifiservice/security/Crypto;->constantTimeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 165
    :goto_0
    return p0
.end method

.method public static handle(ILjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/json/JSONObject;)V
    .locals 1

    .line 34
    const-string v0, "Cookie"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mifiservice/security/SessionManager;->cookieToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mifiservice/security/AuthApi;->handle(ILjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static handle(ILjavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8

    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .line 43
    nop

    .line 44
    const-string v1, "NOT_FOUND"

    const-string v2, "STORAGE"

    const-string v3, "prefs"

    const-string v4, "id"

    const-string v5, ""

    const-string v6, "1"

    const-string v7, "0"

    packed-switch p0, :pswitch_data_0

    .line 123
    goto/16 :goto_2

    .line 98
    :pswitch_0
    :try_start_1
    const-string p0, "admin"

    .line 99
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p0}, Lcom/mifiservice/security/SessionManager;->loginAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 100
    const-string p3, "Retry-After"

    .line 101
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/mifiservice/security/SessionManager;->retryAfterSeconds(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    .line 100
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p3, p0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string p0, "RATE_LIMITED"

    const/16 p1, 0x1ad

    invoke-static {p2, p1, p0}, Lcom/mifiservice/security/AuthApi;->writeStatus(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V

    .line 103
    return-void

    .line 105
    :cond_0
    const-string p4, "password"

    invoke-virtual {p3, p4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/mifiservice/security/AuthApi;->currentPasswordMatches(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 106
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/mifiservice/security/SessionManager;->recordLoginFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    nop

    .line 108
    const-string v2, "INVALID_INPUT:password"

    .line 109
    goto/16 :goto_3

    .line 111
    :cond_1
    invoke-static {}, Lcom/mifiservice/security/Recovery;->generate()Ljava/lang/String;

    move-result-object p0

    .line 112
    if-nez p0, :cond_2

    .line 113
    nop

    .line 114
    goto/16 :goto_3

    .line 116
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string p3, "recoveryCode"

    invoke-virtual {p1, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 120
    goto/16 :goto_1

    .line 90
    :pswitch_1
    invoke-static {p3}, Lcom/mifiservice/security/AuthApi;->recover(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_6

    .line 92
    nop

    .line 93
    goto/16 :goto_3

    .line 84
    :pswitch_2
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/Prefs;->merge(Lorg/json/JSONObject;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 85
    nop

    .line 86
    goto/16 :goto_3

    .line 77
    :pswitch_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    invoke-static {}, Lcom/mifiservice/security/Prefs;->get()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string p1, "recoveryConfigured"

    invoke-static {}, Lcom/mifiservice/security/Recovery;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    move-object v7, v6

    :cond_3
    invoke-virtual {p0, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    goto/16 :goto_1

    .line 71
    :pswitch_4
    invoke-virtual {p3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/mifiservice/security/SessionManager;->revoke(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 72
    nop

    .line 73
    move-object v2, v1

    goto :goto_3

    .line 57
    :pswitch_5
    invoke-static {p4}, Lcom/mifiservice/security/SessionManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 58
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 59
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    .line 60
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 61
    aget-object v3, p4, p1

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v3, "address"

    const/4 v7, 0x1

    aget-object v7, p4, v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v3, "ageSeconds"

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v3, "idleSeconds"

    const/4 v7, 0x3

    aget-object v7, p4, v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v3, "current"

    const/4 v7, 0x4

    aget-object p4, p4, v7

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 68
    :cond_4
    goto :goto_1

    .line 54
    :pswitch_6
    invoke-static {p1, p2}, Lcom/mifiservice/security/Guard;->logout(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 55
    goto :goto_1

    .line 46
    :pswitch_7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string p1, "sessionId"

    invoke-static {p4}, Lcom/mifiservice/security/SessionManager;->publicId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string p1, "needsPasswordChange"

    .line 49
    invoke-static {p4}, Lcom/mifiservice/security/SessionManager;->needsPasswordChange(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    move-object v7, v6

    .line 48
    :cond_5
    invoke-virtual {p0, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    nop

    .line 127
    :cond_6
    :goto_1
    move-object v2, v5

    move-object v7, v6

    goto :goto_3

    .line 124
    :goto_2
    const-string v2, "FORBIDDEN"

    .line 127
    :goto_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 128
    const-string p1, "flag"

    invoke-virtual {p0, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string p1, "error_info"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string p1, "results"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xc8

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x194

    goto :goto_4

    :cond_8
    const/16 p1, 0x190

    :goto_4
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 132
    const-string p1, "text/json"

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 133
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 137
    :catch_0
    move-exception p0

    goto :goto_6

    .line 135
    :catch_1
    move-exception p0

    .line 139
    :goto_5
    nop

    .line 140
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x424
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static owns(I)Z
    .locals 1

    .line 28
    const/16 v0, 0x424

    if-lt p0, v0, :cond_0

    const/16 v0, 0x42b

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static recover(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 144
    invoke-static {}, Lcom/mifiservice/config/MifiConfiguration;->getInstance()Lcom/mifiservice/config/MifiConfiguration;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const-string p0, "STORAGE"

    return-object p0

    .line 148
    :cond_0
    const-string v1, "newpwd"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v3, v0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/mifiservice/security/PasswordPolicy;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_1

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "INVALID_INPUT:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    const-string v3, "code"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mifiservice/security/Recovery;->verifyAndConsume(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 154
    const-string p0, "RECOVERY_FAILED"

    return-object p0

    .line 156
    :cond_2
    iput-object v1, v0, Lcom/mifiservice/config/MifiConfiguration;->loginPassword:Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Lcom/mifiservice/config/MifiConfiguration;->saveToFile()V

    .line 158
    invoke-static {}, Lcom/mifiservice/security/SessionManager;->destroyAll()V

    .line 159
    invoke-static {}, Lcom/mifiservice/security/RememberMe;->wipeAll()V

    .line 160
    const/4 p0, 0x0

    return-object p0
.end method

.method static writeStatus(Ljavax/servlet/http/HttpServletResponse;ILjava/lang/String;)V
    .locals 2

    .line 171
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 172
    const-string p1, "text/json"

    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 173
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 174
    const-string v0, "flag"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "error_info"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string p2, "results"

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception p0

    .line 181
    :goto_0
    return-void
.end method
