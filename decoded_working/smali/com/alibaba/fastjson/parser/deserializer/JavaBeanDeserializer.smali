.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .locals 5
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 47
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 48
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 49
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v4, v2

    .line 50
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 52
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v4, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_0
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 56
    const/4 v2, 0x0

    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v4

    :goto_1
    if-ge v2, v3, :cond_1

    .line 57
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v4, v2

    .line 58
    .restart local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 59
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v4, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p2, p3, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    .line 41
    return-void
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "deser"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x5b

    const/16 v8, 0xf

    const/16 v7, 0x10

    const/16 v6, 0xe

    .line 832
    iget-object v3, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 833
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 834
    .local v4, "token":I
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 835
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 836
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 887
    :goto_0
    return-void

    .line 840
    :cond_0
    if-eq v4, v6, :cond_1

    .line 841
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 843
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    .line 844
    .local v0, "ch":C
    if-ne v0, v9, :cond_2

    .line 845
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 846
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    .line 851
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 852
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_0

    .line 848
    :cond_2
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_1

    .line 856
    :cond_3
    const/4 v1, 0x0

    .line 858
    .local v1, "index":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 859
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v1, v1, 0x1

    .line 861
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 862
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    .line 863
    if-ne v0, v9, :cond_4

    .line 864
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 865
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 867
    :cond_4
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_2

    .line 874
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 875
    if-eq v4, v8, :cond_6

    .line 876
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 879
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    .line 880
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_7

    .line 881
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 882
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_0

    .line 884
    :cond_7
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_0
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 2
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "token"    # I

    .prologue
    .line 257
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 258
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    return-void
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 29
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 91
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isInterface()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v3, p2

    .line 93
    check-cast v3, Ljava/lang/Class;

    .line 94
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 95
    .local v14, "loader":Ljava/lang/ClassLoader;
    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v15}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 96
    .local v15, "obj":Lcom/alibaba/fastjson/JSONObject;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    move-object/from16 v0, v24

    invoke-static {v14, v0, v15}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v20

    .line 181
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "loader":Ljava/lang/ClassLoader;
    .end local v15    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v20

    .line 101
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 102
    const/16 v20, 0x0

    goto :goto_0

    .line 107
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 108
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 109
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 168
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .local v16, "object":Ljava/lang/Object;
    :goto_1
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 169
    invoke-interface/range {v24 .. v25}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    aget-object v9, v25, v24

    .line 171
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v27, v0

    const-class v28, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 173
    :try_start_1
    const-string v27, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 170
    :cond_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 111
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "object":Ljava/lang/Object;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    .line 112
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 113
    .local v19, "parentName":Ljava/lang/String;
    const-string v23, ""

    .line 115
    .local v23, "typeName":Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 116
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 119
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x24

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 120
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    .line 121
    .local v22, "typeChars":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v5, "clsNameBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "$"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v18, "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v10, v24, 0x1

    .local v10, "i":I
    :goto_3
    const/16 v24, 0x24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    move/from16 v0, v24

    if-gt v10, v0, :cond_7

    .line 126
    aget-char v21, v22, v10

    .line 127
    .local v21, "thisChar":C
    const/16 v24, 0x24

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "clsName":Ljava/lang/String;
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .line 132
    .local v17, "outter":Ljava/lang/Object;
    :try_start_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 134
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v17, :cond_6

    .line 135
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 136
    .local v12, "innerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v3, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 137
    .local v13, "innerClsConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v24

    if-nez v24, :cond_5

    .line 138
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 140
    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v17, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 141
    .local v11, "inner":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-interface {v0, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 142
    move-object/from16 v19, v4

    .line 156
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v11    # "inner":Ljava/lang/Object;
    .end local v12    # "innerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "innerClsConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "outter":Ljava/lang/Object;
    :cond_6
    :try_start_4
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 144
    .restart local v4    # "clsName":Ljava/lang/String;
    .restart local v17    # "outter":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 145
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unable to find class "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "clsNameBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    .end local v10    # "i":I
    .end local v17    # "outter":Ljava/lang/Object;
    .end local v18    # "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "parentName":Ljava/lang/String;
    .end local v21    # "thisChar":C
    .end local v22    # "typeChars":[C
    .end local v23    # "typeName":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 165
    .local v8, "e":Ljava/lang/Exception;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "create instance error, class "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 146
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "clsName":Ljava/lang/String;
    .restart local v5    # "clsNameBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "i":I
    .restart local v17    # "outter":Ljava/lang/Object;
    .restart local v18    # "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "parentName":Ljava/lang/String;
    .restart local v21    # "thisChar":C
    .restart local v22    # "typeChars":[C
    .restart local v23    # "typeName":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 147
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    :try_start_5
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 148
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v8

    .line 149
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "can not instantiate "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 150
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v8

    .line 151
    .local v8, "e":Ljava/lang/IllegalAccessException;
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 152
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v8

    .line 153
    .local v8, "e":Ljava/lang/InstantiationException;
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 158
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/InstantiationException;
    .end local v17    # "outter":Ljava/lang/Object;
    .end local v21    # "thisChar":C
    :cond_7
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 159
    .restart local v16    # "object":Ljava/lang/Object;
    goto/16 :goto_1

    .line 160
    .end local v5    # "clsNameBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "object":Ljava/lang/Object;
    .end local v18    # "outterCached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "typeChars":[C
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget-object v0, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v16

    .restart local v16    # "object":Ljava/lang/Object;
    goto/16 :goto_1

    .line 174
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v19    # "parentName":Ljava/lang/String;
    .end local v23    # "typeName":Ljava/lang/String;
    .restart local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :catch_6
    move-exception v8

    .line 175
    .local v8, "e":Ljava/lang/Exception;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "create instance error, class "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_9
    move-object/from16 v20, v16

    .line 181
    goto/16 :goto_0
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 20
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 736
    .local v12, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 737
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .line 739
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 740
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 741
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 743
    .local v16, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    .line 744
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v6, :cond_0

    .line 748
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 749
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_1

    .line 750
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v13, v18, v19

    .line 751
    .local v13, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    .line 752
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v11, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 754
    .end local v13    # "paramType":Ljava/lang/reflect/Type;
    :cond_1
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 755
    .local v5, "field":Ljava/lang/reflect/Field;
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 756
    .restart local v13    # "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    .line 757
    move-object/from16 v0, v16

    invoke-virtual {v5, v12, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 764
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "paramType":Ljava/lang/reflect/Type;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 765
    .local v8, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v15, v8

    .line 766
    .local v15, "size":I
    new-array v14, v15, [Ljava/lang/Object;

    .line 767
    .local v14, "params":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v15, :cond_3

    .line 768
    aget-object v7, v8, v9

    .line 769
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v14, v9

    .line 767
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 772
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 787
    .end local v8    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "i":I
    .end local v12    # "object":Ljava/lang/Object;
    .end local v14    # "params":[Ljava/lang/Object;
    .end local v15    # "size":I
    :cond_4
    :goto_2
    return-object v12

    .line 775
    .restart local v8    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "i":I
    .restart local v12    # "object":Ljava/lang/Object;
    .restart local v14    # "params":[Ljava/lang/Object;
    .restart local v15    # "size":I
    :catch_0
    move-exception v3

    .line 776
    .local v3, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "create instance error, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v19, v0

    .line 777
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 779
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 781
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto :goto_2

    .line 782
    :catch_1
    move-exception v3

    .line 783
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "create factory method error, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
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
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 44
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 272
    const-class v4, Lcom/alibaba/fastjson/JSON;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 273
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v12

    .line 640
    :goto_0
    return-object v12

    .line 276
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v29, v0

    check-cast v29, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 278
    .local v29, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v40

    .line 279
    .local v40, "token":I
    const/16 v4, 0x8

    move/from16 v0, v40

    if-ne v0, v4, :cond_2

    .line 280
    const/16 v4, 0x10

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 281
    const/4 v12, 0x0

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v15

    .line 285
    .local v15, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz p4, :cond_3

    if-eqz v15, :cond_3

    .line 286
    iget-object v15, v15, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 288
    :cond_3
    const/4 v13, 0x0

    .line 291
    .local v13, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v9, 0x0

    .line 293
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    move/from16 v0, v40

    if-ne v0, v4, :cond_6

    .line 294
    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 295
    if-nez p4, :cond_4

    .line 296
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 637
    :cond_4
    if-eqz v13, :cond_5

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v12, p4

    goto :goto_0

    .line 301
    :cond_6
    const/16 v4, 0xe

    move/from16 v0, v40

    if-ne v0, v4, :cond_a

    .line 302
    :try_start_1
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v30, v0

    .line 303
    .local v30, "mask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int v4, v4, v30

    if-nez v4, :cond_7

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 304
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_7

    and-int v4, p5, v30

    if-eqz v4, :cond_9

    :cond_7
    const/16 v28, 0x1

    .line 307
    .local v28, "isSupportArrayToBean":Z
    :goto_1
    if-eqz v28, :cond_a

    .line 308
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 637
    if-eqz v13, :cond_8

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_0

    .line 304
    .end local v28    # "isSupportArrayToBean":Z
    :cond_9
    const/16 v28, 0x0

    goto :goto_1

    .line 312
    .end local v30    # "mask":I
    :cond_a
    const/16 v4, 0xc

    move/from16 v0, v40

    if-eq v0, v4, :cond_11

    const/16 v4, 0x10

    move/from16 v0, v40

    if-eq v0, v4, :cond_11

    .line 313
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    .line 314
    const/4 v12, 0x0

    .line 637
    if-eqz v13, :cond_b

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 317
    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v40

    if-ne v0, v4, :cond_e

    .line 318
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v39

    .line 319
    .local v39, "strVal":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 320
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    const/4 v12, 0x0

    .line 637
    if-eqz v13, :cond_d

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 325
    .end local v39    # "strVal":Ljava/lang/String;
    :cond_e
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 327
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", pos "

    .line 328
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 329
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 331
    .local v10, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 332
    const-string v4, ", fieldName "

    .line 333
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 334
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 337
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 637
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v13, :cond_10

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v4

    .line 340
    :cond_11
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 341
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 344
    :cond_12
    const/16 v22, 0x0

    .local v22, "fieldIndex":I
    move-object/from16 v26, v9

    .line 345
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v26, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_3
    const/4 v6, 0x0

    .line 346
    .local v6, "key":Ljava/lang/String;
    const/16 v21, 0x0

    .line 347
    .local v21, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v23, 0x0

    .line 348
    .local v23, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v20, 0x0

    .line 349
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_13

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v21, v4, v22

    .line 351
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v23, v0

    .line 352
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 355
    :cond_13
    const/16 v32, 0x0

    .line 356
    .local v32, "matchField":Z
    const/16 v43, 0x0

    .line 358
    .local v43, "valueParsed":Z
    const/16 v25, 0x0

    .line 359
    .local v25, "fieldValue":Ljava/lang/Object;
    if-eqz v21, :cond_15

    .line 360
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    move-object/from16 v33, v0

    .line 361
    .local v33, "name_chars":[C
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_14

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1a

    .line 362
    :cond_14
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 364
    .local v25, "fieldValue":Ljava/lang/Integer;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_18

    .line 365
    const/16 v32, 0x1

    .line 366
    const/16 v43, 0x1

    .line 435
    .end local v25    # "fieldValue":Ljava/lang/Integer;
    .end local v33    # "name_chars":[C
    :cond_15
    :goto_4
    if-nez v32, :cond_3d

    .line 436
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 438
    if-nez v6, :cond_2c

    .line 439
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v40

    .line 440
    const/16 v4, 0xd

    move/from16 v0, v40

    if-ne v0, v4, :cond_2b

    .line 441
    const/16 v4, 0x10

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v9, v26

    .line 589
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_5
    if-nez p4, :cond_48

    .line 590
    if-nez v9, :cond_46

    .line 591
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 592
    if-nez v13, :cond_16

    .line 593
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v13

    .line 637
    :cond_16
    if-eqz v13, :cond_17

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v12, p4

    goto/16 :goto_0

    .line 367
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v25    # "fieldValue":Ljava/lang/Integer;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "name_chars":[C
    :cond_18
    :try_start_8
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 344
    .end local v25    # "fieldValue":Ljava/lang/Integer;
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v33    # "name_chars":[C
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_19
    :goto_6
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v26, v9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 370
    .local v25, "fieldValue":Ljava/lang/Object;
    .restart local v33    # "name_chars":[C
    :cond_1a
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_1b

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1d

    .line 371
    :cond_1b
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 373
    .local v25, "fieldValue":Ljava/lang/Long;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_1c

    .line 374
    const/16 v32, 0x1

    .line 375
    const/16 v43, 0x1

    goto :goto_4

    .line 376
    :cond_1c
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 377
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 379
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v25, "fieldValue":Ljava/lang/Object;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1d
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1f

    .line 380
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v25

    .line 382
    .local v25, "fieldValue":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_1e

    .line 383
    const/16 v32, 0x1

    .line 384
    const/16 v43, 0x1

    goto/16 :goto_4

    .line 385
    :cond_1e
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 386
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 388
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v25, "fieldValue":Ljava/lang/Object;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_20

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_22

    .line 389
    :cond_20
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 391
    .local v25, "fieldValue":Ljava/lang/Boolean;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_21

    .line 392
    const/16 v32, 0x1

    .line 393
    const/16 v43, 0x1

    goto/16 :goto_4

    .line 394
    :cond_21
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 395
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 397
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v25, "fieldValue":Ljava/lang/Object;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_22
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_23

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_25

    .line 398
    :cond_23
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    .line 400
    .local v25, "fieldValue":Ljava/lang/Float;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_24

    .line 401
    const/16 v32, 0x1

    .line 402
    const/16 v43, 0x1

    goto/16 :goto_4

    .line 403
    :cond_24
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 404
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 406
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v25, "fieldValue":Ljava/lang/Object;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_26

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_28

    .line 407
    :cond_26
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    .line 409
    .local v25, "fieldValue":Ljava/lang/Double;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_27

    .line 410
    const/16 v32, 0x1

    .line 411
    const/16 v43, 0x1

    goto/16 :goto_4

    .line 412
    :cond_27
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 413
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 415
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v25, "fieldValue":Ljava/lang/Object;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_28
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v4, :cond_2a

    .line 418
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v18

    .line 420
    .local v18, "enumName":Ljava/lang/String;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_29

    .line 421
    const/16 v32, 0x1

    .line 422
    const/16 v43, 0x1

    .line 424
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v25

    .local v25, "fieldValue":Ljava/lang/Enum;
    goto/16 :goto_4

    .line 425
    .local v25, "fieldValue":Ljava/lang/Object;
    :cond_29
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    move-object/from16 v9, v26

    .line 426
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 428
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "enumName":Ljava/lang/String;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2a
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 429
    const/16 v32, 0x1

    goto/16 :goto_4

    .line 444
    .end local v25    # "fieldValue":Ljava/lang/Object;
    .end local v33    # "name_chars":[C
    :cond_2b
    const/16 v4, 0x10

    move/from16 v0, v40

    if-ne v0, v4, :cond_2c

    .line 445
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v9, v26

    .line 446
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 451
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2c
    const-string v4, "$ref"

    if-ne v4, v6, :cond_36

    .line 452
    const/4 v4, 0x4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 453
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v40

    .line 454
    const/4 v4, 0x4

    move/from16 v0, v40

    if-ne v0, v4, :cond_33

    .line 455
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v36

    .line 456
    .local v36, "ref":Ljava/lang/String;
    const-string v4, "@"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 457
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    .line 486
    :goto_7
    const/16 v4, 0xd

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 487
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_34

    .line 488
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 637
    .end local v32    # "matchField":Z
    .end local v36    # "ref":Ljava/lang/String;
    .end local v43    # "valueParsed":Z
    :catchall_1
    move-exception v4

    move-object/from16 v9, v26

    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 458
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v32    # "matchField":Z
    .restart local v36    # "ref":Ljava/lang/String;
    .restart local v43    # "valueParsed":Z
    :cond_2d
    const-string v4, ".."

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 459
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v35, v0

    .line 460
    .local v35, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_2e

    .line 461
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 463
    :cond_2e
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 464
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_7

    .line 466
    .end local v35    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2f
    const-string v4, "$"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 467
    move-object/from16 v37, v15

    .line 468
    .local v37, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_8
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_30

    .line 469
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v37, v0

    goto :goto_8

    .line 472
    :cond_30
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_31

    .line 473
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 475
    :cond_31
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 476
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    .line 479
    .end local v37    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_32
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v36

    invoke-direct {v4, v15, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 480
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    .line 483
    .end local v36    # "ref":Ljava/lang/String;
    :cond_33
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v40 .. v40}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 490
    .restart local v36    # "ref":Ljava/lang/String;
    :cond_34
    const/16 v4, 0x10

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 492
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 637
    if-eqz v13, :cond_35

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_35
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v12, p4

    goto/16 :goto_0

    .line 497
    .end local v36    # "ref":Ljava/lang/String;
    :cond_36
    :try_start_9
    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v4, v6, :cond_3d

    .line 498
    const/4 v4, 0x4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 499
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3c

    .line 500
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v41

    .line 501
    .local v41, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 504
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4f

    .line 505
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    move-object/from16 v9, v26

    .line 506
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_5

    .line 511
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v14

    .line 512
    .local v14, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v14, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v16

    .line 513
    .local v16, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v42, 0x0

    .line 514
    .local v42, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v16, :cond_39

    .line 515
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v42

    .line 517
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    .line 518
    .local v19, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v19, :cond_38

    if-eqz v42, :cond_3b

    .line 519
    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 520
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v16

    .line 526
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_39
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v12

    .line 637
    if-eqz v13, :cond_3a

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_3a
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 522
    .restart local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3b
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 528
    .end local v14    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v16    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v41    # "typeName":Ljava/lang/String;
    .end local v42    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3c
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 533
    :cond_3d
    if-nez p4, :cond_4e

    if-nez v26, :cond_4e

    .line 534
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 535
    if-nez p4, :cond_4d

    .line 536
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 538
    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_9
    :try_start_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v13

    .line 541
    :goto_a
    if-eqz v32, :cond_43

    .line 542
    if-nez v43, :cond_3f

    .line 543
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 575
    :cond_3e
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_19

    .line 579
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_44

    .line 580
    const/16 v4, 0x10

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto/16 :goto_5

    .line 545
    :cond_3f
    if-nez p4, :cond_41

    .line 546
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_40
    :goto_b
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3e

    goto/16 :goto_5

    .line 547
    :cond_41
    if-nez v25, :cond_42

    .line 548
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_40

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_40

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_40

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_40

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_40

    .line 554
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 557
    :cond_42
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_43
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    .line 564
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v31

    .line 565
    .local v31, "match":Z
    if-nez v31, :cond_3e

    .line 566
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_19

    .line 567
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_5

    .line 584
    .end local v31    # "match":Z
    :cond_44
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_45

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 585
    :cond_45
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v7

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    .line 599
    .local v24, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v38, v0

    .line 600
    .local v38, "size":I
    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    .line 601
    .local v34, "params":[Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_c
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_47

    .line 602
    aget-object v23, v24, v27

    .line 603
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v34, v27

    .line 601
    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    .line 606
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_4a

    .line 608
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object p4

    .line 622
    .end local v24    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v27    # "i":I
    .end local v34    # "params":[Ljava/lang/Object;
    .end local v38    # "size":I
    :cond_48
    :goto_d
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 623
    .local v11, "buildMethod":Ljava/lang/reflect/Method;
    if-nez v11, :cond_4b

    .line 637
    if-eqz v13, :cond_49

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_49
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v12, p4

    goto/16 :goto_0

    .line 609
    .end local v11    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v24    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v27    # "i":I
    .restart local v34    # "params":[Ljava/lang/Object;
    .restart local v38    # "size":I
    :catch_0
    move-exception v17

    .line 610
    .local v17, "e":Ljava/lang/Exception;
    :try_start_e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 611
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 613
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v4, :cond_48

    .line 615
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object p4

    goto :goto_d

    .line 616
    :catch_1
    move-exception v17

    .line 617
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_10
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 630
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v27    # "i":I
    .end local v34    # "params":[Ljava/lang/Object;
    .end local v38    # "size":I
    .restart local v11    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_4b
    const/4 v4, 0x0

    :try_start_11
    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v12

    .line 637
    .local v12, "builtObj":Ljava/lang/Object;
    if-eqz v13, :cond_4c

    .line 638
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 640
    :cond_4c
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 631
    .end local v12    # "builtObj":Ljava/lang/Object;
    :catch_2
    move-exception v17

    .line 632
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_12
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "build object error"

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4d
    move-object/from16 v9, v26

    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4e
    move-object/from16 v9, v26

    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_a

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4f
    move-object/from16 v9, v26

    .end local v26    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
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

    .prologue
    .line 194
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 195
    .local v6, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    const/16 v15, 0xe

    if-eq v14, v15, :cond_0

    .line 196
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "error"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 201
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v11, v14

    .local v11, "size":I
    :goto_0
    if-ge v5, v11, :cond_e

    .line 202
    add-int/lit8 v14, v11, -0x1

    if-ne v5, v14, :cond_1

    const/16 v10, 0x5d

    .line 203
    .local v10, "seperator":C
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v14, v5

    .line 204
    .local v4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v14, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 205
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v14, :cond_2

    .line 206
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v12

    .line 207
    .local v12, "value":I
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    .line 201
    .end local v12    # "value":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v10    # "seperator":C
    :cond_1
    const/16 v10, 0x2c

    goto :goto_1

    .line 208
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v10    # "seperator":C
    :cond_2
    const-class v14, Ljava/lang/String;

    if-ne v3, v14, :cond_3

    .line 209
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "value":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .end local v12    # "value":Ljava/lang/String;
    :cond_3
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v14, :cond_4

    .line 212
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v12

    .line 213
    .local v12, "value":J
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_2

    .line 214
    .end local v12    # "value":J
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 215
    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    .line 218
    .local v1, "ch":C
    const/16 v14, 0x22

    if-eq v1, v14, :cond_5

    const/16 v14, 0x6e

    if-ne v1, v14, :cond_6

    .line 219
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v14

    invoke-interface {v6, v3, v14, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v12

    .line 229
    .local v12, "value":Ljava/lang/Enum;
    :goto_3
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 220
    .end local v12    # "value":Ljava/lang/Enum;
    :cond_6
    const/16 v14, 0x30

    if-lt v1, v14, :cond_7

    const/16 v14, 0x39

    if-gt v1, v14, :cond_7

    .line 221
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v9

    .local v9, "ordinal":I
    move-object v14, v4

    .line 223
    check-cast v14, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 224
    .local v2, "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v12

    .line 225
    .restart local v12    # "value":Ljava/lang/Enum;
    goto :goto_3

    .line 226
    .end local v2    # "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    .end local v9    # "ordinal":I
    .end local v12    # "value":Ljava/lang/Enum;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v12

    .restart local v12    # "value":Ljava/lang/Enum;
    goto :goto_3

    .line 230
    .end local v1    # "ch":C
    .end local v12    # "value":Ljava/lang/Enum;
    :cond_8
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v14, :cond_9

    .line 231
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v12

    .line 232
    .local v12, "value":Z
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_2

    .line 233
    .end local v12    # "value":Z
    :cond_9
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v14, :cond_a

    .line 234
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v12

    .line 235
    .local v12, "value":F
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 236
    .end local v12    # "value":F
    :cond_a
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v14, :cond_b

    .line 237
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v12

    .line 238
    .local v12, "value":D
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 239
    .end local v12    # "value":D
    :cond_b
    const-class v14, Ljava/util/Date;

    if-ne v3, v14, :cond_c

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v14

    const/16 v15, 0x31

    if-ne v14, v15, :cond_c

    .line 240
    invoke-interface {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v7

    .line 241
    .local v7, "longValue":J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 243
    .end local v7    # "longValue":J
    :cond_c
    const/16 v14, 0xe

    invoke-interface {v6, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 244
    iget-object v14, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .line 245
    .local v12, "value":Ljava/lang/Object;
    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v12}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    const/16 v14, 0x5d

    if-ne v10, v14, :cond_d

    const/16 v14, 0xf

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    goto/16 :goto_2

    :cond_d
    const/16 v14, 0x10

    goto :goto_4

    .line 251
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v10    # "seperator":C
    .end local v12    # "value":Ljava/lang/Object;
    :cond_e
    const/16 v14, 0x10

    invoke-interface {v6, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 253
    return-object p4
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 727
    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v5

    .line 68
    :cond_1
    const/4 v3, 0x0

    .line 69
    .local v3, "low":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    .line 71
    .local v2, "high":I
    :goto_1
    if-gt v3, v2, :cond_0

    .line 72
    add-int v6, v3, v2

    ushr-int/lit8 v4, v6, 0x1

    .line 74
    .local v4, "mid":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 76
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "cmp":I
    if-gez v0, :cond_2

    .line 79
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    .line 80
    :cond_2
    if-lez v0, :cond_3

    .line 81
    add-int/lit8 v2, v4, -0x1

    goto :goto_1

    .line 83
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, v4

    goto :goto_0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .prologue
    .line 791
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 801
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 822
    :cond_0
    :goto_0
    return-object v2

    .line 805
    :cond_1
    iget-object v6, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 806
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 807
    .local v1, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v9, :cond_2

    move-object v2, v1

    .line 808
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 810
    .local v2, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 811
    .local v3, "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    iget-object v9, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 815
    invoke-virtual {p0, p1, v3, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v4

    .line 816
    .local v4, "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v4, :cond_2

    move-object v2, v4

    .line 817
    goto :goto_0

    .line 805
    .end local v2    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v3    # "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v4    # "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    move-object v2, v5

    .line 822
    goto :goto_0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 646
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 648
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 650
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v0, :cond_1

    .line 651
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setter not found, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_0
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    const/4 v2, 0x0

    .line 664
    :goto_0
    return v2

    .line 660
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 662
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 664
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I

    .prologue
    .line 795
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .locals 3
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 668
    if-nez p1, :cond_1

    .line 669
    const/4 v3, 0x0

    .line 723
    :cond_0
    :goto_0
    return-object v3

    .line 672
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 674
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_2

    .line 675
    const-string v10, "is"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 677
    .local v9, "startsWithIs":Z
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v2, v11, v10

    .line 678
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 679
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v1, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 680
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 682
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 683
    move-object v3, v2

    .line 696
    .end local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v9    # "startsWithIs":Z
    :cond_2
    :goto_2
    if-nez v3, :cond_0

    .line 697
    const/4 v8, 0x0

    .line 698
    .local v8, "snakeOrkebab":Z
    const/4 v7, 0x0

    .line 699
    .local v7, "key2":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 700
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 701
    .local v0, "ch":C
    const/16 v10, 0x5f

    if-ne v0, v10, :cond_7

    .line 702
    const/4 v8, 0x1

    .line 703
    const-string v10, "_"

    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 711
    .end local v0    # "ch":C
    :cond_3
    :goto_4
    if-eqz v8, :cond_0

    .line 712
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 713
    if-nez v3, :cond_0

    .line 714
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v12, :cond_0

    aget-object v2, v11, v10

    .line 715
    .restart local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v13, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v13, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 716
    move-object v3, v2

    .line 717
    goto :goto_0

    .line 687
    .end local v6    # "i":I
    .end local v7    # "key2":Ljava/lang/String;
    .end local v8    # "snakeOrkebab":Z
    .restart local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v5    # "fieldName":Ljava/lang/String;
    .restart local v9    # "startsWithIs":Z
    :cond_4
    if-eqz v9, :cond_6

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v13, :cond_5

    const-class v13, Ljava/lang/Boolean;

    if-ne v1, v13, :cond_6

    :cond_5
    const/4 v13, 0x2

    .line 689
    invoke-virtual {p1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 690
    move-object v3, v2

    .line 691
    goto :goto_2

    .line 677
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 705
    .end local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v9    # "startsWithIs":Z
    .restart local v0    # "ch":C
    .restart local v6    # "i":I
    .restart local v7    # "key2":Ljava/lang/String;
    .restart local v8    # "snakeOrkebab":Z
    :cond_7
    const/16 v10, 0x2d

    if-ne v0, v10, :cond_8

    .line 706
    const/4 v8, 0x1

    .line 707
    const-string v10, "-"

    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 708
    goto :goto_4

    .line 699
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 714
    .end local v0    # "ch":C
    .restart local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5
.end method
