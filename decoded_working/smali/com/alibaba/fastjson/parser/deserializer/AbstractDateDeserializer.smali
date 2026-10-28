.class public abstract Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "AbstractDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 18
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "features"    # I
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
    .line 25
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 28
    .local v7, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 29
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 30
    .local v14, "val":Ljava/lang/Long;
    const/16 v15, 0x10

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 120
    .end local v14    # "val":Ljava/lang/Long;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    return-object v15

    .line 31
    :cond_1
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 32
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, "strVal":Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 36
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .local v8, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 46
    .end local v8    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    if-nez v14, :cond_0

    .line 47
    move-object v14, v9

    .line 48
    .local v14, "val":Ljava/lang/String;
    const/16 v15, 0x10

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 50
    sget-object v15, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 51
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 52
    .local v5, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 53
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 55
    .end local v14    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .line 38
    .end local v5    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :catch_0
    move-exception v4

    .line 40
    .local v4, "ex":Ljava/text/ParseException;
    const/4 v14, 0x0

    .line 41
    .local v14, "val":Ljava/lang/Object;
    goto :goto_1

    .line 43
    .end local v4    # "ex":Ljava/text/ParseException;
    .end local v14    # "val":Ljava/lang/Object;
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 58
    .end local v9    # "strVal":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/Object;
    :cond_4
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 59
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 60
    const/4 v14, 0x0

    .restart local v14    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 61
    .end local v14    # "val":Ljava/lang/Object;
    :cond_5
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0xc

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 62
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 65
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 66
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "key":Ljava/lang/String;
    sget-object v15, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 69
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 70
    const/16 v15, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 72
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, "typeName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 74
    .local v12, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v12, :cond_6

    .line 75
    move-object/from16 p2, v12

    .line 78
    :cond_6
    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 79
    const/16 v15, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 82
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "typeName":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x2

    invoke-interface {v7, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 88
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 89
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v10

    .line 90
    .local v10, "timeMillis":J
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 95
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 97
    .local v14, "val":Ljava/lang/Long;
    const/16 v15, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 84
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "timeMillis":J
    .end local v14    # "val":Ljava/lang/Long;
    :cond_8
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string v16, "syntax error"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 92
    .restart local v6    # "key":Ljava/lang/String;
    :cond_9
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "syntax error : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 98
    .end local v6    # "key":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 99
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 100
    const/16 v15, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 102
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 103
    const-string v15, "val"

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 104
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string v16, "syntax error"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 106
    :cond_b
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 111
    const/16 v15, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v14

    .line 115
    .local v14, "val":Ljava/lang/Object;
    const/16 v15, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 108
    .end local v14    # "val":Ljava/lang/Object;
    :cond_c
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string v16, "syntax error"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 117
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "val":Ljava/lang/Object;
    goto/16 :goto_0
.end method
