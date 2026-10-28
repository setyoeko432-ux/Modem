.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 3013
    const/16 v1, 0x67

    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 3016
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 3017
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 3016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3020
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 3021
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 3020
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3023
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 3024
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 3023
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3026
    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "features"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 76
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 83
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 86
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 92
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 94
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez v0, :cond_1

    .line 95
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 97
    :cond_1
    return-void
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x20

    .line 3007
    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2590
    new-array v4, p1, [C

    .line 2591
    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .line 2592
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 2593
    aget-char v0, p0, v1

    .line 2595
    .local v0, "ch":C
    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    .line 2596
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v0, v4, v3

    .line 2592
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 2599
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    .line 2601
    sparse-switch v0, :sswitch_data_0

    .line 2668
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2603
    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 2606
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 2609
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 2612
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 2615
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 2618
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 2621
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 2624
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 2627
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 2630
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 2633
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 2636
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 2640
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 2643
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    .line 2646
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    .line 2649
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    .line 2652
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    .line 2655
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 2658
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 2661
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 2671
    .end local v0    # "ch":C
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 2601
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private scanStringSingleQuote()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2710
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2711
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2714
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 2716
    .local v0, "chLocal":C
    const/16 v2, 0x27

    if-ne v0, v2, :cond_0

    .line 2826
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2827
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2828
    return-void

    .line 2720
    :cond_0
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_2

    .line 2721
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2722
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2725
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed single-quote string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2728
    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_5

    .line 2729
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_4

    .line 2730
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2732
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 2733
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [C

    .line 2734
    .local v1, "newsbuf":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2735
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 2739
    .end local v1    # "newsbuf":[C
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 2743
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 2745
    sparse-switch v0, :sswitch_data_0

    .line 2808
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2809
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed single-quote string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2747
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2750
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2753
    :sswitch_2
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2756
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2759
    :sswitch_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2762
    :sswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2765
    :sswitch_6
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 2768
    :sswitch_7
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2771
    :sswitch_8
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2774
    :sswitch_9
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2777
    :sswitch_a
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2780
    :sswitch_b
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2784
    :sswitch_c
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2787
    :sswitch_d
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2790
    :sswitch_e
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2793
    :sswitch_f
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2796
    :sswitch_10
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2799
    :sswitch_11
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2802
    :sswitch_12
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x10

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aget v3, v3, v4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2805
    :sswitch_13
    new-instance v2, Ljava/lang/String;

    new-array v3, v7, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2814
    :cond_5
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_6

    .line 2815
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 2819
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_7

    .line 2820
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 2822
    :cond_7
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v0, v2, v3

    goto/16 :goto_0

    .line 2745
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 1066
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1068
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1069
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 510
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 512
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 515
    :cond_0
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 5
    .param p1, "decimal"    # Z

    .prologue
    .line 2981
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2983
    .local v0, "chLocal":C
    const/16 v2, 0x46

    if-ne v0, v2, :cond_0

    .line 2984
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 2994
    :goto_0
    return-object v2

    .line 2987
    :cond_0
    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 2988
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 2991
    :cond_1
    if-eqz p1, :cond_2

    .line 2992
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    .line 2994
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2996
    :catch_0
    move-exception v1

    .line 2997
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 3002
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 534
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .locals 12

    .prologue
    .line 1009
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 1010
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1013
    :cond_0
    const/4 v9, 0x0

    .line 1014
    .local v9, "result":I
    const/4 v8, 0x0

    .line 1015
    .local v8, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v5, v10, v11

    .line 1019
    .local v5, "max":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3

    .line 1020
    const/4 v8, 0x1

    .line 1021
    const/high16 v4, -0x80000000

    .line 1022
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1026
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    const-wide/32 v6, -0xccccccc

    .line 1027
    .local v6, "multmin":J
    if-ge v3, v5, :cond_1

    .line 1028
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    add-int/lit8 v1, v10, -0x30

    .line 1029
    .local v1, "digit":I
    neg-int v9, v1

    move v3, v2

    .line 1031
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_9

    .line 1033
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1035
    .local v0, "chLocal":C
    const/16 v10, 0x4c

    if-eq v0, v10, :cond_2

    const/16 v10, 0x53

    if-eq v0, v10, :cond_2

    const/16 v10, 0x42

    if-ne v0, v10, :cond_4

    .line 1051
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v8, :cond_8

    .line 1052
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v10, v10, 0x1

    if-le v2, v10, :cond_7

    .line 1058
    .end local v9    # "result":I
    :goto_3
    return v9

    .line 1024
    .end local v4    # "limit":I
    .end local v6    # "multmin":J
    .restart local v9    # "result":I
    :cond_3
    const v4, -0x7fffffff

    .restart local v4    # "limit":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1039
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v6    # "multmin":J
    :cond_4
    add-int/lit8 v1, v0, -0x30

    .line 1041
    .restart local v1    # "digit":I
    int-to-long v10, v9

    cmp-long v10, v10, v6

    if-gez v10, :cond_5

    .line 1042
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1044
    :cond_5
    mul-int/lit8 v9, v9, 0xa

    .line 1045
    add-int v10, v4, v1

    if-ge v9, v10, :cond_6

    .line 1046
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1048
    :cond_6
    sub-int/2addr v9, v1

    move v3, v2

    .line 1049
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1055
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1058
    :cond_8
    neg-int v9, v9

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 409
    const-wide/16 v9, 0x0

    .line 410
    .local v9, "result":J
    const/4 v8, 0x0

    .line 411
    .local v8, "negative":Z
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 412
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 414
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v1, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v5, v12, v13

    .line 419
    .local v5, "max":I
    const/16 v11, 0x20

    .line 421
    .local v11, "type":C
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 438
    :goto_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 439
    const/4 v8, 0x1

    .line 440
    const-wide/high16 v3, -0x8000000000000000L

    .line 441
    .local v3, "limit":J
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 445
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    const-wide v6, -0xcccccccccccccccL

    .line 446
    .local v6, "multmin":J
    if-ge v2, v5, :cond_1

    .line 447
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    add-int/lit8 v0, v12, -0x30

    .line 448
    .local v0, "digit":I
    neg-int v12, v0

    int-to-long v9, v12

    move v2, v1

    .line 450
    .end local v0    # "digit":I
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    :goto_2
    if-ge v2, v5, :cond_5

    .line 452
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    add-int/lit8 v0, v12, -0x30

    .line 453
    .restart local v0    # "digit":I
    cmp-long v12, v9, v6

    if-gez v12, :cond_3

    .line 454
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 493
    .end local v0    # "digit":I
    :goto_3
    return-object v12

    .line 423
    .end local v3    # "limit":J
    .end local v6    # "multmin":J
    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    .line 424
    const/16 v11, 0x4c

    .line 425
    goto :goto_0

    .line 427
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 428
    const/16 v11, 0x53

    .line 429
    goto :goto_0

    .line 431
    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    .line 432
    const/16 v11, 0x42

    .line 433
    goto :goto_0

    .line 443
    :cond_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v3    # "limit":J
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 456
    .end local v2    # "i":I
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    .restart local v6    # "multmin":J
    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v9, v12

    .line 457
    int-to-long v12, v0

    add-long/2addr v12, v3

    cmp-long v12, v9, v12

    if-gez v12, :cond_4

    .line 458
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 460
    :cond_4
    int-to-long v12, v0

    sub-long/2addr v9, v12

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 463
    .end local v0    # "digit":I
    :cond_5
    if-eqz v8, :cond_a

    .line 464
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_9

    .line 465
    const-wide/32 v12, -0x80000000

    cmp-long v12, v9, v12

    if-ltz v12, :cond_8

    const/16 v12, 0x4c

    if-eq v11, v12, :cond_8

    .line 466
    const/16 v12, 0x53

    if-ne v11, v12, :cond_6

    .line 467
    long-to-int v12, v9

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 470
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v12, 0x42

    if-ne v11, v12, :cond_7

    .line 471
    long-to-int v12, v9

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 474
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    long-to-int v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 476
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 478
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 481
    :cond_a
    neg-long v9, v9

    .line 482
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v9, v12

    if-gtz v12, :cond_d

    const/16 v12, 0x4c

    if-eq v11, v12, :cond_d

    .line 483
    const/16 v12, 0x53

    if-ne v11, v12, :cond_b

    .line 484
    long-to-int v12, v9

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 487
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    const/16 v12, 0x42

    if-ne v11, v12, :cond_c

    .line 488
    long-to-int v12, v9

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 491
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_c
    long-to-int v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 493
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_d
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 3

    .prologue
    .line 2677
    const/4 v1, 0x0

    .line 2678
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2679
    .local v0, "chLocal":C
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    .line 2688
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2683
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2684
    const/4 v2, 0x0

    goto :goto_1

    .line 2677
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 522
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(II)Z
    .locals 1
    .param p1, "features"    # I
    .param p2, "feature"    # I

    .prologue
    .line 526
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    and-int v0, p1, p2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 518
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1072
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v0

    .line 1076
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    .line 1077
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    .line 1078
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x4

    .line 1079
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 51
    return-void
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 2927
    const-wide/16 v10, 0x0

    .line 2928
    .local v10, "result":J
    const/4 v9, 0x0

    .line 2932
    .local v9, "negative":Z
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 2933
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2936
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v6, v12, v13

    .line 2938
    .local v6, "max":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    .line 2939
    const/4 v9, 0x1

    .line 2940
    const-wide/high16 v4, -0x8000000000000000L

    .line 2941
    .local v4, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2945
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    const-wide v7, -0xcccccccccccccccL

    .line 2946
    .local v7, "multmin":J
    if-ge v3, v6, :cond_1

    .line 2947
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    add-int/lit8 v1, v12, -0x30

    .line 2948
    .local v1, "digit":I
    neg-int v12, v1

    int-to-long v10, v12

    move v3, v2

    .line 2950
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v6, :cond_9

    .line 2952
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2954
    .local v0, "chLocal":C
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_2

    const/16 v12, 0x53

    if-eq v0, v12, :cond_2

    const/16 v12, 0x42

    if-ne v0, v12, :cond_4

    .line 2969
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v9, :cond_8

    .line 2970
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    .line 2976
    .end local v10    # "result":J
    :goto_3
    return-wide v10

    .line 2943
    .end local v4    # "limit":J
    .end local v7    # "multmin":J
    .restart local v10    # "result":J
    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 2958
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v7    # "multmin":J
    :cond_4
    add-int/lit8 v1, v0, -0x30

    .line 2959
    .restart local v1    # "digit":I
    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 2960
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2962
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 2963
    int-to-long v12, v1

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 2964
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2966
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 2967
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 2973
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2976
    :cond_8
    neg-long v10, v10

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final matchField([C)Z
    .locals 3
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v2, 0x5b

    .line 1135
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return v0

    .line 1139
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1140
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1142
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1144
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1156
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1145
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_2

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1147
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1148
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1149
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1150
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1151
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1153
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final matchStat()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
    .line 359
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 362
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 367
    :goto_1
    return-void

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 112
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 115
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 117
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 122
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 218
    :goto_1
    return-void

    .line 127
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 133
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 138
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 143
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v0, v2, :cond_6

    .line 204
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 146
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    goto :goto_1

    .line 156
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 159
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    goto :goto_1

    .line 162
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    goto :goto_1

    .line 165
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    goto :goto_1

    .line 171
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    goto :goto_1

    .line 174
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 175
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 178
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 179
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 182
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 183
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 186
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 187
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 190
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 191
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 194
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 195
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 198
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 199
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 207
    :cond_6
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 208
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    goto/16 :goto_1

    .line 210
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1f

    if-le v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_9

    .line 211
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    .line 214
    :cond_9
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x4e -> :sswitch_5
        0x53 -> :sswitch_5
        0x54 -> :sswitch_5
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7
    .param p1, "expect"    # I

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 228
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 348
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 230
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_2

    .line 231
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 356
    :goto_1
    return-void

    .line 235
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_0

    .line 236
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 242
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 243
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 248
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 249
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 254
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 255
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 260
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 261
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 266
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 267
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 272
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 273
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto :goto_1

    .line 278
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_8

    .line 279
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 284
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 285
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 292
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 293
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto/16 :goto_1

    .line 298
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 299
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto/16 :goto_1

    .line 304
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_b

    .line 305
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 310
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 311
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 317
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_c

    .line 318
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 323
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 324
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 325
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 330
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 331
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 336
    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 337
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 342
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    goto/16 :goto_1

    .line 353
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 377
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 379
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 380
    return-void

    .line 383
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 388
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .prologue
    .line 370
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 371
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .param p1, "expect"    # I

    .prologue
    .line 498
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 499
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    const/4 v3, 0x0

    .line 2834
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 2836
    .local v0, "newsbuf":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2837
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 2839
    .end local v0    # "newsbuf":[C
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v1, v2

    .line 2840
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 798
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9
    .param p1, "expectNext"    # C

    .prologue
    const/16 v8, 0x65

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1812
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1814
    const/4 v1, 0x0

    .line 1815
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1817
    .local v0, "chLocal":C
    const/4 v3, 0x0

    .line 1818
    .local v3, "value":Z
    const/16 v5, 0x74

    if-ne v0, v5, :cond_2

    .line 1819
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1820
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    .line 1821
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1822
    add-int/lit8 v1, v2, 0x3

    .line 1823
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1824
    const/4 v3, 0x1

    move v2, v1

    .line 1850
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_0
    :goto_0
    if-ne v0, p1, :cond_6

    .line 1851
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1852
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1853
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v4, v3

    .line 1861
    :goto_1
    return v4

    .line 1826
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .line 1827
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1829
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_2
    const/16 v5, 0x66

    if-ne v0, v5, :cond_4

    .line 1830
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1831
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    .line 1832
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x3

    .line 1833
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    .line 1834
    add-int/lit8 v1, v2, 0x4

    .line 1835
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1836
    const/4 v3, 0x0

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 1838
    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .line 1839
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1841
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    const/16 v4, 0x31

    if-ne v0, v4, :cond_5

    .line 1842
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1843
    const/4 v3, 0x1

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 1844
    :cond_5
    const/16 v4, 0x30

    if-ne v0, v4, :cond_0

    .line 1845
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1846
    const/4 v3, 0x0

    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 1856
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1857
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v2, v1

    .line 1858
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 1860
    :cond_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v4, v3

    .line 1861
    goto/16 :goto_1
.end method

.method public final scanDouble(C)D
    .locals 12
    .param p1, "seperator"    # C

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, -0x1

    const/16 v10, 0x39

    const/16 v9, 0x30

    .line 2285
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2287
    const/4 v2, 0x0

    .line 2288
    .local v2, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2291
    .local v0, "chLocal":C
    if-lt v0, v9, :cond_3

    if-gt v0, v10, :cond_3

    move v2, v3

    .line 2293
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2294
    if-lt v0, v9, :cond_0

    if-gt v0, v10, :cond_0

    move v2, v3

    .line 2295
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2301
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_2

    .line 2302
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2303
    if-lt v0, v9, :cond_1

    if-gt v0, v10, :cond_1

    .line 2305
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2306
    if-lt v0, v9, :cond_2

    if-gt v0, v10, :cond_2

    move v2, v3

    .line 2307
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 2313
    :cond_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2335
    :goto_2
    return-wide v6

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    move v2, v3

    .line 2318
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2319
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 2320
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2321
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 2327
    .local v6, "value":D
    if-ne v0, p1, :cond_4

    .line 2328
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2329
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2330
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2331
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2

    .line 2323
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    .restart local v3    # "offset":I
    :cond_3
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .line 2324
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2334
    .restart local v1    # "count":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":D
    :cond_4
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_2
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p3, "serperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1412
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1414
    const/4 v1, 0x0

    .line 1416
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_0
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 2515
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 2516
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2518
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2520
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 2521
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2523
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2525
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 2526
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2528
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2530
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 2531
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2533
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2535
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 2536
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2540
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    .line 2542
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2546
    return-void

    .line 2544
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1919
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1921
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1922
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2007
    :goto_0
    return v3

    .line 1926
    :cond_0
    array-length v1, p1

    .line 1927
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1930
    .local v0, "chLocal":C
    const/16 v5, 0x74

    if-ne v0, v5, :cond_4

    .line 1931
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_1

    .line 1932
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1933
    goto :goto_0

    .line 1935
    :cond_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_2

    .line 1936
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1937
    goto :goto_0

    .line 1939
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_3

    .line 1940
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1941
    goto :goto_0

    .line 1944
    :cond_3
    const/4 v3, 0x1

    .line 1969
    .local v3, "value":Z
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1970
    if-ne v0, v10, :cond_a

    .line 1971
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1972
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1973
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1974
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1945
    .end local v3    # "value":Z
    :cond_4
    const/16 v5, 0x66

    if-ne v0, v5, :cond_9

    .line 1946
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_5

    .line 1947
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1948
    goto :goto_0

    .line 1950
    :cond_5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_6

    .line 1951
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1952
    goto/16 :goto_0

    .line 1954
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_7

    .line 1955
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1956
    goto/16 :goto_0

    .line 1958
    :cond_7
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_8

    .line 1959
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1960
    goto/16 :goto_0

    .line 1963
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1965
    .end local v1    # "offset":I
    .end local v3    # "value":Z
    .restart local v2    # "offset":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1966
    goto/16 :goto_0

    .line 1979
    .restart local v3    # "value":Z
    :cond_a
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_f

    .line 1980
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1981
    if-ne v0, v10, :cond_b

    .line 1982
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1983
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1984
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2001
    :goto_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1985
    :cond_b
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_c

    .line 1986
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1987
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1988
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1989
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_d

    .line 1990
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1991
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1992
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1993
    :cond_d
    if-ne v0, v9, :cond_e

    .line 1994
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1995
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1996
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1998
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1999
    goto/16 :goto_0

    .line 2003
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2004
    goto/16 :goto_0
.end method

.method public final scanFieldDouble([C)D
    .locals 10
    .param p1, "fieldName"    # [C

    .prologue
    .line 2340
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2342
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2343
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2344
    const-wide/16 v6, 0x0

    .line 2437
    :goto_0
    return-wide v6

    .line 2347
    :cond_0
    array-length v2, p1

    .line 2348
    .local v2, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2351
    .local v0, "chLocal":C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_7

    const/16 v8, 0x39

    if-gt v0, v8, :cond_7

    move v2, v3

    .line 2353
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2354
    const/16 v8, 0x30

    if-lt v0, v8, :cond_1

    const/16 v8, 0x39

    if-gt v0, v8, :cond_1

    move v2, v3

    .line 2355
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 2361
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 2362
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2363
    const/16 v8, 0x30

    if-lt v0, v8, :cond_2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    .line 2365
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2366
    const/16 v8, 0x30

    if-lt v0, v8, :cond_3

    const/16 v8, 0x39

    if-gt v0, v8, :cond_3

    move v2, v3

    .line 2367
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2373
    :cond_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2374
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 2378
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v8, 0x65

    if-eq v0, v8, :cond_4

    const/16 v8, 0x45

    if-ne v0, v8, :cond_6

    .line 2379
    :cond_4
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2380
    const/16 v8, 0x2b

    if-eq v0, v8, :cond_5

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_e

    .line 2381
    :cond_5
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2384
    :goto_3
    const/16 v8, 0x30

    if-lt v0, v8, :cond_6

    const/16 v8, 0x39

    if-gt v0, v8, :cond_6

    .line 2385
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_3

    :cond_6
    move v2, v3

    .line 2392
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, p1

    add-int v4, v8, v9

    .line 2393
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 2394
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2395
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 2401
    .local v6, "value":D
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_8

    .line 2402
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2403
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2404
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2405
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 2397
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    .restart local v3    # "offset":I
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2398
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2409
    .end local v3    # "offset":I
    .restart local v1    # "count":I
    .restart local v2    # "offset":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":D
    :cond_8
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    .line 2410
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2411
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_9

    .line 2412
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2413
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2414
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2431
    :goto_4
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 2415
    :cond_9
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_a

    .line 2416
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2417
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2418
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2419
    :cond_a
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    .line 2420
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2421
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2422
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2423
    :cond_b
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_c

    .line 2424
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2425
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2426
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2428
    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2429
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2433
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2434
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .end local v1    # "count":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    :cond_e
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_3
.end method

.method public final scanFieldFloat([C)F
    .locals 13
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0x39

    const/16 v9, 0x30

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 2143
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2145
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2146
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v6, v7

    .line 2226
    :goto_0
    return v6

    .line 2150
    :cond_0
    array-length v2, p1

    .line 2151
    .local v2, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2154
    .local v0, "chLocal":C
    if-lt v0, v9, :cond_4

    if-gt v0, v11, :cond_4

    move v2, v3

    .line 2156
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2157
    if-lt v0, v9, :cond_1

    if-gt v0, v11, :cond_1

    move v2, v3

    .line 2158
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 2164
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 2165
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2166
    if-lt v0, v9, :cond_2

    if-gt v0, v11, :cond_2

    .line 2168
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2169
    if-lt v0, v9, :cond_3

    if-gt v0, v11, :cond_3

    move v2, v3

    .line 2170
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2176
    :cond_2
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v6, v7

    .line 2177
    goto :goto_0

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    move v2, v3

    .line 2181
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, p1

    add-int v4, v8, v9

    .line 2182
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 2183
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2184
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 2190
    .local v6, "value":F
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_5

    .line 2191
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2192
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2193
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2194
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2186
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":F
    .restart local v3    # "offset":I
    :cond_4
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v6, v7

    .line 2187
    goto :goto_0

    .line 2198
    .end local v3    # "offset":I
    .restart local v1    # "count":I
    .restart local v2    # "offset":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":F
    :cond_5
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_a

    .line 2199
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2200
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_6

    .line 2201
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2202
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2203
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2220
    :goto_3
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 2204
    :cond_6
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_7

    .line 2205
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2206
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2207
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2208
    :cond_7
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_8

    .line 2209
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2210
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2211
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2212
    :cond_8
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_9

    .line 2213
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2214
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2215
    const/16 v7, 0x1a

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2217
    :cond_9
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v6, v7

    .line 2218
    goto/16 :goto_0

    .line 2222
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v6, v7

    .line 2223
    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x1a

    const/16 v9, 0x10

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1729
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1731
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1732
    const/4 v6, -0x2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1808
    :cond_0
    :goto_0
    return v4

    .line 1736
    :cond_1
    array-length v2, p1

    .line 1737
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1739
    .local v0, "chLocal":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_2

    const/4 v1, 0x1

    .line 1740
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_f

    .line 1741
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1745
    :goto_2
    const/16 v6, 0x30

    if-lt v0, v6, :cond_7

    const/16 v6, 0x39

    if-gt v0, v6, :cond_7

    .line 1746
    add-int/lit8 v4, v0, -0x30

    .line 1748
    .local v4, "value":I
    :goto_3
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1749
    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-gt v0, v6, :cond_3

    .line 1750
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "value":I
    .restart local v3    # "offset":I
    :cond_2
    move v1, v5

    .line 1739
    goto :goto_1

    .line 1751
    .restart local v1    # "negative":Z
    .restart local v4    # "value":I
    :cond_3
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_4

    .line 1752
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1753
    goto :goto_0

    .line 1758
    :cond_4
    if-ltz v4, :cond_5

    array-length v6, p1

    add-int/lit8 v6, v6, 0xe

    if-le v3, v6, :cond_8

    .line 1760
    :cond_5
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_6

    const/16 v6, 0x11

    if-ne v3, v6, :cond_6

    if-nez v1, :cond_8

    .line 1763
    :cond_6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1764
    goto :goto_0

    .line 1768
    .end local v3    # "offset":I
    .end local v4    # "value":I
    .restart local v2    # "offset":I
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1769
    goto :goto_0

    .line 1772
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_8
    if-ne v0, v11, :cond_9

    .line 1773
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1774
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1775
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1776
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1777
    if-eqz v1, :cond_0

    neg-int v4, v4

    goto :goto_0

    .line 1780
    :cond_9
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_e

    .line 1781
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1782
    if-ne v0, v11, :cond_a

    .line 1783
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1784
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1785
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1802
    :goto_4
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1808
    if-eqz v1, :cond_0

    neg-int v4, v4

    goto/16 :goto_0

    .line 1786
    :cond_a
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_b

    .line 1787
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1788
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1789
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1790
    :cond_b
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_c

    .line 1791
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1792
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1793
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1794
    :cond_c
    if-ne v0, v10, :cond_d

    .line 1795
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1796
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1797
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1799
    :cond_d
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1800
    goto/16 :goto_0

    .line 1804
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_e
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1805
    goto/16 :goto_0

    .end local v4    # "value":I
    :cond_f
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_2
.end method

.method public scanFieldLong([C)J
    .locals 10
    .param p1, "fieldName"    # [C

    .prologue
    .line 2011
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2013
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2014
    const/4 v6, -0x2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2015
    const-wide/16 v4, 0x0

    .line 2086
    :cond_0
    :goto_0
    return-wide v4

    .line 2018
    :cond_1
    array-length v2, p1

    .line 2019
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2021
    .local v0, "chLocal":C
    const/4 v1, 0x0

    .line 2022
    .local v1, "negative":Z
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_d

    .line 2023
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2024
    const/4 v1, 0x1

    .line 2028
    :goto_1
    const/16 v6, 0x30

    if-lt v0, v6, :cond_5

    const/16 v6, 0x39

    if-gt v0, v6, :cond_5

    .line 2029
    add-int/lit8 v6, v0, -0x30

    int-to-long v4, v6

    .line 2031
    .local v4, "value":J
    :goto_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2032
    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-gt v0, v6, :cond_2

    .line 2033
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2034
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_3

    .line 2035
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2036
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2041
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    const/16 v6, 0x15

    if-le v3, v6, :cond_6

    .line 2042
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2043
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2046
    .end local v3    # "offset":I
    .end local v4    # "value":J
    .restart local v2    # "offset":I
    :cond_5
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2047
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 2050
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_6
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_7

    .line 2051
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2052
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2053
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2054
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2055
    if-eqz v1, :cond_0

    neg-long v4, v4

    goto :goto_0

    .line 2058
    :cond_7
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_c

    .line 2059
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2060
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_8

    .line 2061
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2062
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2063
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2080
    :goto_3
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2086
    if-eqz v1, :cond_0

    neg-long v4, v4

    goto/16 :goto_0

    .line 2064
    :cond_8
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_9

    .line 2065
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2066
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2067
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2068
    :cond_9
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_a

    .line 2069
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2070
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2071
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2072
    :cond_a
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_b

    .line 2073
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2074
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v2, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2075
    const/16 v6, 0x1a

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 2077
    :cond_b
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2078
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 2082
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_c
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2083
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .end local v4    # "value":J
    :cond_d
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_1
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    .line 1164
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1166
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1167
    const/4 v12, -0x2

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    .line 1254
    :goto_0
    return-object v10

    .line 1173
    :cond_0
    array-length v5, p1

    .line 1174
    .local v5, "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1176
    .local v0, "chLocal":C
    const/16 v12, 0x22

    if-eq v0, v12, :cond_1

    .line 1177
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1179
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1184
    :cond_1
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v8, v12, 0x1

    .line 1185
    .local v8, "startIndex":I
    const/16 v12, 0x22

    invoke-virtual {p0, v12, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1186
    .local v3, "endIndex":I
    const/4 v12, -0x1

    if-ne v3, v12, :cond_2

    .line 1187
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "unclosed str"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1190
    :cond_2
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v9, v12, 0x1

    .line 1191
    .local v9, "startIndex2":I
    sub-int v12, v3, v9

    invoke-virtual {p0, v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 1192
    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 1194
    :goto_1
    const/4 v7, 0x0

    .line 1195
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 1196
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_3

    .line 1197
    add-int/lit8 v7, v7, 0x1

    .line 1195
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1202
    :cond_3
    rem-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_5

    .line 1208
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sub-int v2, v3, v12

    .line 1209
    .local v2, "chars_len":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0, v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1211
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    .line 1214
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    :cond_4
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sub-int v12, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int v5, v6, v12

    .line 1215
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1216
    move-object v10, v11

    .line 1219
    .local v10, "strVal":Ljava/lang/String;
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_6

    .line 1220
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v6

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1221
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1222
    const/4 v12, 0x3

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1205
    .end local v10    # "strVal":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v7    # "slashCount":I
    :cond_5
    const/16 v12, 0x22

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1206
    goto :goto_1

    .line 1226
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .restart local v10    # "strVal":Ljava/lang/String;
    :cond_6
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_b

    .line 1227
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1228
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_7

    .line 1229
    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1230
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1231
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1248
    :goto_3
    const/4 v12, 0x4

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1232
    :cond_7
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_8

    .line 1233
    const/16 v12, 0xf

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1234
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1235
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1236
    :cond_8
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_9

    .line 1237
    const/16 v12, 0xd

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1238
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1239
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1240
    :cond_9
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_a

    .line 1241
    const/16 v12, 0x14

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1242
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1243
    const/16 v12, 0x1a

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1245
    :cond_a
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1246
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 1250
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_b
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1251
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 16
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1495
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1496
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1497
    const/4 v7, 0x0

    .line 1626
    :goto_0
    return-object v7

    .line 1502
    :cond_0
    const-class v14, Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1503
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1516
    .local v7, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p1

    array-length v8, v0

    .line 1517
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1519
    .local v1, "chLocal":C
    const/16 v14, 0x5b

    if-eq v1, v14, :cond_3

    .line 1520
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1521
    const/4 v7, 0x0

    goto :goto_0

    .line 1504
    .end local v1    # "chLocal":C
    .end local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v9    # "offset":I
    :cond_1
    const-class v14, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1505
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 1508
    .end local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 1509
    .end local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 1510
    .local v4, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 1524
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "chLocal":C
    .restart local v7    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v9    # "offset":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v9, v8

    .line 1528
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_2
    const/16 v14, 0x22

    if-ne v1, v14, :cond_8

    .line 1529
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v11, v14, v9

    .line 1530
    .local v11, "startIndex":I
    const/16 v14, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 1531
    .local v5, "endIndex":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_4

    .line 1532
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1535
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v12, v14, v9

    .line 1536
    .local v12, "startIndex2":I
    sub-int v14, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v13

    .line 1537
    .local v13, "stringVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 1539
    :goto_3
    const/4 v10, 0x0

    .line 1540
    .local v10, "slashCount":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_5

    .line 1541
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_5

    .line 1542
    add-int/lit8 v10, v10, 0x1

    .line 1540
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1547
    :cond_5
    rem-int/lit8 v14, v10, 0x2

    if-nez v14, :cond_7

    .line 1553
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    sub-int v3, v5, v14

    .line 1554
    .local v3, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1556
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v13

    .line 1559
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v6    # "i":I
    .end local v10    # "slashCount":I
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    sub-int v14, v5, v14

    add-int/lit8 v14, v14, 0x1

    add-int v8, v9, v14

    .line 1560
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1562
    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1577
    .end local v5    # "endIndex":I
    .end local v11    # "startIndex":I
    .end local v12    # "startIndex2":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :goto_5
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_b

    .line 1578
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v9, v8

    .line 1579
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_2

    .line 1550
    .restart local v5    # "endIndex":I
    .restart local v6    # "i":I
    .restart local v10    # "slashCount":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "startIndex2":I
    .restart local v13    # "stringVal":Ljava/lang/String;
    :cond_7
    const/16 v14, 0x22

    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 1551
    goto :goto_3

    .line 1563
    .end local v5    # "endIndex":I
    .end local v6    # "i":I
    .end local v10    # "slashCount":I
    .end local v11    # "startIndex":I
    .end local v12    # "startIndex2":I
    .end local v13    # "stringVal":Ljava/lang/String;
    :cond_8
    const/16 v14, 0x6e

    if-ne v1, v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    .line 1564
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x75

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x1

    .line 1565
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x2

    .line 1566
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_9

    .line 1567
    add-int/lit8 v8, v9, 0x3

    .line 1568
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1569
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1570
    :cond_9
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_a

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v14

    if-nez v14, :cond_a

    .line 1571
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v9, v8

    .line 1591
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_d

    .line 1592
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1593
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1594
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1574
    :cond_a
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "illega str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1582
    :cond_b
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_c

    .line 1583
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v9, v8

    .line 1584
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_6

    .line 1587
    :cond_c
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1588
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1598
    :cond_d
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_12

    .line 1599
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1600
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_e

    .line 1601
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1602
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1603
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1620
    :goto_7
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1604
    :cond_e
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_f

    .line 1605
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1606
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1607
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 1608
    :cond_f
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_10

    .line 1609
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1610
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1611
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 1612
    :cond_10
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_11

    .line 1613
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1614
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1615
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 1617
    :cond_11
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1618
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1622
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1623
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 13
    .param p1, "fieldName"    # [C
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v12, 0x2c

    const/16 v9, 0x22

    const/16 v11, 0x1a

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 1337
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1339
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1340
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v6, v7

    .line 1407
    :goto_0
    return-object v6

    .line 1344
    :cond_0
    array-length v3, p1

    .line 1345
    .local v3, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1347
    .local v0, "chLocal":C
    if-eq v0, v9, :cond_1

    .line 1348
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v6, v7

    .line 1349
    goto :goto_0

    .line 1353
    :cond_1
    const/4 v1, 0x0

    .local v1, "hash":I
    move v3, v4

    .line 1355
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1356
    if-ne v0, v9, :cond_2

    .line 1357
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, p1

    add-int/2addr v8, v9

    add-int/lit8 v5, v8, 0x1

    .line 1358
    .local v5, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v5

    add-int/lit8 v2, v8, -0x1

    .line 1359
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1360
    .local v6, "strVal":Ljava/lang/String;
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1372
    if-ne v0, v12, :cond_3

    .line 1373
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1374
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1375
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1364
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_2
    mul-int/lit8 v8, v1, 0x1f

    add-int v1, v8, v0

    .line 1366
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_9

    .line 1367
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v6, v7

    .line 1368
    goto :goto_0

    .line 1379
    .end local v4    # "offset":I
    .restart local v2    # "len":I
    .restart local v3    # "offset":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_8

    .line 1380
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1381
    if-ne v0, v12, :cond_4

    .line 1382
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1383
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1384
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1401
    :goto_2
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1385
    :cond_4
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_5

    .line 1386
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1387
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1388
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1389
    :cond_5
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_6

    .line 1390
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1391
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1392
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1393
    :cond_6
    if-ne v0, v11, :cond_7

    .line 1394
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1395
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1396
    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1398
    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v6, v7

    .line 1399
    goto/16 :goto_0

    .line 1403
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object v6, v7

    .line 1404
    goto/16 :goto_0

    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_9
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_1
.end method

.method public final scanFloat(C)F
    .locals 11
    .param p1, "seperator"    # C

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 2230
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2232
    const/4 v2, 0x0

    .line 2233
    .local v2, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2236
    .local v0, "chLocal":C
    if-lt v0, v8, :cond_3

    if-gt v0, v9, :cond_3

    move v2, v3

    .line 2238
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2239
    if-lt v0, v8, :cond_0

    if-gt v0, v9, :cond_0

    move v2, v3

    .line 2240
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2246
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_2

    .line 2247
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2248
    if-lt v0, v8, :cond_1

    if-gt v0, v9, :cond_1

    .line 2250
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2251
    if-lt v0, v8, :cond_2

    if-gt v0, v9, :cond_2

    move v2, v3

    .line 2252
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 2258
    :cond_1
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2280
    :goto_2
    return v6

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    move v2, v3

    .line 2263
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2264
    .local v4, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    sub-int/2addr v7, v4

    add-int/lit8 v1, v7, -0x1

    .line 2265
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2266
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 2272
    .local v6, "value":F
    if-ne v0, p1, :cond_4

    .line 2273
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2274
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2275
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2276
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2

    .line 2268
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":F
    .restart local v3    # "offset":I
    :cond_3
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .line 2269
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2279
    .restart local v1    # "count":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":F
    :cond_4
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_2
.end method

.method public final scanIdent()V
    .locals 2

    .prologue
    .line 2549
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 2553
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2555
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2556
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2560
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 2562
    .local v0, "ident":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2563
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2579
    :goto_0
    return-void

    .line 2564
    :cond_1
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2565
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2566
    :cond_2
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2567
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2568
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2569
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2570
    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2571
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2572
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2573
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2574
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2575
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2577
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public scanInt(C)I
    .locals 11
    .param p1, "expectNext"    # C

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1867
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1869
    const/4 v2, 0x0

    .line 1870
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1872
    .local v0, "chLocal":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_0

    const/4 v1, 0x1

    .line 1873
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_9

    .line 1874
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1878
    :goto_1
    if-lt v0, v9, :cond_3

    if-gt v0, v10, :cond_3

    .line 1879
    add-int/lit8 v4, v0, -0x30

    .line 1881
    .local v4, "value":I
    :goto_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1882
    if-lt v0, v9, :cond_1

    if-gt v0, v10, :cond_1

    .line 1883
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "value":I
    .restart local v3    # "offset":I
    :cond_0
    move v1, v5

    .line 1872
    goto :goto_0

    .line 1884
    .restart local v1    # "negative":Z
    .restart local v4    # "value":I
    :cond_1
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_2

    .line 1885
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v4, v5

    .line 1913
    .end local v4    # "value":I
    :goto_3
    return v4

    .line 1891
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_2
    if-gez v4, :cond_5

    .line 1892
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v4, v5

    .line 1893
    goto :goto_3

    .line 1896
    .end local v4    # "value":I
    :cond_3
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1897
    goto :goto_3

    .line 1908
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1909
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 1901
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    if-ne v0, p1, :cond_4

    .line 1902
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1903
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1904
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1905
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1906
    if-eqz v1, :cond_6

    neg-int v4, v4

    .end local v4    # "value":I
    :cond_6
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 1912
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1913
    if-eqz v1, :cond_8

    neg-int v4, v4

    .end local v4    # "value":I
    :cond_8
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method public scanLong(C)J
    .locals 10
    .param p1, "expectNextChar"    # C

    .prologue
    .line 2090
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2092
    const/4 v2, 0x0

    .line 2093
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2095
    .local v0, "chLocal":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_0

    const/4 v1, 0x1

    .line 2096
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_8

    .line 2097
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2101
    :goto_1
    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-gt v0, v6, :cond_3

    .line 2102
    add-int/lit8 v6, v0, -0x30

    int-to-long v4, v6

    .line 2104
    .local v4, "value":J
    :goto_2
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2105
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-gt v0, v6, :cond_1

    .line 2106
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2095
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "value":J
    .restart local v3    # "offset":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2107
    .restart local v1    # "negative":Z
    .restart local v4    # "value":J
    :cond_1
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_2

    .line 2108
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2109
    const-wide/16 v4, 0x0

    move v2, v3

    .line 2137
    .end local v3    # "offset":I
    .end local v4    # "value":J
    .restart local v2    # "offset":I
    :goto_3
    return-wide v4

    .line 2114
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 2115
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2116
    const-wide/16 v4, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 2119
    .end local v4    # "value":J
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2120
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 2131
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2132
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2124
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    if-ne v0, p1, :cond_4

    .line 2125
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2126
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2127
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2128
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2129
    if-eqz v1, :cond_6

    neg-long v4, v4

    .end local v4    # "value":J
    :cond_6
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 2136
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":J
    :cond_7
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .line 2137
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v2    # "offset":I
    .end local v4    # "value":J
    .restart local v3    # "offset":I
    :cond_8
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 2470
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 2471
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2473
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2475
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 2476
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2477
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 2478
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2480
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2482
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 2483
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2485
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2487
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_4

    .line 2489
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2512
    :goto_0
    return-void

    .line 2491
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2496
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 2497
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2499
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2501
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 2502
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2504
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2506
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_9

    .line 2508
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2510
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 2843
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2845
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_0

    .line 2846
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2847
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2851
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_1

    .line 2852
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2856
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2859
    :cond_1
    const/4 v0, 0x0

    .line 2861
    .local v0, "isDouble":Z
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 2862
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2863
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2864
    const/4 v0, 0x1

    .line 2867
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_2

    .line 2868
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2872
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 2876
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    .line 2877
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2878
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2919
    :cond_3
    :goto_2
    if-eqz v0, :cond_f

    .line 2920
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2924
    :goto_3
    return-void

    .line 2879
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    .line 2880
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2881
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 2882
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    .line 2883
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2884
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 2885
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_7

    .line 2886
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2887
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2888
    const/4 v0, 0x1

    goto :goto_2

    .line 2889
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_8

    .line 2890
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2891
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2892
    const/4 v0, 0x1

    goto :goto_2

    .line 2893
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    .line 2894
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2895
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2897
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_a

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_b

    .line 2898
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2899
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2903
    :cond_b
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_c

    .line 2904
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2908
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 2911
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v6, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_e

    .line 2912
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2913
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2916
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 2922
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 13
    .param p1, "expectNextChar"    # C

    .prologue
    .line 1258
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1260
    const/4 v5, 0x0

    .line 1261
    .local v5, "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1263
    .local v0, "chLocal":C
    const/16 v11, 0x6e

    if-ne v0, v11, :cond_2

    .line 1264
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x75

    if-ne v11, v12, :cond_0

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_0

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_0

    .line 1265
    add-int/lit8 v5, v6, 0x3

    .line 1266
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1272
    if-ne v0, p1, :cond_1

    .line 1273
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1274
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1275
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1276
    const/4 v9, 0x0

    .line 1332
    :goto_0
    return-object v9

    .line 1268
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_0
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1269
    const/4 v9, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 1278
    :cond_1
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1279
    const/4 v9, 0x0

    goto :goto_0

    .line 1283
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v11, 0x22

    if-eq v0, v11, :cond_3

    .line 1284
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 1291
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v11, 0x1

    .line 1292
    .local v8, "startIndex":I
    const/16 v11, 0x22

    invoke-virtual {p0, v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1293
    .local v3, "endIndex":I
    const/4 v11, -0x1

    if-ne v3, v11, :cond_4

    .line 1294
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed str"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1297
    :cond_4
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    sub-int v12, v3, v8

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 1298
    .local v10, "stringVal":Ljava/lang/String;
    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 1300
    :goto_1
    const/4 v7, 0x0

    .line 1301
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 1302
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_5

    .line 1303
    add-int/lit8 v7, v7, 0x1

    .line 1301
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1308
    :cond_5
    rem-int/lit8 v11, v7, 0x2

    if-nez v11, :cond_7

    .line 1314
    sub-int v2, v3, v8

    .line 1315
    .local v2, "chars_len":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1317
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v10

    .line 1320
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    :cond_6
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    sub-int v11, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v11, 0x1

    .line 1321
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1322
    move-object v9, v10

    .line 1325
    .local v9, "strVal":Ljava/lang/String;
    if-ne v0, p1, :cond_8

    .line 1326
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1327
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1328
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1329
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1311
    .end local v5    # "offset":I
    .end local v9    # "strVal":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "offset":I
    .restart local v7    # "slashCount":I
    :cond_7
    const/16 v11, 0x22

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1312
    goto :goto_1

    .line 1331
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .restart local v9    # "strVal":Ljava/lang/String;
    :cond_8
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1332
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0
.end method

.method public final scanString()V
    .locals 17

    .prologue
    .line 854
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 855
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 858
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 860
    .local v1, "ch":C
    const/16 v13, 0x22

    if-ne v1, v13, :cond_0

    .line 984
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 986
    return-void

    .line 864
    :cond_0
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_2

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v13

    if-nez v13, :cond_1

    .line 866
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 869
    :cond_1
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 872
    :cond_2
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_6

    .line 873
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v13, :cond_5

    .line 874
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 876
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-lt v13, v14, :cond_4

    .line 877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    .line 878
    .local v2, "newCapcity":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v13, v2, :cond_3

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 881
    :cond_3
    new-array v3, v2, [C

    .line 882
    .local v3, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 886
    .end local v2    # "newCapcity":I
    .end local v3    # "newsbuf":[C
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 891
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 893
    sparse-switch v1, :sswitch_data_0

    .line 966
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 967
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 895
    :sswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 898
    :sswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 901
    :sswitch_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 904
    :sswitch_3
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 907
    :sswitch_4
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 910
    :sswitch_5
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 913
    :sswitch_6
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 916
    :sswitch_7
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 919
    :sswitch_8
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 922
    :sswitch_9
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 925
    :sswitch_a
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 928
    :sswitch_b
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 932
    :sswitch_c
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 935
    :sswitch_d
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 938
    :sswitch_e
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 941
    :sswitch_f
    const/16 v13, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 944
    :sswitch_10
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 947
    :sswitch_11
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 950
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v9, v1

    .line 951
    .local v9, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v10, v1

    .line 953
    .local v10, "x2":C
    sget-object v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    .line 954
    .local v12, "x_val":I
    int-to-char v11, v12

    .line 955
    .local v11, "x_char":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 958
    .end local v9    # "x1":C
    .end local v10    # "x2":C
    .end local v11    # "x_char":C
    .end local v12    # "x_val":I
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v4, v1

    .line 959
    .local v4, "u1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v5, v1

    .line 960
    .local v5, "u2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v6, v1

    .line 961
    .local v6, "u3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v7, v1

    .line 962
    .local v7, "u4":C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    aput-char v4, v14, v15

    const/4 v15, 0x1

    aput-char v5, v14, v15

    const/4 v15, 0x2

    aput-char v6, v14, v15

    const/4 v15, 0x3

    aput-char v7, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 963
    .local v8, "val":I
    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 972
    .end local v4    # "u1":C
    .end local v5    # "u2":C
    .end local v6    # "u3":C
    .end local v7    # "u4":C
    .end local v8    # "val":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v13, :cond_7

    .line 973
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 977
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-ne v13, v14, :cond_8

    .line 978
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 980
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v13, v14

    goto/16 :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 12
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .prologue
    .line 1630
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1632
    const/4 v5, 0x0

    .line 1633
    .local v5, "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1635
    .local v0, "chLocal":C
    const/16 v10, 0x6e

    if-ne v0, v10, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 1636
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1637
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 1638
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 1639
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, p2, :cond_0

    .line 1641
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1642
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1643
    const/4 v10, 0x5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1724
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_0
    return-void

    .line 1647
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_0
    const/16 v10, 0x5b

    if-eq v0, v10, :cond_1

    .line 1648
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1649
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 1652
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 1655
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_1
    const/16 v10, 0x6e

    if-ne v0, v10, :cond_2

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    .line 1656
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_2

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    .line 1657
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_2

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x2

    .line 1658
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_2

    .line 1659
    add-int/lit8 v5, v6, 0x3

    .line 1660
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1661
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1703
    :goto_2
    const/16 v10, 0x2c

    if-ne v0, v10, :cond_9

    .line 1704
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 1705
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1662
    :cond_2
    const/16 v10, 0x5d

    if-ne v0, v10, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 1663
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1717
    :goto_3
    if-ne v0, p2, :cond_b

    .line 1718
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1719
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1720
    const/4 v10, 0x3

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1665
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    const/16 v10, 0x22

    if-eq v0, v10, :cond_4

    .line 1666
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1667
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1669
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v10, v6

    .line 1670
    .local v8, "startIndex":I
    const/16 v10, 0x22

    invoke-virtual {p0, v10, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1671
    .local v3, "endIndex":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_5

    .line 1672
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "unclosed str"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1675
    :cond_5
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    sub-int v11, v3, v8

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v9

    .line 1676
    .local v9, "stringVal":Ljava/lang/String;
    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 1678
    :goto_4
    const/4 v7, 0x0

    .line 1679
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_5
    if-ltz v4, :cond_6

    .line 1680
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_6

    .line 1681
    add-int/lit8 v7, v7, 0x1

    .line 1679
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 1686
    :cond_6
    rem-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_8

    .line 1692
    sub-int v2, v3, v8

    .line 1693
    .local v2, "chars_len":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    invoke-virtual {p0, v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1695
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v9

    .line 1698
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    :cond_7
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    sub-int v10, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int v5, v6, v10

    .line 1699
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1700
    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1689
    .restart local v4    # "i":I
    .restart local v7    # "slashCount":I
    :cond_8
    const/16 v10, 0x22

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1690
    goto :goto_4

    .line 1708
    .end local v3    # "endIndex":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .end local v8    # "startIndex":I
    .end local v9    # "stringVal":Ljava/lang/String;
    :cond_9
    const/16 v10, 0x5d

    if-ne v0, v10, :cond_a

    .line 1709
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1710
    goto/16 :goto_3

    .line 1713
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_a
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1714
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1723
    :cond_b
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 582
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v2, :cond_0

    .line 583
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 586
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v3, :cond_2

    .line 587
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 596
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 600
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 601
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 602
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 606
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 607
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 611
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 612
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 25
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    .prologue
    .line 623
    const/4 v11, 0x0

    .line 625
    .local v11, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 626
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 627
    const/4 v10, 0x0

    .line 630
    .local v10, "hasSpecial":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 632
    .local v9, "chLocal":C
    move/from16 v0, p2

    if-ne v9, v0, :cond_0

    .line 774
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 777
    if-nez v10, :cond_9

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 781
    const/4 v14, 0x0

    .line 785
    .local v14, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v16

    .line 790
    .end local v14    # "offset":I
    .local v16, "value":Ljava/lang/String;
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 793
    return-object v16

    .line 636
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    .line 637
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "unclosed.str"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 640
    :cond_1
    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v9, v0, :cond_5

    .line 641
    if-nez v10, :cond_4

    .line 642
    const/4 v10, 0x1

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v12, v21, 0x2

    .line 646
    .local v12, "newCapcity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v12, :cond_2

    .line 647
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 649
    :cond_2
    new-array v13, v12, [C

    .line 650
    .local v13, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 656
    .end local v12    # "newCapcity":I
    .end local v13    # "newsbuf":[C
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    .line 659
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 661
    sparse-switch v9, :sswitch_data_0

    .line 754
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 755
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "unclosed.str.lit"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 663
    :sswitch_0
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 664
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 667
    :sswitch_1
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 668
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 671
    :sswitch_2
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 672
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 675
    :sswitch_3
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 676
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 679
    :sswitch_4
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 680
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 683
    :sswitch_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 684
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 687
    :sswitch_6
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 688
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 691
    :sswitch_7
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 692
    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 695
    :sswitch_8
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x8

    .line 696
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 699
    :sswitch_9
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x9

    .line 700
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 703
    :sswitch_a
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xa

    .line 704
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 707
    :sswitch_b
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xb

    .line 708
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 712
    :sswitch_c
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xc

    .line 713
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 716
    :sswitch_d
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xd

    .line 717
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 720
    :sswitch_e
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x22

    .line 721
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 724
    :sswitch_f
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x27

    .line 725
    const/16 v21, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 728
    :sswitch_10
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x2f

    .line 729
    const/16 v21, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 732
    :sswitch_11
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x5c

    .line 733
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 736
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 737
    .local v17, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 739
    .local v18, "x2":C
    sget-object v21, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v21, v21, v17

    mul-int/lit8 v21, v21, 0x10

    sget-object v22, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v22, v22, v18

    add-int v20, v21, v22

    .line 740
    .local v20, "x_val":I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 741
    .local v19, "x_char":C
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v19

    .line 742
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 745
    .end local v17    # "x1":C
    .end local v18    # "x2":C
    .end local v19    # "x_char":C
    .end local v20    # "x_val":I
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v5, v9

    .line 746
    .local v5, "c1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v6, v9

    .line 747
    .local v6, "c2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v7, v9

    .line 748
    .local v7, "c3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v8, v9

    .line 749
    .local v8, "c4":C
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-char v5, v22, v23

    const/16 v23, 0x1

    aput-char v6, v22, v23

    const/16 v23, 0x2

    aput-char v7, v22, v23

    const/16 v23, 0x3

    aput-char v8, v22, v23

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 750
    .local v15, "val":I
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v15

    .line 751
    int-to-char v0, v15

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 760
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v15    # "val":I
    :cond_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 762
    if-nez v10, :cond_6

    .line 763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 767
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 768
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 770
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v9, v21, v22

    goto/16 :goto_0

    .line 783
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v14, v21, 0x1

    .restart local v14    # "offset":I
    goto/16 :goto_1

    .line 787
    .end local v14    # "offset":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 661
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v10, 0x6c

    const/4 v7, 0x1

    .line 805
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 806
    .local v4, "firstIdentifierFlags":[Z
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 808
    .local v2, "first":C
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v9, v4

    if-ge v8, v9, :cond_0

    aget-boolean v8, v4, v2

    if-eqz v8, :cond_1

    :cond_0
    move v3, v7

    .line 809
    .local v3, "firstFlag":Z
    :goto_0
    if-nez v3, :cond_2

    .line 810
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 811
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 808
    .end local v3    # "firstFlag":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 814
    .restart local v3    # "firstFlag":Z
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 816
    .local v6, "identifierFlags":[Z
    move v5, v2

    .line 818
    .local v5, "hash":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 819
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 822
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 824
    .local v1, "chLocal":C
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 825
    aget-boolean v7, v6, v1

    if-nez v7, :cond_3

    .line 836
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 837
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 839
    const v0, 0x33c587

    .line 840
    .local v0, "NULL_HASH":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    const v7, 0x33c587

    if-ne v5, v7, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x3

    .line 841
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 842
    const/4 v7, 0x0

    .line 847
    :goto_2
    return-object v7

    .line 830
    .end local v0    # "NULL_HASH":I
    :cond_3
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    .line 832
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_1

    .line 847
    .restart local v0    # "NULL_HASH":I
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v7, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "serperator"    # C

    .prologue
    const/16 v11, 0x6c

    const/16 v8, 0x22

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1420
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1422
    const/4 v3, 0x0

    .line 1423
    .local v3, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1425
    .local v0, "chLocal":C
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_2

    .line 1426
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    .line 1427
    add-int/lit8 v3, v4, 0x3

    .line 1428
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1434
    if-ne v0, p2, :cond_1

    .line 1435
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1436
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1437
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1486
    :goto_0
    return-object v6

    .line 1430
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_0
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1431
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1440
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1445
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    if-eq v0, v8, :cond_3

    .line 1446
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1447
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1452
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "hash":I
    move v3, v4

    .line 1454
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1455
    if-ne v0, v8, :cond_4

    .line 1458
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x0

    add-int/lit8 v5, v7, 0x1

    .line 1459
    .local v5, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 1460
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1461
    .local v6, "strVal":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v3

    .line 1474
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :goto_2
    if-ne v0, p2, :cond_5

    .line 1475
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1476
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1477
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1478
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1465
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_4
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    .line 1467
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_7

    .line 1468
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1469
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1480
    .end local v3    # "offset":I
    .restart local v2    # "len":I
    .restart local v4    # "offset":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1481
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v3

    .line 1482
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 1485
    :cond_6
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1486
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_7
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 2441
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 2442
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2444
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2446
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 2447
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2449
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2451
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 2452
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2454
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2456
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 2457
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2459
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2461
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_5

    .line 2463
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2467
    return-void

    .line 2465
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v3, -0x1

    .line 1085
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1087
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1088
    const/4 v3, -0x2

    .line 1131
    :cond_0
    :goto_0
    return v3

    .line 1091
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v5, v5

    add-int v0, v4, v5

    .line 1093
    .local v0, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1094
    .local v2, "typeLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1095
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1099
    :cond_2
    add-int/2addr v0, v2

    .line 1100
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 1104
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1106
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v7, :cond_3

    .line 1107
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1108
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1109
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1110
    const/4 v3, 0x3

    goto :goto_0

    .line 1111
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v8, :cond_4

    .line 1112
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1113
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v7, :cond_5

    .line 1114
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1115
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1127
    :goto_2
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1130
    :cond_4
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1131
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1116
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    .line 1117
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1118
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1119
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v8, :cond_7

    .line 1120
    const/16 v3, 0xd

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1121
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1122
    :cond_7
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 1123
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 1006
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 998
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 109
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2a

    .line 550
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 551
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_2

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 554
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 559
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_5

    .line 560
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 562
    :cond_3
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 563
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_4

    .line 564
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 565
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_3

    .line 566
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 572
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 575
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 2693
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v2, :cond_2

    .line 2694
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2695
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 2697
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_2

    .line 2698
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 2707
    :cond_2
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
