.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ArrayListTypeFieldDeserializer.java"


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 27
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 28
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xe

    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 14
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .prologue
    .line 64
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 65
    .local v3, "itemType":Ljava/lang/reflect/Type;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 67
    .local v4, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v12, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_2

    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_2

    move-object v10, v3

    .line 69
    check-cast v10, Ljava/lang/reflect/TypeVariable;

    .local v10, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v8, p2

    .line 70
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 72
    .local v8, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v6, 0x0

    .line 73
    .local v6, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_0

    .line 74
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .end local v6    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v6, Ljava/lang/Class;

    .line 77
    .restart local v6    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v7, -0x1

    .line 78
    .local v7, "paramIndex":I
    if-eqz v6, :cond_1

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    array-length v9, v12

    .local v9, "size":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 80
    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    aget-object v2, v12, v1

    .line 81
    .local v2, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 82
    move v7, v1

    .line 88
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v9    # "size":I
    :cond_1
    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    .line 89
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v12

    aget-object v3, v12, v7

    .line 90
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 96
    .end local v6    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "paramIndex":I
    .end local v8    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    iget-object v5, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 98
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_8

    .line 99
    if-nez v4, :cond_3

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .end local v4    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 101
    .restart local v4    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v12

    iput v12, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    .line 104
    :cond_3
    iget v12, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 106
    const/4 v1, 0x0

    .line 107
    .restart local v1    # "i":I
    :goto_1
    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 108
    :goto_2
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_5

    .line 109
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 79
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v2    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v6    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "paramIndex":I
    .restart local v8    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v9    # "size":I
    .restart local v10    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v6    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "paramIndex":I
    .end local v8    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v9    # "size":I
    .end local v10    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_5
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    const/16 v13, 0xf

    if-ne v12, v13, :cond_6

    .line 129
    const/16 v12, 0x10

    invoke-interface {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 138
    .end local v1    # "i":I
    :goto_3
    return-void

    .line 118
    .restart local v1    # "i":I
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, p1, v3, v12}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 119
    .local v11, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 123
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_7

    .line 124
    iget v12, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 106
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v1    # "i":I
    .end local v11    # "val":Ljava/lang/Object;
    :cond_8
    if-nez v4, :cond_9

    .line 132
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .end local v4    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 134
    .restart local v4    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_9
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, p1, v3, v12}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 135
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_3
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 51
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 52
    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 55
    if-nez p2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
