.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "Jdk8DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    .line 34
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 35
    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 36
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 37
    const-string v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 38
    const-string v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 39
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 40
    const-string v0, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 41
    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 42
    const-string v0, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 44
    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 45
    const-string v0, "yyyy/MM/dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 46
    const-string v0, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 47
    const-string v0, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 48
    const-string v0, "MM/dd/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 49
    const-string v0, "dd/MM/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 50
    const-string v0, "dd.MM.yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    .line 51
    const-string v0, "dd-MM-yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "object"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 293
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 295
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 17
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 56
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_e

    .line 57
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "text":Ljava/lang/String;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "formatter":Ljava/time/format/DateTimeFormatter;
    if-eqz p4, :cond_0

    .line 62
    invoke-static/range {p4 .. p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    .line 65
    :cond_0
    const-class v13, Ljava/time/LocalDateTime;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 67
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    .line 68
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v11, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .line 69
    .local v6, "localDate":Ljava/time/LocalDate;
    sget-object v13, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v6, v13}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    .end local v6    # "localDate":Ljava/time/LocalDate;
    .local v7, "localDateTime":Ljava/time/LocalDateTime;
    :goto_0
    move-object v6, v7

    .line 127
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :goto_1
    return-object v6

    .line 71
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v7

    .restart local v7    # "localDateTime":Ljava/time/LocalDateTime;
    goto :goto_0

    .line 74
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_3
    const-class v13, Ljava/time/LocalDate;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_5

    .line 76
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x17

    if-ne v13, v14, :cond_4

    .line 77
    invoke-static {v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 78
    .restart local v7    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getYear()I

    move-result v13

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v14

    .line 79
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v15

    .line 78
    invoke-static {v13, v14, v15}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    .line 80
    .restart local v6    # "localDate":Ljava/time/LocalDate;
    goto :goto_1

    .line 81
    .end local v6    # "localDate":Ljava/time/LocalDate;
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v11, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v6

    .restart local v6    # "localDate":Ljava/time/LocalDate;
    goto :goto_1

    .line 85
    .end local v6    # "localDate":Ljava/time/LocalDate;
    :cond_5
    const-class v13, Ljava/time/LocalTime;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_7

    .line 87
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x17

    if-ne v13, v14, :cond_6

    .line 88
    invoke-static {v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 89
    .restart local v7    # "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getHour()I

    move-result v13

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v14

    .line 90
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v15

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getNano()I

    move-result v16

    .line 89
    invoke-static/range {v13 .. v16}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v6

    .line 91
    .local v6, "localDate":Ljava/time/LocalTime;
    goto :goto_1

    .line 92
    .end local v6    # "localDate":Ljava/time/LocalTime;
    .end local v7    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_6
    invoke-static {v11}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "localDate":Ljava/time/LocalTime;
    goto :goto_1

    .line 95
    .end local v6    # "localDate":Ljava/time/LocalTime;
    :cond_7
    const-class v13, Ljava/time/ZonedDateTime;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_8

    .line 96
    invoke-static {v11}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v12

    .local v12, "zonedDateTime":Ljava/time/ZonedDateTime;
    move-object v6, v12

    .line 98
    goto :goto_1

    .line 99
    .end local v12    # "zonedDateTime":Ljava/time/ZonedDateTime;
    :cond_8
    const-class v13, Ljava/time/OffsetDateTime;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_9

    .line 100
    invoke-static {v11}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v8

    .local v8, "offsetDateTime":Ljava/time/OffsetDateTime;
    move-object v6, v8

    .line 102
    goto :goto_1

    .line 103
    .end local v8    # "offsetDateTime":Ljava/time/OffsetDateTime;
    :cond_9
    const-class v13, Ljava/time/OffsetTime;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_a

    .line 104
    invoke-static {v11}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v9

    .local v9, "offsetTime":Ljava/time/OffsetTime;
    move-object v6, v9

    .line 106
    goto/16 :goto_1

    .line 107
    .end local v9    # "offsetTime":Ljava/time/OffsetTime;
    :cond_a
    const-class v13, Ljava/time/ZoneId;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_b

    .line 108
    invoke-static {v11}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v9

    .local v9, "offsetTime":Ljava/time/ZoneId;
    move-object v6, v9

    .line 110
    goto/16 :goto_1

    .line 111
    .end local v9    # "offsetTime":Ljava/time/ZoneId;
    :cond_b
    const-class v13, Ljava/time/Period;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_c

    .line 112
    invoke-static {v11}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v10

    .local v10, "period":Ljava/time/Period;
    move-object v6, v10

    .line 114
    goto/16 :goto_1

    .line 115
    .end local v10    # "period":Ljava/time/Period;
    :cond_c
    const-class v13, Ljava/time/Duration;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_d

    .line 116
    invoke-static {v11}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v2

    .local v2, "duration":Ljava/time/Duration;
    move-object v6, v2

    .line 118
    goto/16 :goto_1

    .line 119
    .end local v2    # "duration":Ljava/time/Duration;
    :cond_d
    const-class v13, Ljava/time/Instant;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_f

    .line 120
    invoke-static {v11}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v4

    .local v4, "instant":Ljava/time/Instant;
    move-object v6, v4

    .line 122
    goto/16 :goto_1

    .line 125
    .end local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v4    # "instant":Ljava/time/Instant;
    .end local v11    # "text":Ljava/lang/String;
    :cond_e
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v13}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v13

    .line 127
    .restart local v3    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v11    # "text":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x4

    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 131
    if-nez p2, :cond_1

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x13

    if-ne v14, v15, :cond_0

    .line 133
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 134
    .local v8, "c4":C
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 135
    .local v10, "c7":C
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 136
    .local v3, "c10":C
    const/16 v14, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 137
    .local v4, "c13":C
    const/16 v14, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 138
    .local v5, "c16":C
    const/16 v14, 0x3a

    if-ne v4, v14, :cond_0

    const/16 v14, 0x3a

    if-ne v5, v14, :cond_0

    .line 139
    const/16 v14, 0x2d

    if-ne v8, v14, :cond_3

    const/16 v14, 0x2d

    if-ne v10, v14, :cond_3

    .line 140
    const/16 v14, 0x54

    if-ne v3, v14, :cond_2

    .line 141
    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 181
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v8    # "c4":C
    .end local v10    # "c7":C
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x11

    if-lt v14, v15, :cond_1

    .line 182
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 183
    .restart local v8    # "c4":C
    const/16 v14, 0x5e74

    if-ne v8, v14, :cond_d

    .line 184
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x79d2

    if-ne v14, v15, :cond_c

    .line 185
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 195
    .end local v8    # "c4":C
    :cond_1
    :goto_1
    if-nez p2, :cond_e

    .line 196
    invoke-static/range {p1 .. p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v14

    .line 197
    :goto_2
    return-object v14

    .line 142
    .restart local v3    # "c10":C
    .restart local v4    # "c13":C
    .restart local v5    # "c16":C
    .restart local v8    # "c4":C
    .restart local v10    # "c7":C
    :cond_2
    const/16 v14, 0x20

    if-ne v3, v14, :cond_0

    .line 143
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 145
    :cond_3
    const/16 v14, 0x2d

    if-ne v8, v14, :cond_4

    const/16 v14, 0x2d

    if-ne v10, v14, :cond_4

    .line 146
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 147
    :cond_4
    const/16 v14, 0x2f

    if-ne v8, v14, :cond_5

    const/16 v14, 0x2f

    if-ne v10, v14, :cond_5

    .line 148
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 150
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 151
    .local v1, "c0":C
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 152
    .local v2, "c1":C
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 153
    .local v6, "c2":C
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 154
    .local v7, "c3":C
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 155
    .local v9, "c5":C
    const/16 v14, 0x2f

    if-ne v6, v14, :cond_a

    const/16 v14, 0x2f

    if-ne v9, v14, :cond_a

    .line 156
    add-int/lit8 v14, v1, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v2, -0x30

    add-int v12, v14, v15

    .line 157
    .local v12, "v0":I
    add-int/lit8 v14, v7, -0x30

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v8, -0x30

    add-int v13, v14, v15

    .line 158
    .local v13, "v1":I
    const/16 v14, 0xc

    if-le v12, v14, :cond_6

    .line 159
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 160
    :cond_6
    const/16 v14, 0xc

    if-le v13, v14, :cond_7

    .line 161
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 163
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "country":Ljava/lang/String;
    const-string v14, "US"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 166
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 167
    :cond_8
    const-string v14, "BR"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "AU"

    .line 168
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 169
    :cond_9
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 172
    .end local v11    # "country":Ljava/lang/String;
    .end local v12    # "v0":I
    .end local v13    # "v1":I
    :cond_a
    const/16 v14, 0x2e

    if-ne v6, v14, :cond_b

    const/16 v14, 0x2e

    if-ne v9, v14, :cond_b

    .line 173
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 174
    :cond_b
    const/16 v14, 0x2d

    if-ne v6, v14, :cond_0

    const/16 v14, 0x2d

    if-ne v9, v14, :cond_0

    .line 175
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 187
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c10":C
    .end local v4    # "c13":C
    .end local v5    # "c16":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v9    # "c5":C
    .end local v10    # "c7":C
    :cond_c
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    .line 189
    :cond_d
    const v14, 0xb144

    if-ne v8, v14, :cond_1

    .line 190
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    .line 197
    .end local v8    # "c4":C
    :cond_e
    invoke-static/range {p1 .. p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v14

    goto/16 :goto_2
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 201
    if-nez p3, :cond_3

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 203
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 206
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    .line 207
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 208
    .local v4, "c4":C
    const/4 v10, 0x7

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 209
    .local v6, "c7":C
    const/16 v10, 0x2f

    if-ne v4, v10, :cond_1

    const/16 v10, 0x2f

    if-ne v6, v10, :cond_1

    .line 210
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 213
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 214
    .local v0, "c0":C
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 215
    .local v1, "c1":C
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 216
    .local v2, "c2":C
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 217
    .local v3, "c3":C
    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 218
    .local v5, "c5":C
    const/16 v10, 0x2f

    if-ne v2, v10, :cond_8

    const/16 v10, 0x2f

    if-ne v5, v10, :cond_8

    .line 219
    add-int/lit8 v10, v0, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v1, -0x30

    add-int v8, v10, v11

    .line 220
    .local v8, "v0":I
    add-int/lit8 v10, v3, -0x30

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v4, -0x30

    add-int v9, v10, v11

    .line 221
    .local v9, "v1":I
    const/16 v10, 0xc

    if-le v8, v10, :cond_4

    .line 222
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 242
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v4    # "c4":C
    .end local v5    # "c5":C
    .end local v6    # "c7":C
    .end local v8    # "v0":I
    .end local v9    # "v1":I
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x9

    if-lt v10, v11, :cond_3

    .line 243
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 244
    .restart local v4    # "c4":C
    const/16 v10, 0x5e74

    if-ne v4, v10, :cond_a

    .line 245
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 252
    .end local v4    # "c4":C
    :cond_3
    :goto_1
    if-nez p3, :cond_b

    .line 253
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v10

    .line 254
    :goto_2
    return-object v10

    .line 223
    .restart local v0    # "c0":C
    .restart local v1    # "c1":C
    .restart local v2    # "c2":C
    .restart local v3    # "c3":C
    .restart local v4    # "c4":C
    .restart local v5    # "c5":C
    .restart local v6    # "c7":C
    .restart local v8    # "v0":I
    .restart local v9    # "v1":I
    :cond_4
    const/16 v10, 0xc

    if-le v9, v10, :cond_5

    .line 224
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 226
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "country":Ljava/lang/String;
    const-string v10, "US"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 229
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 230
    :cond_6
    const-string v10, "BR"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "AU"

    .line 231
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 232
    :cond_7
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 235
    .end local v7    # "country":Ljava/lang/String;
    .end local v8    # "v0":I
    .end local v9    # "v1":I
    :cond_8
    const/16 v10, 0x2e

    if-ne v2, v10, :cond_9

    const/16 v10, 0x2e

    if-ne v5, v10, :cond_9

    .line 236
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 237
    :cond_9
    const/16 v10, 0x2d

    if-ne v2, v10, :cond_2

    const/16 v10, 0x2d

    if-ne v5, v10, :cond_2

    .line 238
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 246
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "c3":C
    .end local v5    # "c5":C
    .end local v6    # "c7":C
    :cond_a
    const v10, 0xb144

    if-ne v4, v10, :cond_3

    .line 247
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 254
    .end local v4    # "c4":C
    :cond_b
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v10

    goto :goto_2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 287
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "format":Ljava/lang/String;
    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-direct {p0, v1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 264
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 265
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 282
    :goto_0
    return-void

    .line 267
    :cond_0
    const-class v3, Ljava/time/LocalDateTime;

    if-ne p4, v3, :cond_3

    move-object v0, p2

    .line 268
    check-cast v0, Ljava/time/LocalDateTime;

    .line 269
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v3

    if-nez v3, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "format":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 272
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 274
    :cond_1
    invoke-direct {p0, v2, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0    # "dateTime":Ljava/time/LocalDateTime;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
