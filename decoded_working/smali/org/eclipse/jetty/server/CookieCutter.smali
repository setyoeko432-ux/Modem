.class public Lorg/eclipse/jetty/server/CookieCutter;
.super Ljava/lang/Object;
.source "CookieCutter.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _cookies:[Ljavax/servlet/http/Cookie;

.field _fields:I

.field private _lastCookies:[Ljavax/servlet/http/Cookie;

.field _lazyFields:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public addCookieField(Ljava/lang/String;)V
    .locals 3
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 85
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    goto :goto_0

    .line 99
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    if-le v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_3
    iput-object v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 103
    iput-object v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    iget v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    invoke-static {v0, v1, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 66
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    iget-object v1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 65
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/CookieCutter;->parseFields()V

    goto :goto_1
.end method

.method protected parseFields()V
    .locals 23

    .prologue
    .line 110
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 111
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 113
    const/4 v5, 0x0

    .line 115
    .local v5, "cookies":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 118
    .local v20, "version":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    const/4 v8, 0x0

    .end local v5    # "cookies":Ljava/lang/Object;
    .local v8, "f":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_14

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 127
    .local v9, "hdr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 128
    .local v15, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 130
    .local v19, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 132
    .local v3, "cookie":Ljavax/servlet/http/Cookie;
    const/4 v11, 0x0

    .line 133
    .local v11, "invalue":Z
    const/16 v16, 0x0

    .line 134
    .local v16, "quoted":Z
    const/4 v7, 0x0

    .line 135
    .local v7, "escaped":Z
    const/16 v18, -0x1

    .line 136
    .local v18, "tokenstart":I
    const/16 v17, -0x1

    .line 137
    .local v17, "tokenend":I
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    .local v13, "length":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "last":I
    move-object v4, v3

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .local v4, "cookie":Ljavax/servlet/http/Cookie;
    :goto_2
    if-ge v10, v13, :cond_13

    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 142
    .local v2, "c":C
    if-eqz v16, :cond_5

    .line 144
    if-eqz v7, :cond_1

    .line 146
    const/4 v7, 0x0

    move-object v3, v4

    .line 137
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v4, v3

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_2

    .line 150
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move-object v3, v4

    .line 173
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 153
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_0
    move/from16 v17, v10

    .line 154
    const/16 v16, 0x0

    .line 157
    if-ne v10, v12, :cond_2

    .line 159
    if-eqz v11, :cond_4

    .line 160
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 281
    :cond_2
    :goto_4
    if-eqz v19, :cond_15

    if-eqz v15, :cond_15

    .line 284
    invoke-static {v15}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 285
    invoke-static/range {v19 .. v19}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 289
    :try_start_0
    const-string v21, "$"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 291
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 292
    .local v14, "lowercaseName":Ljava/lang/String;
    const-string v21, "$path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 294
    if-eqz v4, :cond_3

    .line 295
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_5
    move-object v3, v4

    .line 325
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v14    # "lowercaseName":Ljava/lang/String;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_6
    const/4 v15, 0x0

    .line 326
    const/16 v19, 0x0

    goto :goto_3

    .line 163
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_4
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 164
    const-string v19, ""

    goto :goto_4

    .line 170
    :sswitch_1
    const/4 v7, 0x1

    move-object v3, v4

    .line 171
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 179
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_5
    if-eqz v11, :cond_9

    .line 182
    sparse-switch v2, :sswitch_data_1

    .line 213
    if-gez v18, :cond_6

    .line 214
    move/from16 v18, v10

    .line 215
    :cond_6
    move/from16 v17, v10

    .line 216
    if-ne v10, v12, :cond_15

    .line 218
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 219
    goto :goto_4

    :sswitch_2
    move-object v3, v4

    .line 186
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto :goto_3

    .line 189
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_3
    if-gez v18, :cond_7

    .line 191
    const/16 v16, 0x1

    .line 192
    move/from16 v18, v10

    .line 194
    :cond_7
    move/from16 v17, v10

    .line 195
    if-ne v10, v12, :cond_15

    .line 197
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 198
    goto :goto_4

    .line 204
    :sswitch_4
    if-ltz v18, :cond_8

    .line 205
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 208
    :goto_7
    const/16 v18, -0x1

    .line 209
    const/4 v11, 0x0

    .line 210
    goto/16 :goto_4

    .line 207
    :cond_8
    const-string v19, ""

    goto :goto_7

    .line 227
    :cond_9
    sparse-switch v2, :sswitch_data_2

    .line 266
    if-gez v18, :cond_a

    .line 267
    move/from16 v18, v10

    .line 268
    :cond_a
    move/from16 v17, v10

    .line 269
    if-ne v10, v12, :cond_15

    .line 271
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 272
    const-string v19, ""

    goto/16 :goto_4

    :sswitch_5
    move-object v3, v4

    .line 231
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_3

    .line 234
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :sswitch_6
    if-gez v18, :cond_b

    .line 236
    const/16 v16, 0x1

    .line 237
    move/from16 v18, v10

    .line 239
    :cond_b
    move/from16 v17, v10

    .line 240
    if-ne v10, v12, :cond_15

    .line 242
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 243
    const-string v19, ""

    .line 244
    goto/16 :goto_4

    .line 250
    :sswitch_7
    if-ltz v18, :cond_c

    .line 252
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 253
    const-string v19, ""

    .line 255
    :cond_c
    const/16 v18, -0x1

    .line 256
    goto/16 :goto_4

    .line 259
    :sswitch_8
    if-ltz v18, :cond_d

    .line 260
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 261
    :cond_d
    const/16 v18, -0x1

    .line 262
    const/4 v11, 0x1

    move-object v3, v4

    .line 263
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_3

    .line 297
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v14    # "lowercaseName":Ljava/lang/String;
    :cond_e
    :try_start_1
    const-string v21, "$domain"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 299
    if-eqz v4, :cond_3

    .line 300
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 320
    .end local v14    # "lowercaseName":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 322
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .local v6, "e":Ljava/lang/Exception;
    :goto_8
    sget-object v21, Lorg/eclipse/jetty/server/CookieCutter;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 302
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v14    # "lowercaseName":Ljava/lang/String;
    :cond_f
    :try_start_2
    const-string v21, "$port"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 304
    if-eqz v4, :cond_3

    .line 305
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "$port="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 307
    :cond_10
    const-string v21, "$version"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 309
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_5

    .line 314
    .end local v14    # "lowercaseName":Ljava/lang/String;
    :cond_11
    new-instance v3, Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v19

    invoke-direct {v3, v15, v0}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    if-lez v20, :cond_12

    .line 316
    :try_start_3
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    .line 317
    :cond_12
    invoke-static {v5, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .restart local v5    # "cookies":Ljava/lang/Object;
    goto/16 :goto_6

    .line 122
    .end local v2    # "c":C
    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v5    # "cookies":Ljava/lang/Object;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 331
    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v7    # "escaped":Z
    .end local v9    # "hdr":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "invalue":Z
    .end local v12    # "last":I
    .end local v13    # "length":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "quoted":Z
    .end local v17    # "tokenend":I
    .end local v18    # "tokenstart":I
    .end local v19    # "value":Ljava/lang/String;
    :cond_14
    const-class v21, Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljavax/servlet/http/Cookie;

    check-cast v21, [Ljavax/servlet/http/Cookie;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 333
    return-void

    .line 320
    .restart local v2    # "c":C
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v7    # "escaped":Z
    .restart local v9    # "hdr":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "invalue":Z
    .restart local v12    # "last":I
    .restart local v13    # "length":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "quoted":Z
    .restart local v17    # "tokenend":I
    .restart local v18    # "tokenstart":I
    .restart local v19    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_8

    .end local v3    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v4    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_15
    move-object v3, v4

    .end local v4    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "cookie":Ljavax/servlet/http/Cookie;
    goto/16 :goto_3

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 182
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x3b -> :sswitch_4
    .end sparse-switch

    .line 227
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
        0x3b -> :sswitch_7
        0x3d -> :sswitch_8
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    .line 81
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookies"    # [Ljavax/servlet/http/Cookie;

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/server/CookieCutter;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 72
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lastCookies:[Ljavax/servlet/http/Cookie;

    .line 73
    iput-object v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_lazyFields:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/CookieCutter;->_fields:I

    .line 75
    return-void
.end method
