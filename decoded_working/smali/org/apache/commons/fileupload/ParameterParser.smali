.class public Lorg/apache/commons/fileupload/ParameterParser;
.super Ljava/lang/Object;
.source "ParameterParser.java"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private lowerCaseNames:Z

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    .line 47
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 52
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    .line 57
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 62
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 67
    iput-boolean v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    .line 74
    return-void
.end method

.method private getToken(Z)Ljava/lang/String;
    .locals 5
    .param p1, "quoted"    # Z

    .prologue
    const/16 v3, 0x22

    .line 97
    :goto_0
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    goto :goto_0

    .line 101
    :cond_0
    :goto_1
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    goto :goto_1

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    aget-char v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    if-ne v1, v3, :cond_2

    .line 109
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 110
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 112
    :cond_2
    const/4 v0, 0x0

    .line 113
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    if-le v1, v2, :cond_3

    .line 114
    new-instance v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 116
    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private hasChar()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOneOf(C[C)Z
    .locals 4
    .param p1, "ch"    # C
    .param p2, "charray"    # [C

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "result":Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p2, v2

    .line 131
    .local v0, "element":C
    if-ne p1, v0, :cond_1

    .line 132
    const/4 v1, 0x1

    .line 136
    .end local v0    # "element":C
    :cond_0
    return v1

    .line 130
    .restart local v0    # "element":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseQuotedToken([C)Ljava/lang/String;
    .locals 7
    .param p1, "terminators"    # [C

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 175
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 176
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "quoted":Z
    const/4 v1, 0x0

    .line 179
    .local v1, "charEscaped":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    iget-object v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v6, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v0, v5, v6

    .line 181
    .local v0, "ch":C
    if-nez v2, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/fileupload/ParameterParser;->isOneOf(C[C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    .end local v0    # "ch":C
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 184
    .restart local v0    # "ch":C
    :cond_1
    if-nez v1, :cond_2

    const/16 v5, 0x22

    if-ne v0, v5, :cond_2

    .line 185
    if-nez v2, :cond_3

    move v2, v3

    .line 187
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_4

    move v1, v3

    .line 188
    :goto_2
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 189
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    goto :goto_0

    :cond_3
    move v2, v4

    .line 185
    goto :goto_1

    :cond_4
    move v1, v4

    .line 187
    goto :goto_2
.end method

.method private parseToken([C)Ljava/lang/String;
    .locals 3
    .param p1, "terminators"    # [C

    .prologue
    .line 150
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 151
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 152
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v0, v1, v2

    .line 154
    .local v0, "ch":C
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/fileupload/ParameterParser;->isOneOf(C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    .end local v0    # "ch":C
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/fileupload/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 157
    .restart local v0    # "ch":C
    :cond_1
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 158
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public isLowerCaseNames()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    return v0
.end method

.method public parse(Ljava/lang/String;C)Ljava/util/Map;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/fileupload/ParameterParser;->parse([CC)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;[C)Ljava/util/Map;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separators"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 230
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 231
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 244
    :goto_0
    return-object v4

    .line 233
    :cond_1
    aget-char v1, p2, v4

    .line 234
    .local v1, "separator":C
    if-eqz p1, :cond_3

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    .local v0, "idx":I
    array-length v5, p2

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v2, p2, v4

    .line 237
    .local v2, "separator2":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 238
    .local v3, "tmp":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    if-ge v3, v0, :cond_2

    .line 239
    move v0, v3

    .line 240
    move v1, v2

    .line 236
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "idx":I
    .end local v2    # "separator2":C
    .end local v3    # "tmp":I
    :cond_3
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v4

    goto :goto_0
.end method

.method public parse([CC)Ljava/util/Map;
    .locals 2
    .param p1, "charArray"    # [C
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CC)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/fileupload/ParameterParser;->parse([CIIC)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public parse([CIIC)Ljava/util/Map;
    .locals 7
    .param p1, "charArray"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIIC)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    if-nez p1, :cond_1

    .line 299
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 336
    :cond_0
    return-object v2

    .line 301
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    .line 303
    iput p2, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 304
    iput p3, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "paramName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 308
    .local v1, "paramValue":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v3, 0x2

    new-array v3, v3, [C

    aput-char v6, v3, v4

    aput-char p4, v3, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parseToken([C)Ljava/lang/String;

    move-result-object v0

    .line 311
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_3

    .line 313
    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 314
    new-array v3, v5, [C

    aput-char p4, v3, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parseQuotedToken([C)Ljava/lang/String;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_3

    .line 319
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 325
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, p4, :cond_4

    .line 326
    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 328
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 329
    iget-boolean v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    if-eqz v3, :cond_5

    .line 330
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_5
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setLowerCaseNames(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    .line 217
    return-void
.end method
