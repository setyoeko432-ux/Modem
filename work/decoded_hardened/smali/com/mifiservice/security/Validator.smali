.class public final Lcom/mifiservice/security/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field public static final MAX_BODY_CHARS:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private static compareIPv4(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 245
    invoke-static {p0}, Lcom/mifiservice/security/Validator;->ipv4Value(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/mifiservice/security/Validator;->ipv4Value(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/mifiservice/security/Validator;->ipv4Value(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcom/mifiservice/security/Validator;->ipv4Value(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 245
    :goto_0
    return p0
.end method

.method private static hostOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 266
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 267
    if-ltz v0, :cond_1

    .line 268
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 270
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 271
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 272
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 274
    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 275
    if-lez v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 276
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 278
    :cond_3
    return-object p0
.end method

.method private static ipv4Value(Ljava/lang/String;)I
    .locals 5

    .line 250
    nop

    .line 251
    nop

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_2

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 254
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 255
    add-int/lit8 v2, v0, 0x1

    .line 252
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_2
    return v1
.end method

.method public static isAllowedHost(Ljava/lang/String;)Z
    .locals 2

    .line 157
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/mifiservice/security/Validator;->hostOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    const-string v0, "localhost"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 p0, 0x1

    return p0

    .line 164
    :cond_1
    invoke-static {p0}, Lcom/mifiservice/security/Validator;->isIPv4(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 158
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIPv4(Ljava/lang/String;)Z
    .locals 7

    .line 112
    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    goto :goto_4

    .line 115
    :cond_0
    nop

    .line 116
    nop

    .line 117
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_9

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_7

    .line 119
    :cond_1
    if-eq v1, v3, :cond_8

    sub-int v4, v1, v3

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    goto :goto_3

    .line 122
    :cond_2
    nop

    .line 123
    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    .line 124
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 125
    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-le v5, v6, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    :cond_4
    :goto_2
    return v0

    .line 130
    :cond_5
    const/16 v3, 0xff

    if-le v4, v3, :cond_6

    .line 131
    return v0

    .line 133
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 134
    add-int/lit8 v3, v1, 0x1

    .line 117
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_8
    :goto_3
    return v0

    .line 137
    :cond_9
    const/4 v1, 0x4

    if-ne v2, v1, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ne v3, p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 113
    :cond_b
    :goto_4
    return v0
.end method

.method public static isMac(Ljava/lang/String;)Z
    .locals 4

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 145
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_1

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    .line 147
    return v0

    .line 149
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_2

    .line 150
    return v0

    .line 144
    :cond_2
    move v1, v2

    goto :goto_0

    .line 153
    :cond_3
    const/4 p0, 0x1

    return p0

    .line 142
    :cond_4
    :goto_1
    return v0
.end method

.method private static requireAlphanumeric(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 214
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    return-object p1

    .line 217
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, p3, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 222
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 223
    const/16 v0, 0x61

    if-lt p3, v0, :cond_2

    const/16 v0, 0x7a

    if-le p3, v0, :cond_5

    :cond_2
    const/16 v0, 0x41

    if-lt p3, v0, :cond_3

    const/16 v0, 0x5a

    if-le p3, v0, :cond_5

    :cond_3
    const/16 v0, 0x30

    if-lt p3, v0, :cond_4

    const/16 v0, 0x39

    if-le p3, v0, :cond_5

    :cond_4
    const/16 v0, 0x5f

    if-eq p3, v0, :cond_5

    .line 225
    return-object p1

    .line 221
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 228
    :cond_6
    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_7
    :goto_1
    return-object p1
.end method

.method private static requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 232
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 234
    return-object p1

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    if-lt p0, p2, :cond_1

    if-gt p0, p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1

    .line 239
    :catch_0
    move-exception p0

    .line 240
    return-object p1
.end method

.method private static requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 202
    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 203
    return-object p5

    .line 205
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 206
    if-nez p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, p3, :cond_2

    goto :goto_0

    .line 209
    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_3
    :goto_0
    return-object p5
.end method

.method public static sameHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 168
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/mifiservice/security/Validator;->hostOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p1}, Lcom/mifiservice/security/Validator;->hostOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 169
    :cond_2
    :goto_1
    return v0
.end method

.method public static validate(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 12

    .line 15
    if-nez p1, :cond_0

    .line 16
    const-string v0, "JSON"

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_1

    .line 19
    const-string v0, "body"

    return-object v0

    .line 21
    :cond_1
    const-string v2, "funcNo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_2

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 23
    return-object v2

    .line 26
    :cond_2
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, p0, :cond_3

    .line 27
    return-object v2

    .line 31
    :cond_3
    nop

    .line 33
    invoke-static {p1}, Lcom/mifiservice/security/Validator;->validateAllStrings(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    return-object v2

    .line 38
    :cond_4
    const/4 v6, 0x3

    const/16 v7, 0x8

    const-string v8, "pwd"

    const/4 v2, 0x0

    const/16 v9, 0x40

    const/4 v3, 0x5

    const/4 v10, 0x1

    const-string v4, ""

    const/4 v11, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 107
    return-object v2

    .line 102
    :sswitch_0
    const-string v0, "id"

    const/16 v3, 0x9

    invoke-static {p1, v0, v11, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 103
    invoke-static {p1, v0, v11, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_5
    const-string v0, "mac"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mifiservice/security/Validator;->isMac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, v0

    :goto_0
    return-object v2

    .line 100
    :sswitch_1
    const-string v0, "type"

    invoke-static {p1, v0, v11, v6}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :sswitch_2
    const-string v0, "range_low"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mifiservice/security/Validator;->isIPv4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 92
    return-object v0

    .line 94
    :cond_7
    const-string v3, "range_high"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mifiservice/security/Validator;->isIPv4(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 95
    return-object v3

    .line 98
    :cond_8
    nop

    .line 97
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/mifiservice/security/Validator;->compareIPv4(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    .line 98
    goto :goto_1

    :cond_9
    const-string v2, "range"

    .line 97
    :goto_1
    return-object v2

    .line 86
    :sswitch_3
    const/4 v4, 0x0

    const-string v5, "ssid"

    const-string v1, "ssid"

    const/4 v2, 0x1

    const/16 v3, 0x20

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 87
    const/4 v4, 0x0

    const-string v5, "ssid"

    const-string v1, "ssid"

    const/4 v2, 0x1

    const/16 v3, 0x20

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_a
    invoke-static {p1, v8, v7, v9}, Lcom/mifiservice/security/Validator;->requireAlphanumeric(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :sswitch_4
    const/4 v4, 0x0

    const-string v5, "oldpwd"

    const-string v1, "oldpwd"

    const/4 v2, 0x1

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 82
    const-string v0, "oldpwd"

    return-object v0

    .line 84
    :cond_b
    const-string v1, "newpwd"

    invoke-static {p1, v1, v7, v9}, Lcom/mifiservice/security/Validator;->requireAlphanumeric(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :sswitch_5
    const-string v1, "profile_num"

    invoke-static {p1, v1, v11, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :sswitch_6
    const-string v1, "no"

    invoke-static {p1, v1, v10, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 63
    invoke-static {p1, v1, v10, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_c
    const/4 v4, 0x0

    const-string v5, "name"

    const-string v1, "name"

    const/4 v2, 0x1

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 66
    const/4 v4, 0x0

    const-string v5, "name"

    const-string v1, "name"

    const/4 v2, 0x1

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_d
    const/4 v4, 0x0

    const-string v5, "apn"

    const-string v1, "apn"

    const/4 v2, 0x1

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 69
    const/4 v4, 0x0

    const-string v5, "apn"

    const-string v1, "apn"

    const/4 v2, 0x1

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_e
    const/4 v4, 0x1

    const-string v5, "user"

    const-string v1, "user"

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 72
    const/4 v4, 0x1

    const-string v5, "user"

    const-string v1, "user"

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_f
    invoke-static {p1, v8, v10, v9}, Lcom/mifiservice/security/Validator;->requireAlphanumeric(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 75
    invoke-static {p1, v8, v10, v9}, Lcom/mifiservice/security/Validator;->requireAlphanumeric(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_10
    const-string v1, "auth"

    invoke-static {p1, v1, v11, v6}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :sswitch_7
    const-string v1, "dns1"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mifiservice/security/Validator;->isIPv4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 58
    return-object v1

    .line 60
    :cond_11
    const-string v1, "dns2"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mifiservice/security/Validator;->isIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2

    :cond_12
    move-object v2, v1

    :goto_2
    return-object v2

    .line 52
    :sswitch_8
    const-string v1, "encryp_type"

    invoke-static {p1, v1, v11, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 53
    invoke-static {p1, v1, v11, v3}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_13
    invoke-static {p1, v8, v7, v9}, Lcom/mifiservice/security/Validator;->requireAlphanumeric(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :sswitch_9
    const/4 v4, 0x0

    const-string v5, "ssid"

    const-string v1, "ssid"

    const/4 v2, 0x1

    const/16 v3, 0x20

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 49
    const-string v1, "maxSta"

    const/16 v2, 0x20

    invoke-static {p1, v1, v10, v2}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 50
    :cond_14
    const/4 v4, 0x0

    const-string v5, "ssid"

    const-string v1, "ssid"

    const/4 v2, 0x1

    const/16 v3, 0x20

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_3
    return-object v0

    .line 46
    :sswitch_a
    const-string v1, "net_mode"

    const/4 v2, 0x2

    invoke-static {p1, v1, v11, v2}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :sswitch_b
    const-string v1, "conn_mode"

    invoke-static {p1, v1, v11, v10}, Lcom/mifiservice/security/Validator;->requireInt(Lorg/json/JSONObject;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :sswitch_c
    nop

    .line 40
    const-string v1, "username"

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/4 v4, 0x1

    const-string v5, "username"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 41
    const/4 v4, 0x1

    const-string v5, "username"

    const-string v1, "username"

    const/4 v2, 0x1

    const/16 v3, 0x20

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 42
    :cond_15
    const/4 v4, 0x1

    const-string v5, "password"

    const-string v1, "password"

    const/4 v2, 0x1

    const/16 v3, 0x40

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/mifiservice/security/Validator;->requireSafeString(Lorg/json/JSONObject;Ljava/lang/String;IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_4
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_c
        0x3ec -> :sswitch_b
        0x3ed -> :sswitch_a
        0x3ef -> :sswitch_9
        0x3f2 -> :sswitch_8
        0x3f4 -> :sswitch_7
        0x3f9 -> :sswitch_6
        0x3fa -> :sswitch_5
        0x3fc -> :sswitch_4
        0x401 -> :sswitch_3
        0x402 -> :sswitch_2
        0x41d -> :sswitch_1
        0x41e -> :sswitch_0
    .end sparse-switch
.end method

.method private static validateAllStrings(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .line 177
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 182
    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_0

    .line 184
    return-object v1

    .line 186
    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 188
    const/16 v5, 0x20

    if-lt v4, v5, :cond_2

    const/16 v5, 0x7f

    if-eq v4, v5, :cond_2

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x60

    if-eq v4, v5, :cond_2

    const/16 v5, 0x24

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x26

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 186
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    :cond_2
    :goto_2
    return-object v1

    .line 195
    :cond_3
    goto :goto_0

    .line 196
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
