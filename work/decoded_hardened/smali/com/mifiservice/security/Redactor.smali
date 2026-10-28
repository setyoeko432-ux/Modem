.class public final Lcom/mifiservice/security/Redactor;
.super Ljava/lang/Object;
.source "Redactor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static configured(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public static maskIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 17
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 21
    const-string p0, "****"

    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 25
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static redactArray(Lorg/json/JSONArray;)V
    .locals 3

    .line 56
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 57
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 58
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 59
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/mifiservice/security/Redactor;->redactObject(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 60
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 61
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/mifiservice/security/Redactor;->redactArray(Lorg/json/JSONArray;)V

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method private static redactIdentifier(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mifiservice/security/Redactor;->maskIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 88
    :cond_0
    :goto_0
    return-void
.end method

.method private static redactObject(Lorg/json/JSONObject;)V
    .locals 2

    .line 39
    const-string v0, "pwd"

    invoke-static {p0, v0}, Lcom/mifiservice/security/Redactor;->redactSecret(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 40
    const-string v0, "password"

    invoke-static {p0, v0}, Lcom/mifiservice/security/Redactor;->redactSecret(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 41
    const-string v0, "imei"

    invoke-static {p0, v0}, Lcom/mifiservice/security/Redactor;->redactIdentifier(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 42
    const-string v0, "imsi"

    invoke-static {p0, v0}, Lcom/mifiservice/security/Redactor;->redactIdentifier(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 43
    const-string v0, "iccid"

    invoke-static {p0, v0}, Lcom/mifiservice/security/Redactor;->redactIdentifier(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 45
    const-string v0, "results"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 47
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/mifiservice/security/Redactor;->redactArray(Lorg/json/JSONArray;)V

    .line 49
    :cond_0
    const-string v0, "info_arr"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 50
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 51
    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/mifiservice/security/Redactor;->redactArray(Lorg/json/JSONArray;)V

    .line 53
    :cond_1
    return-void
.end method

.method public static redactResponse(Lorg/json/JSONObject;)V
    .locals 0

    .line 32
    if-nez p0, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/mifiservice/security/Redactor;->redactObject(Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method

.method private static redactSecret(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mifiservice/security/Redactor;->configured(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string p1, "passwordConfigured"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 78
    :cond_0
    :goto_0
    return-void
.end method
