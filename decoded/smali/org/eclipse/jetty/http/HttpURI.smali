.class public Lorg/eclipse/jetty/http/HttpURI;
.super Ljava/lang/Object;
.source "HttpURI.java"


# static fields
.field private static final ASTERISK:I = 0xa

.field private static final AUTH:I = 0x4

.field private static final AUTH_OR_PATH:I = 0x1

.field private static final IPV6:I = 0x5

.field private static final PARAM:I = 0x8

.field private static final PATH:I = 0x7

.field private static final PORT:I = 0x6

.field private static final QUERY:I = 0x9

.field private static final SCHEME_OR_PATH:I = 0x2

.field private static final START:I

.field private static final __empty:[B


# instance fields
.field _authority:I

.field _encoded:Z

.field _end:I

.field _fragment:I

.field _host:I

.field _param:I

.field _partial:Z

.field _path:I

.field _port:I

.field _portValue:I

.field _query:I

.field _raw:[B

.field _rawString:Ljava/lang/String;

.field _scheme:I

.field final _utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v2, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v2, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 96
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 100
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    .local v0, "b":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    .line 107
    return-void

    .line 102
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpURI;->parse(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "parsePartialAuth"    # Z

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 91
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 92
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 112
    return-void
.end method

.method private parse2([BII)V
    .locals 12
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v11, 0x23

    const/16 v10, 0x3a

    const/16 v9, 0x2f

    .line 207
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 208
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 209
    move v2, p2

    .line 210
    .local v2, "i":I
    add-int v1, p2, p3

    .line 211
    .local v1, "e":I
    const/4 v6, 0x0

    .line 212
    .local v6, "state":I
    move v4, p2

    .line 213
    .local v4, "m":I
    add-int v7, p2, p3

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    .line 214
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 215
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 216
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 217
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 218
    const/4 v7, -0x1

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 219
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 220
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 221
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 222
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    :cond_0
    move v3, v2

    .line 223
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 225
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 226
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v5, v3

    .line 228
    .local v5, "s":I
    packed-switch v6, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v3, v2

    .line 494
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 232
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_1
    move v4, v5

    .line 233
    sparse-switch v0, :sswitch_data_0

    .line 258
    const/4 v6, 0x2

    move v3, v2

    .line 261
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 236
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    const/4 v6, 0x1

    move v3, v2

    .line 237
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 239
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 240
    const/16 v6, 0x8

    move v3, v2

    .line 241
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 243
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 244
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 245
    const/16 v6, 0x9

    move v3, v2

    .line 246
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 248
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 249
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 250
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    move v3, v2

    .line 251
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 253
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 254
    const/16 v6, 0xa

    move v3, v2

    .line 255
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 266
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_2
    iget-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_partial:Z

    if-nez v7, :cond_1

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-eq v7, v8, :cond_2

    :cond_1
    if-ne v0, v9, :cond_2

    .line 268
    iput v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 269
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 270
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 271
    const/4 v6, 0x4

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 273
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    const/16 v7, 0x3b

    if-eq v0, v7, :cond_3

    const/16 v7, 0x3f

    if-eq v0, v7, :cond_3

    if-ne v0, v11, :cond_4

    .line 275
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 276
    const/4 v6, 0x7

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 280
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_4
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 281
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 282
    const/4 v6, 0x7

    move v3, v2

    .line 284
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 290
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_3
    const/4 v7, 0x6

    if-le p3, v7, :cond_b

    const/16 v7, 0x74

    if-ne v0, v7, :cond_b

    .line 292
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x3

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_5

    .line 294
    add-int/lit8 v5, p2, 0x3

    .line 295
    add-int/lit8 v2, p2, 0x4

    .line 296
    const/16 v0, 0x3a

    move v3, v2

    .line 312
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_2
    sparse-switch v0, :sswitch_data_1

    :goto_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_4
    move v3, v2

    .line 360
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 298
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x4

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_6

    .line 300
    add-int/lit8 v5, p2, 0x4

    .line 301
    add-int/lit8 v2, p2, 0x5

    .line 302
    const/16 v0, 0x3a

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 304
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v8, p2, 0x5

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_b

    .line 306
    add-int/lit8 v5, p2, 0x5

    .line 307
    add-int/lit8 v2, p2, 0x6

    .line 308
    const/16 v0, 0x3a

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 316
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .line 317
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 318
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 319
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v7, v7, v2

    and-int/lit16 v7, v7, 0xff

    int-to-char v0, v7

    .line 320
    if-ne v0, v9, :cond_7

    .line 321
    const/4 v6, 0x1

    goto :goto_4

    .line 324
    :cond_7
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 325
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 326
    const/4 v6, 0x7

    .line 328
    goto :goto_4

    .line 333
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_6
    const/4 v6, 0x7

    move v2, v3

    .line 334
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 339
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_7
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 340
    const/16 v6, 0x8

    move v2, v3

    .line 341
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 346
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_8
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 347
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 348
    const/16 v6, 0x9

    move v2, v3

    .line 349
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 354
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_9
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 355
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 356
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto :goto_3

    .line 365
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_4
    sparse-switch v0, :sswitch_data_2

    :goto_5
    move v3, v2

    .line 393
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 370
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_a
    move v4, v5

    .line 371
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 372
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 373
    const/4 v6, 0x7

    .line 374
    goto :goto_5

    .line 378
    :sswitch_b
    iput v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    goto :goto_5

    .line 383
    :sswitch_c
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 384
    const/4 v6, 0x6

    .line 385
    goto :goto_5

    .line 389
    :sswitch_d
    const/4 v6, 0x5

    goto :goto_5

    .line 398
    :pswitch_5
    sparse-switch v0, :sswitch_data_3

    :goto_6
    move v3, v2

    .line 411
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 402
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No closing \']\' for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    sget-object v10, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v9, p2, p3, v10}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 406
    :sswitch_f
    const/4 v6, 0x4

    goto :goto_6

    .line 416
    :pswitch_6
    if-ne v0, v9, :cond_0

    .line 418
    move v4, v5

    .line 419
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 420
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-gt v7, v8, :cond_8

    .line 421
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 422
    :cond_8
    const/4 v6, 0x7

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 429
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_7
    sparse-switch v0, :sswitch_data_4

    :goto_7
    move v3, v2

    .line 456
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 433
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_10
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 434
    const/16 v6, 0x8

    .line 435
    goto :goto_7

    .line 439
    :sswitch_11
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 440
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 441
    const/16 v6, 0x9

    .line 442
    goto :goto_7

    .line 446
    :sswitch_12
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 447
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 448
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 453
    :sswitch_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    goto :goto_7

    .line 461
    :pswitch_8
    sparse-switch v0, :sswitch_data_5

    :goto_8
    move v3, v2

    .line 476
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 465
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_14
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 466
    const/16 v6, 0x9

    .line 467
    goto :goto_8

    .line 471
    :sswitch_15
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 472
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 481
    :pswitch_9
    if-ne v0, v11, :cond_0

    .line 483
    iput v5, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    goto/16 :goto_1

    .line 491
    :pswitch_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "only \'*\'"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 496
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v5    # "s":I
    .restart local v3    # "i":I
    :cond_9
    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ge v7, v8, :cond_a

    .line 497
    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0xa

    invoke-static {v7, v8, v9, v10}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v7

    iput v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 498
    :cond_a
    return-void

    .end local v3    # "i":I
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v5    # "s":I
    :cond_b
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_2

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2f -> :sswitch_0
        0x3b -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 312
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_9
        0x2f -> :sswitch_6
        0x3a -> :sswitch_5
        0x3b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch

    .line 365
    :sswitch_data_2
    .sparse-switch
        0x2f -> :sswitch_a
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_d
    .end sparse-switch

    .line 398
    :sswitch_data_3
    .sparse-switch
        0x2f -> :sswitch_e
        0x5d -> :sswitch_f
    .end sparse-switch

    .line 429
    :sswitch_data_4
    .sparse-switch
        0x23 -> :sswitch_12
        0x25 -> :sswitch_13
        0x3b -> :sswitch_10
        0x3f -> :sswitch_11
    .end sparse-switch

    .line 461
    :sswitch_data_5
    .sparse-switch
        0x23 -> :sswitch_15
        0x3f -> :sswitch_14
    .end sparse-switch
.end method

.method private toUtf8String(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 503
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 504
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 752
    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 753
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->__empty:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 754
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 755
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 756
    return-void
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 4
    .param p1, "parameters"    # Lorg/eclipse/jetty/util/MultiMap;

    .prologue
    .line 732
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 735
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    goto :goto_0
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "parameters"    # Lorg/eclipse/jetty/util/MultiMap;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 741
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 744
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V

    goto :goto_0

    .line 747
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ne v0, v1, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x10

    .line 557
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v6, v7, :cond_0

    .line 558
    const/4 v6, 0x0

    .line 609
    :goto_0
    return-object v6

    .line 560
    :cond_0
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int v4, v6, v7

    .line 561
    .local v4, "length":I
    const/4 v1, 0x0

    .line 563
    .local v1, "decoding":Z
    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .local v3, "i":I
    :goto_1
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ge v3, v6, :cond_7

    .line 565
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v0, v6, v3

    .line 567
    .local v0, "b":B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_6

    .line 569
    if-nez v1, :cond_1

    .line 571
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 572
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int v9, v3, v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 573
    const/4 v1, 0x1

    .line 576
    :cond_1
    add-int/lit8 v6, v3, 0x2

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v6, v7, :cond_2

    .line 577
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad % encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 578
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0x75

    if-ne v6, v7, :cond_5

    .line 580
    add-int/lit8 v6, v3, 0x5

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v6, v7, :cond_3

    .line 581
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad %u encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 584
    :cond_3
    :try_start_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v7, v3, 0x2

    const/4 v8, 0x4

    const/16 v9, 0x10

    invoke-static {v6, v7, v8, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 585
    .local v5, "unicode":Ljava/lang/String;
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    add-int/lit8 v3, v3, 0x5

    .line 563
    .end local v5    # "unicode":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 588
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 595
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v10}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v0, v6

    .line 596
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    .line 597
    add-int/lit8 v3, v3, 0x2

    .line 599
    goto :goto_2

    .line 601
    :cond_6
    if-eqz v1, :cond_4

    .line 603
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_2

    .line 607
    .end local v0    # "b":B
    :cond_7
    if-nez v1, :cond_8

    .line 608
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    invoke-direct {p0, v6, v4}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 609
    :cond_8
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_utf8b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getDecodedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 614
    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v9, v10, :cond_0

    .line 615
    const/4 v9, 0x0

    .line 674
    :goto_0
    return-object v9

    .line 617
    :cond_0
    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int v5, v9, v10

    .line 618
    .local v5, "length":I
    const/4 v1, 0x0

    .line 619
    .local v1, "bytes":[B
    const/4 v6, 0x0

    .line 621
    .local v6, "n":I
    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .local v4, "i":I
    :goto_1
    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ge v4, v9, :cond_7

    .line 623
    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v0, v9, v4

    .line 625
    .local v0, "b":B
    const/16 v9, 0x25

    if-ne v0, v9, :cond_5

    .line 627
    if-nez v1, :cond_1

    .line 629
    new-array v1, v5, [B

    .line 630
    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    :cond_1
    add-int/lit8 v9, v4, 0x2

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v9, v10, :cond_2

    .line 634
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad % encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 635
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v9, v9, v10

    const/16 v10, 0x75

    if-ne v9, v10, :cond_4

    .line 637
    add-int/lit8 v9, v4, 0x5

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-lt v9, v10, :cond_3

    .line 638
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad %u encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 642
    :cond_3
    :try_start_0
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v10, v4, 0x2

    const/4 v11, 0x4

    const/16 v12, 0x10

    invoke-static {v9, v10, v11, v12}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    .line 643
    .local v8, "unicode":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 644
    .local v3, "encoded":[B
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    array-length v9, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v6, v9

    .line 646
    add-int/lit8 v4, v4, 0x5

    .line 621
    .end local v3    # "encoded":[B
    .end local v8    # "unicode":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 648
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 655
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    add-int/lit8 v10, v4, 0x1

    const/4 v11, 0x2

    const/16 v12, 0x10

    invoke-static {v9, v10, v11, v12}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v0, v9

    .line 656
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .local v7, "n":I
    aput-byte v0, v1, v6

    .line 657
    add-int/lit8 v4, v4, 0x2

    move v6, v7

    .line 659
    .end local v7    # "n":I
    .restart local v6    # "n":I
    goto :goto_2

    .line 661
    :cond_5
    if-nez v1, :cond_6

    .line 663
    add-int/lit8 v6, v6, 0x1

    .line 664
    goto :goto_2

    .line 667
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    aput-byte v0, v1, v6

    move v6, v7

    .end local v7    # "n":I
    .restart local v6    # "n":I
    goto :goto_2

    .line 671
    .end local v0    # "b":B
    :cond_7
    if-nez v1, :cond_8

    .line 672
    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v10, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v11, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v12, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v11, v12

    invoke-static {v9, v10, v11, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 674
    :cond_8
    const/4 v9, 0x0

    invoke-static {v1, v9, v6, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 725
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    if-ne v0, v1, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 727
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    if-ne v0, v1, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 700
    const/4 v0, 0x0

    .line 701
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    if-ne v0, v1, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-ne v0, v1, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 687
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 706
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 708
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 713
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    if-ne v0, v1, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v4, 0x68

    const/16 v3, 0x74

    .line 509
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    if-ne v1, v2, :cond_0

    .line 510
    const/4 v1, 0x0

    .line 526
    :goto_0
    return-object v1

    .line 511
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int v0, v1, v2

    .line 512
    .local v0, "l":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 517
    const-string v1, "http"

    goto :goto_0

    .line 518
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    .line 524
    const-string v1, "https"

    goto :goto_0

    .line 526
    :cond_2
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    .local v0, "b":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 123
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public parse([BII)V
    .locals 1
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->parse2([BII)V

    .line 130
    return-void
.end method

.method public parseConnect([BII)V
    .locals 10
    .param p1, "raw"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 135
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 136
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_encoded:Z

    .line 137
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    .line 138
    move v2, p2

    .line 139
    .local v2, "i":I
    add-int v1, p2, p3

    .line 140
    .local v1, "e":I
    const/4 v5, 0x4

    .line 141
    .local v5, "state":I
    add-int v6, p2, p3

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    .line 142
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    .line 143
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_authority:I

    .line 144
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_host:I

    .line 145
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 146
    const/4 v6, -0x1

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 147
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 148
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_param:I

    .line 149
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_query:I

    .line 150
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_fragment:I

    move v3, v2

    .line 152
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 154
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    int-to-char v0, v6

    .line 155
    .local v0, "c":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .line 157
    .local v4, "s":I
    packed-switch v5, :pswitch_data_0

    move v3, v2

    .line 195
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 161
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v3, v2

    .line 174
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 165
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    .line 197
    .end local v0    # "c":C
    .end local v4    # "s":I
    :goto_2
    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    if-ge v6, v7, :cond_0

    .line 198
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v7, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    iget v9, p0, Lorg/eclipse/jetty/http/HttpURI;->_port:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0xa

    invoke-static {v6, v7, v8, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/http/HttpURI;->_portValue:I

    .line 201
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->_path:I

    .line 202
    return-void

    .line 170
    .restart local v0    # "c":C
    .restart local v4    # "s":I
    :sswitch_1
    const/4 v5, 0x5

    goto :goto_1

    .line 179
    :pswitch_1
    sparse-switch v0, :sswitch_data_1

    :goto_3
    move v3, v2

    .line 192
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 183
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No closing \']\' for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    sget-object v9, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v8, p2, p3, v9}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    :sswitch_3
    const/4 v5, 0x4

    goto :goto_3

    .line 200
    .end local v0    # "c":C
    .end local v4    # "s":I
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No port"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 157
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch

    .line 179
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_2
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 762
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->toUtf8String(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_rawString:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 4
    .param p1, "buf"    # Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .prologue
    .line 768
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->_raw:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->_end:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->_scheme:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 769
    return-void
.end method
